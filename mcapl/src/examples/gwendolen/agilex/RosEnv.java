package gwendolen.agilex;

import ail.mas.DefaultEnvironment;
import ail.syntax.*;

import com.fasterxml.jackson.databind.JsonNode;
import ros.Publisher;
import ros.RosBridge;
import ros.RosListenDelegate;
import ros.SubscriptionRequestMsg;
import ros.msgs.std_msgs.PrimitiveMsg;
import ros.msgs.geometry_msgs.Vector3;


/**
 * ROS Environment for agilex_agent
 * Connects Gwendolen agent with ROS topics and services.
 */


public class RosEnv extends DefaultEnvironment {

    private static final String ROS_URL = "ws://localhost:9090";
    private static final String LASER_TOPIC = "/scan";
    private static final String LASER_TYPE = "sensor_msgs/LaserScan";
    private static final String CONTROL_TOPIC = "/gwendolen_control";
    private static final String CONTROL_TYPE = "std_msgs/Bool";
    private static final String GOAL_TOPIC = "/gwendolen_goal";   // Uses the Python bridge
    private static final String GOAL_TYPE = "geometry_msgs/Vector3";
    private static final String GOAL_REACHED_TOPIC = "/goal_reached";
    private static final String AGENT_GOAL_REACHED_TOPIC = "/agent_goal_reached";
    private static final String GOAL_REACHED_TYPE = "geometry_msgs/Vector3";
    private static final double SAFE_DISTANCE_THRESHOLD = 0.9;

    private final RosBridge bridge;
    private final Publisher stopPublisher;
    private final Publisher goalPublisher;

    private boolean currentlyTooClose = false;


    public RosEnv() {
        super();
        bridge = new RosBridge();
        bridge.connect(ROS_URL, true);
        System.out.println("Environment started, connected to ROS at " + ROS_URL);

        // Publishers
        stopPublisher = new Publisher(CONTROL_TOPIC, CONTROL_TYPE, bridge);
        goalPublisher = new Publisher(GOAL_TOPIC, GOAL_TYPE, bridge);

        // Subscribe to laser scan
        bridge.subscribe(
            SubscriptionRequestMsg.generate(LASER_TOPIC).setType(LASER_TYPE),
            new RosListenDelegate() {
                @Override
                public void receive(JsonNode data, String stringRep) {
                    handleLaserScanData(data);
                }
            }
        );

        // Subscribe to goal reached topic
        bridge.subscribe(
                SubscriptionRequestMsg.generate(GOAL_REACHED_TOPIC).setType(GOAL_REACHED_TYPE),
                (data, rep) -> handleVisitedPoint(data)
        );

        // Subscribe to agent goal reached topic
        bridge.subscribe(
                SubscriptionRequestMsg.generate(AGENT_GOAL_REACHED_TOPIC).setType(GOAL_REACHED_TYPE),
                (data, rep) -> handleVisitedPoint(data)
        );

    }

    private void handleVisitedPoint(JsonNode data) {
        boolean succeeded = false;
        while (! succeeded) {
            try {
                JsonNode msg = data.get("msg");
                double x = msg.get("x").asDouble();
                double y = msg.get("y").asDouble();

                // Create latest visited inspection point  predicate
                Predicate oldSafeLit = new Predicate("at");
                oldSafeLit.addTerm(new VarTerm("X"));
                oldSafeLit.addTerm(new VarTerm("Y"));
                removeUnifiesPercept(oldSafeLit);
                Predicate safeLit = new Predicate("at");
                safeLit.addTerm(new NumberTermImpl(x));
                safeLit.addTerm(new NumberTermImpl(y));
                addPercept(safeLit);

                System.out.println("Robot location: " + safeLit);
                System.err.println(percepts);
                succeeded = true;
            } catch (Exception e) {
                e.printStackTrace();
                System.err.println("ROS concurrency error");
            }
        }
    }



    /** Handle laser scan and create percepts */
    private void handleLaserScanData(JsonNode data) {
        JsonNode ranges = data.get("msg").path("ranges");
        double minRange = extractMinRange(ranges);

        boolean tooCloseNow = minRange < SAFE_DISTANCE_THRESHOLD;

        if (tooCloseNow && !currentlyTooClose) {
            clearPercepts();
            addPercept(new Literal("too_close"));
            currentlyTooClose = true;
        } else if (!tooCloseNow && currentlyTooClose) {
            clearPercepts();
            currentlyTooClose = false;
        }
    }

    private double extractMinRange(JsonNode ranges) {
        double minValue = Double.MAX_VALUE;
        for (JsonNode valueNode : ranges) {
            if (valueNode.isNumber()) {
                double value = valueNode.asDouble();
                if (value < minValue) {
                    minValue = value;
                }
            }
        }
        return minValue;
    }

    private void sendStopSignal(boolean stop) {
        PrimitiveMsg<Boolean> msg = new PrimitiveMsg<>(stop);
        stopPublisher.publish(msg);
        System.out.println("Published stop signal: " + stop);
    }


    /**
     * Send a Vector3 goal to /gwendolen_goal
     * (Python bridge will forward to /gwendolen_goal action server)
     */
    public void moveTo(double x, double y, double z) {
        Vector3 goal = new Vector3(x, y, z);
        goalPublisher.publish(goal);
        System.out.printf("Published Vector3 goal: x=%.2f, y=%.2f, z=%.2f%n", x, y, z);
    }

    @Override
    public Unifier executeAction(String agName, Action act) {
        String functor = act.getFunctor();
        switch (functor) {
            case "stop_moving":
                sendStopSignal(true);
                break;
            case "moveTo":
                printAction(act);
                double x = ((NumberTerm) act.getTerm(0)).solve();
                double y = ((NumberTerm) act.getTerm(1)).solve();
                double z = ((NumberTerm) act.getTerm(2)).solve();
                moveTo(x, y, z);
                System.out.printf("moveTo -> (%.2f, %.2f, %.2f)\n", x, y, z);
                break;
        }

        try {
            super.executeAction(agName, act);
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return new Unifier();
    }


    @Override
    public boolean done() {
        return false; // keep environment alive
    }
}

