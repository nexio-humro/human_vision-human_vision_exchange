cmake_minimum_required(VERSION 3.0.2)
project(human_vision_exchange)

find_package(catkin REQUIRED COMPONENTS
  std_msgs
  geometry_msgs
  sensor_msgs
  message_generation
  cv_bridge
  roslib
)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_message_files(
  DIRECTORY msg
  FILES
  FaceDescription.msg
  FaceDescriptionVector.msg
  Keypoints2d.msg
)

# Generate services in the 'srv' folder
add_service_files(
   DIRECTORY srv 
   FILES
   FaceVectorReceiver.srv
   DoPhotoReceiver.srv
   CutFaces.srv
   FindFaceVectors.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
   sensor_msgs
)

catkin_package(
  INCLUDE_DIRS include
  CATKIN_DEPENDS std_msgs geometry_msgs sensor_msgs message_generation cv_bridge roslib
)
