#!/usr/bin/env python3
from __future__ import print_function

import rospy
import actionlib

from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from geometry_msgs.msg import Vector3

# Global publisher
goal_reached_pub = None

def send_to_movebase(x, y, z):

    client = actionlib.SimpleActionClient('agent/move_base', MoveBaseAction)
    client.wait_for_server()

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y
    goal.target_pose.pose.position.z = z
    goal.target_pose.pose.orientation.w = 1.0

    client.send_goal(goal)
    wait = client.wait_for_result()

    if not wait:
        rospy.logerr("Action server not available!")
        rospy.signal_shutdown("Action server not available!")
        return None
    else:
        return client.get_result()

def goal_movebase(data):
    global goal_reached_pub
    try:
        result = send_to_movebase(data.x, data.y, data.z)
        if result:
            rospy.loginfo("Goal execution done!")

            # --- Publish visited inspection point ---
            msg = Vector3()
            msg.x = data.x
            msg.y = data.y
            msg.z = data.z

            goal_reached_pub.publish(msg)
            rospy.loginfo("Published visited point: (%f, %f, %f)",
                          data.x, data.y, data.z)

    except rospy.ROSInterruptException:
        rospy.loginfo("Navigation test finished.")    

def movebase_client():
    global goal_reached_pub
    
    rospy.init_node('movebase_client_py', anonymous=True)

    # Create publisher ONCE
    goal_reached_pub = rospy.Publisher("/agent_goal_reached", Vector3, queue_size=10)

    rospy.Subscriber("gwendolen_goal", Vector3, goal_movebase)

    rospy.spin()

if __name__ == '__main__':
    movebase_client()
