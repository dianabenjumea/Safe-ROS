#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Bool, String


class CmdVelInterceptor:
    def __init__(self):
        rospy.init_node('cmd_vel_interceptor_node', anonymous=True)
        
        # Internal state 
        self.stop_requested = False # Stop signal
        self.active_source = "nav"   # default source
        self.latest_nav_cmd = Twist()
        self.latest_agent_cmd = Twist()

        # Subscribers 
        rospy.Subscriber('/nav/cmd_vel', Twist, self.nav_cmd_callback)
        rospy.Subscriber('/agent/cmd_vel', Twist, self.agent_cmd_callback)
        rospy.Subscriber('/gwendolen_control', Bool, self.stop_callback)
        rospy.Subscriber('/cmd_vel_source', String, self.source_callback)

        # Publisher (remapped to /cmd_vel in your launch file)
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel_filtered', Twist, queue_size=10)
        
        rospy.loginfo("cmd_vel_interceptor_node initialized and running...")

        # Timer to publish periodically
        rospy.Timer(rospy.Duration(0.1), self.publish_cmd)

    def stop_callback(self, msg):
        self.stop_requested = msg.data
        rospy.loginfo(f"Safety stop signal received: {self.stop_requested}")

    def source_callback(self, msg):
        if msg.data in ["nav", "agent"]:
            self.active_source = msg.data
            rospy.loginfo(f"Switched active cmd_vel source to: {self.active_source}")
        else:
            rospy.logwarn(f"Ignoring unknown source selection: {msg.data}")

    def nav_cmd_callback(self, msg):
        self.latest_nav_cmd = msg

    def agent_cmd_callback(self, msg):
        self.latest_agent_cmd = msg

    def publish_cmd(self, event):
        if self.stop_requested:
            rospy.logwarn("Stop active - publishing zero velocity")
            self.cmd_vel_pub.publish(Twist())
        else:
            if self.active_source == "agent":
                self.cmd_vel_pub.publish(self.latest_agent_cmd)
            else:
                self.cmd_vel_pub.publish(self.latest_nav_cmd)

if __name__ == '__main__':
    try:
        node = CmdVelInterceptorMux()
        rospy.spin()
    except rospy.ROSInterruptException:
        rospy.loginfo("cmd_vel_interceptor_mux shutting down.")
