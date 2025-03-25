cmake_minimum_required(VERSION 3.5)
project(auto_shepherd_msgs)




############################
#
#   DEPENDENCY DEFINITION
#

# Define build tool dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

# Define dependencies for messages
find_package(builtin_interfaces REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(actionlib_msgs REQUIRED)
set(msg_deps
  builtin_interfaces
  std_msgs
  geometry_msgs
  actionlib_msgs
)




########################
#
#   FILE DECLARATION
#

# Declare the custom message files
set(msg_files
  "msg/StringList.msg"
)


# Declare the custom service files
set(srv_files
#  "srv/DoService.srv"
)



#Generate actions in the 'action' folder
# Declare the custom service files
set(action_files
#    "action/DoAction.action"
)



#######################
#
#   FILE GENERATION
#

# Generate the files
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES ${msg_deps}
)


###################################
#
#   DOWNSTREAM DEPENDENCY EXPORT
#

# Export information to downstream packages
ament_export_dependencies(rosidl_default_runtime)
ament_package()
