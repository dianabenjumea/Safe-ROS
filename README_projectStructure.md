
---

# **Project structure**  
This README file is used to explain and underdstand how this project work. Considering the lenght of the project and the complexitity plus the differents packages that are in use I consider that is usefull to have this document to help understand/explain what is in the project.

---

we have 3 folders that because of a compose.yaml we are able to share within a docker container and the local environment. 

**catkin_ws** 
This is the ROS workspace --> the ros version we a re using in this project is ROS Noetic. 
In the src folder are all the packages used here.
 - **gazebo_radiation_plugin** https://github.com/EEEManchester/gazebo_radiation_plugin
 - **simple_navigation_goals** https://github.com/autonomy-and-verification/heterogeneous-verification/tree/master/evidence/Section%204%20Nuclear%20Waste%20Store%20Simulation%20and%20Agent
 - **simple_radiation_layer** https://github.com/EEEManchester/simple_radiation_layer 


 - scout_ros this folder conatin the packages that are related to the AgileX Scout mini robot.



-> scout_control

-> scout_gazebo_simulation

-> **ugv_sdk** https://github.com/agilexrobotics/ugv_sdk/tree/main
C++ interface to communicate with the mobile platforms, for sending commands to the robot and receiving the latest robot state.


**ROS Packages for scout mobile robot** https://github.com/agilexrobotics/scout_ros
This repository contains the minimal packages to control the scout robot using ROS
-> **scout_bringup:** launch and configuration files to start ROS nodes
-> **scout_base:** a ROS wrapper around ugv_sdk to monitor and control the scout robot
-> **scout_description:** URDF model for the mobile base, a sample urdf (scout_description/sample/scout_v2_nav.xacro) is provided for customized robot with addtional sensors
-> **scout_msgs:** scout related message definitions

**AgileX product gazebo simulate** https://github.com/agilexrobotics/ugv_gazebo_sim
 -> **scout_gazebo_sim:** The folder is gazebo simulation function package
​ -> **scout_control:** The folder is simulation controller function package
​ -> **scout_description:** The folder is the function package of model file

