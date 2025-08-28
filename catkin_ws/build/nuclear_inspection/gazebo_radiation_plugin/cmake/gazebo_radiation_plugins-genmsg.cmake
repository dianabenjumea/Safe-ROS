# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gazebo_radiation_plugins: 6 messages, 6 services")

set(MSG_I_FLAGS "-Igazebo_radiation_plugins:/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gazebo_radiation_plugins_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" "geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" "gazebo_radiation_plugins/Location"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" "gazebo_radiation_plugins/WayP:gazebo_radiation_plugins/Command:gazebo_radiation_plugins/Location"
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" ""
)

get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_custom_target(_gazebo_radiation_plugins_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gazebo_radiation_plugins" "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Services
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_cpp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Module File
_generate_module_cpp(gazebo_radiation_plugins
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gazebo_radiation_plugins_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gazebo_radiation_plugins_generate_messages gazebo_radiation_plugins_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_cpp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_radiation_plugins_gencpp)
add_dependencies(gazebo_radiation_plugins_gencpp gazebo_radiation_plugins_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_radiation_plugins_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Services
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_eus(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Module File
_generate_module_eus(gazebo_radiation_plugins
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gazebo_radiation_plugins_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gazebo_radiation_plugins_generate_messages gazebo_radiation_plugins_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_eus _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_radiation_plugins_geneus)
add_dependencies(gazebo_radiation_plugins_geneus gazebo_radiation_plugins_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_radiation_plugins_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Services
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_lisp(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Module File
_generate_module_lisp(gazebo_radiation_plugins
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gazebo_radiation_plugins_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gazebo_radiation_plugins_generate_messages gazebo_radiation_plugins_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_lisp _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_radiation_plugins_genlisp)
add_dependencies(gazebo_radiation_plugins_genlisp gazebo_radiation_plugins_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_radiation_plugins_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Services
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_nodejs(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Module File
_generate_module_nodejs(gazebo_radiation_plugins
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gazebo_radiation_plugins_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gazebo_radiation_plugins_generate_messages gazebo_radiation_plugins_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_radiation_plugins_gennodejs)
add_dependencies(gazebo_radiation_plugins_gennodejs gazebo_radiation_plugins_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_radiation_plugins_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_msg_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg;/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Services
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)
_generate_srv_py(gazebo_radiation_plugins
  "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
)

### Generating Module File
_generate_module_py(gazebo_radiation_plugins
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gazebo_radiation_plugins_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gazebo_radiation_plugins_generate_messages gazebo_radiation_plugins_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Simulated_Radiation_Msg.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Command.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Inspection.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Location.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/WayP.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/msg/Snapshot.msg" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/EnvironmentEvolver.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenWorldsFromModels.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenYamlsFromWorld.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/ConvertWorldBuilderModel.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/GenRandomEnvironmentalEffects.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/catkin_ws/src/nuclear_inspection/gazebo_radiation_plugin/srv/MassYamlLoader.srv" NAME_WE)
add_dependencies(gazebo_radiation_plugins_generate_messages_py _gazebo_radiation_plugins_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gazebo_radiation_plugins_genpy)
add_dependencies(gazebo_radiation_plugins_genpy gazebo_radiation_plugins_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gazebo_radiation_plugins_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gazebo_radiation_plugins
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gazebo_radiation_plugins_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(gazebo_radiation_plugins_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gazebo_radiation_plugins
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gazebo_radiation_plugins_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(gazebo_radiation_plugins_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gazebo_radiation_plugins
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gazebo_radiation_plugins_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(gazebo_radiation_plugins_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gazebo_radiation_plugins
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(gazebo_radiation_plugins_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gazebo_radiation_plugins
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gazebo_radiation_plugins_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(gazebo_radiation_plugins_generate_messages_py geometry_msgs_generate_messages_py)
endif()
