cmake_minimum_required(VERSION 3.0.2)
project(human_vision_exchange)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

#add_message_files(
#   FILES
#)

## Generate services in the 'srv' folder
add_service_files(
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
  CATKIN_DEPENDS message_generation std_msgs
)

