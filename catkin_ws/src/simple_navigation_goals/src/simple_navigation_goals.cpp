#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>
#include <geometry_msgs/Vector3.h> 

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){
    ros::init(argc, argv, "inspection_navigation");
    ros::NodeHandle nh;
    
    MoveBaseClient ac("nav/move_base", true);

    // Publisher for visited inspection points
    ros::Publisher visited_pub = nh.advertise<geometry_msgs::Vector3>("/goal_reached", 10);
    
    // Wait for the action server to come up
    while(!ac.waitForServer(ros::Duration(5.0))){
        ROS_INFO("Waiting for the move_base action server to come up");
    }

    // Define multiple inspection points
    std::vector<std::pair<double, double>> inspection_points = {
	{-0.96, 1.13},
	{2.30, -1.11},
	{2.25, 2.40},
	{0.0, 0.0},
};


    for (const auto& point : inspection_points) {
        move_base_msgs::MoveBaseGoal goal;
        goal.target_pose.header.frame_id = "map";
        goal.target_pose.header.stamp = ros::Time::now();
        goal.target_pose.pose.position.x = point.first;
        goal.target_pose.pose.position.y = point.second;
	    goal.target_pose.pose.orientation.w = 1.0;

        ROS_INFO("Sending goal: x = %f, y = %f", point.first, point.second);
        ac.sendGoal(goal);
        ac.waitForResult();

        if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
            ROS_INFO("Successfully reached inspection point (%f, %f)", point.first, point.second);

            // Publish the visited point
            geometry_msgs::Vector3 msg;
            msg.x = point.first;
            msg.y = point.second;
            msg.z = 0.0;
            visited_pub.publish(msg);
            ROS_INFO("Published visited point (%f, %f) to /goal_reached", point.first, point.second);
        }else{
            ROS_WARN("Failed to reach inspection point (%f, %f)", point.first, point.second);
    }
    }

    ROS_INFO("Inspection route completed");
    return 0;
}
