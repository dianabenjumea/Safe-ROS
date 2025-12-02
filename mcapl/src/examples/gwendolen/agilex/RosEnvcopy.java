package gwendolen.agilex;

import ail.mas.DefaultEnvironment;
import ail.syntax.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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
public class RosEnvcopy extends DefaultEnvironment {

    private static final String ROS_URL = "ws://localhost:9090";
    private static final String LASER_TOPIC = "/scan";
    private static final String LASER_TYPE = "sensor_msgs/LaserScan";
    private static final String CONTROL_TOPIC = "/gwendolen_control";
    private static final String CONTROL_TYPE = "std_msgs/Bool";
    private static final String GOAL_TOPIC = "/gwendolen_goal";   // Uses the Python bridge
    private static final String GOAL_TYPE = "geometry_msgs/Vector3";
    private static final String GOAL_REACHED_TOPIC = "/goal_reached";
    private static final String GOAL_REACHED_TYPE = "geometry_msgs/Vector3";
    private static final double SAFE_DISTANCE_THRESHOLD = 0.9;

    private final RosBridge bridge;
    private final Publisher stopPublisher;
    private final Publisher goalPublisher;

    private boolean currentlyTooClose = false;

    public RosEnvcopy() {
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
    }



    /** Handle laser scan and create percepts */
    private void handleLaserScanData(JsonNode data) {
        JsonNode ranges = data.get("msg").path("ranges");
        double minRange = extractMinRange(ranges);

        boolean tooCloseNow = minRange < SAFE_DISTANCE_THRESHOLD;

        if (tooCloseNow && !currentlyTooClose) {
            clearPercepts("too_close");
            addPercept(new Literal("too_close"));
            currentlyTooClose = true;
        } else if (!tooCloseNow && currentlyTooClose) {
            clearPercepts("too_close");
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


    /** Handle goal reached topic and create percepts and safe_stack */
    private void handleVisitedPoint(JsonNode data) {
        try {
            JsonNode msg = data.get("msg");
            double x = msg.get("x").asDouble();
            double y = msg.get("y").asDouble();

            // Create safe_inspection_point predicate
            Predicate safeLit = new Predicate("safe_inspection_point");
            safeLit.addTerm(new NumberTermImpl(x));
            safeLit.addTerm(new NumberTermImpl(y));
            addPercept(safeLit);

            // Update safe_stack
            List<Term> currentStack = getSafeStackTerms(); // helper method to get current stack

            // Create a point predicate for stack
            Predicate point = new Predicate("point");
            point.addTerm(new NumberTermImpl(x));
            point.addTerm(new NumberTermImpl(y));

            // Push to stack (prepend)
            currentStack.add(0, point);

            // Remove all previous safe_stack percepts 
            clearPercepts("safe_stack");


            // Create a ListTermImpl to wrap all points
            ail.syntax.ListTermImpl listTerm = new ail.syntax.ListTermImpl();
            for (Term t : currentStack) {
                listTerm.add(t);
            }

            // Add as safe_stack([point(...), ...])
            Predicate newStack = new Predicate("safe_stack");
            newStack.addTerm(listTerm);
            addPercept(newStack);


            System.out.printf("Added safe_inspection_point(%.2f, %.2f)", x, y);

            System.out.println("Updated percept:" + newStack);


        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /** Helper to get current safe_stack terms from the agent */
    private List<Term> getSafeStackTerms() {
        List<Term> stackTerms = new ArrayList<>();

        Set<Predicate> allPercepts = getPercepts(null, false);

        for (Predicate p : allPercepts) {
            if (p.getFunctor().equals("safe_stack") && p.getTermsSize() == 1) {
                Term firstTerm = p.getTerm(0);
                if (firstTerm instanceof ail.syntax.ListTerm) {
                    ail.syntax.ListTerm list = (ail.syntax.ListTerm) firstTerm;
                    for (Term t : list) {
                        stackTerms.add(t);
                    }
                }
                break;
            }
        }

        return stackTerms;
    }


    /** Map agent actions to ROS commands */
    @Override
    public Unifier executeAction(String agName, Action act) {
        switch (act.getFunctor()) {
            case "stop_moving":
                sendStopSignal(true);
                System.out.println("Stop signal sent to /gwendolen_control.");
                break;

            case "return_to_start":
                System.out.println("Initiating return-to-start sequence using safe_stack...");

                List<Term> stackList = getSafeStackTerms();

                //visit each safe point in order
                for (int i = 0; i < stackList.size(); i++) {
                    Term t = stackList.get(i);
                    if (t instanceof Predicate) {
                        Predicate p = (Predicate) t;
                        if (p.getFunctor().equals("point") && p.getTermsSize() >= 2) {
                            double x = Double.parseDouble(p.getTerm(0).toString());
                            double y = Double.parseDouble(p.getTerm(1).toString());
                            System.out.printf("Returning through safe point: (%.2f, %.2f)%n", x, y);
                            moveTo(x, y, 0.0);

                            //optional delay to simulate navigation between waypoints
                            try{
                                Thread.sleep(3000);     // 3 seconds between points
                            }catch (InterruptedException e) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    }
                }
                break;

            case "move_to":
                double x = ((NumberTermImpl) act.getTerm(0)).solve();
                double y = ((NumberTermImpl) act.getTerm(1)).solve();

                moveTo(x, y, 0.0);
                System.out.printf("Moving to goal: x=%.2f, y=%.2f%n", x, y);
                break;
        }
        return new Unifier();
    }

    private void sendStopSignal(boolean stop) {
        stopPublisher.publish(new PrimitiveMsg<>(stop));
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
    public boolean done() {
        return false;
    }
}


