cmake_minimum_required(VERSION 3.0.2)
project(human_vision_exchange)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
)

add_message_files(
  DIRECTORY msg
  FILES
  FaceDescription.msg
  FaceDescriptionVector.msg
)

# Generate services in the 'srv' folder
add_service_files(
   DIRECTORY srv 
   FILES
   FaceVectorReceiver.srv
   DoPhotoReceiver.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
)

catkin_package(
  CATKIN_DEPENDS std_msgs message_generation
)

