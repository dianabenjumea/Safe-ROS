
package gwendolen.agilex;

import ail.mas.DefaultEnvironment;
import ail.syntax.*;
import com.fasterxml.jackson.databind.JsonNode;
import ros.Publisher;
import ros.RosBridge;
import ros.RosListenDelegate;
import ros.SubscriptionRequestMsg;
import ros.msgs.std_msgs.PrimitiveMsg;

import java.util.Optional;

public class RosEnv extends DefaultEnvironment {

	private static final String ROS_URL = "ws://localhost:9090";
	private static final String TOPIC_NAME = "/scan";
	private static final String MESSAGE_TYPE = "sensor_msgs/LaserScan";
	private static final String CONTROL_TOPIC = "/gwendolen_control";
	private static final String CONTROL_TYPE = "std_msgs/Bool";
	private static final double SAFE_DISTANCE_THRESHOLD = 0.9;

	private final RosBridge bridge;
	//private double lastLaserReading = Double.MAX_VALUE;

	public RosEnv() {
		super();
		bridge = new RosBridge();
		bridge.connect(ROS_URL, true);
		System.out.println("Environment started, connection with ROS established.");

		bridge.subscribe(
				SubscriptionRequestMsg.generate(TOPIC_NAME)
						.setType(MESSAGE_TYPE),
				new RosListenDelegate() {
					@Override
					public void receive(JsonNode data, String stringRep) {
						handleLaserScanData(data);
					}
				});
	}


	private void handleLaserScanData(JsonNode data) {
		JsonNode ranges= data.get("msg").path("ranges");

		double minRange = extractMinRange(ranges);

		if (minRange < SAFE_DISTANCE_THRESHOLD) {
			addPercept(new Literal("too_close"));
		}
	}

	private double extractMinRange(JsonNode ranges) {
		double minValue = Double.MAX_VALUE;

		for (JsonNode valueNode : ranges){
			if (valueNode.isNumber()){
				double value = valueNode.asDouble();
				if (value < minValue){
					minValue = value;
				}
			}
		}
		return minValue;
	}



	@Override
	public Unifier executeAction(String agName, Action act) {
		if ("stop_moving".equals(act.getFunctor())) {
			publishStopSignal();
			System.out.println("Sending the message to stop moving");
		}
		return new Unifier();
	}

	private void publishStopSignal() {
		Publisher control = new Publisher(CONTROL_TOPIC, CONTROL_TYPE, bridge);
		control.publish(new PrimitiveMsg<>(true));
	}

	@Override
	public boolean done() {
		return false;
	}
}
