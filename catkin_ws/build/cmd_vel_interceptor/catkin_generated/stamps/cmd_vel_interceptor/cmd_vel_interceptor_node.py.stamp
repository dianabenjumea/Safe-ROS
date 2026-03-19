#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist, Vector3
from std_msgs.msg import Bool

import sys
import os

# Add Dafny-generated Python folder to Python path
dafny_path = os.path.join(os.path.dirname(__file__), "dafny", "CmdVelLogic-py")
sys.path.insert(0, dafny_path)  

import CmdVelLogic  # Dafny-generated Python module

class CmdVelInterceptor:

    def __init__(self):
        rospy.init_node('cmd_vel_interceptor_node')

        # Dafny orchestration object
        self.logic = CmdVelLogic.Orchestrator()

        # variables for navigation commands
        self.agent_cmd = None
        self.nav_cmd = None

        # Subscribers
        rospy.Subscriber('/agent/cmd_vel', Twist, self.agent_cmd_callback)
        rospy.Subscriber('/nav/cmd_vel', Twist, self.nav_cmd_callback)
        rospy.Subscriber('/gwendolen_control', Bool, self.stop_callback)
        rospy.Subscriber('/gwendolen_goal', Vector3, self.agent_goal_callback)

        # Publisher
        self.cmd_vel_pub = rospy.Publisher('/cmd_vel_filtered', Twist, queue_size=10)

        rospy.loginfo("cmd_vel_interceptor_node running...")

    # --- Callbacks ---
    def stop_callback(self, msg: Bool):
        self.logic.stopRequested = msg.data
        rospy.loginfo(f"Safety stop signal: {self.logic.stopRequested}")

    def agent_cmd_callback(self, msg: Twist):
        self.agent_cmd = msg
        self.logic.agentCmdAvailable = True
        
    def nav_cmd_callback(self, msg: Twist):
        self.nav_cmd = msg
        self.logic.navCmdAvailable = True

    def agent_goal_callback(self, msg: Vector3):
        self.logic.agentGoalActive = True
        self.agent_cmd = None # Reset previous cmd_vel
        rospy.loginfo(f"Agent goal received → active (x={msg.x}, y={msg.y}, z={msg.z})")

    # Publishing... 
    def publish_cmd(self, event):
        decision = self.logic.Decide()

        if decision.is_UseAgent and self.agent_cmd:
            self.cmd_vel_pub.publish(self.agent_cmd)
            rospy.loginfo("Forwarding agent cmd_vel")
        elif decision.is_UseNav and self.nav_cmd:
            self.cmd_vel_pub.publish(self.nav_cmd)
            rospy.loginfo("No stop + no agent goal → forwarding nav cmd_vel")
        elif decision.is_Stop:
            self.cmd_vel_pub.publish(Twist())  # Zero velocities
            rospy.logwarn("STOP active + no agent goal → publishing zero cmd_vel")
        # Wait does nothing

if __name__ == "__main__":
    CmdVelInterceptor()
    rospy.spin()
