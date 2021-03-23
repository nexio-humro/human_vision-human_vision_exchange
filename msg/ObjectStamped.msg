# Standard Header
Header header

# Object label ID
int16 label_id

# add skeleton points
geometry_msgs/Point32[18] keypoint_2d
geometry_msgs/Point32[18] keypoint_3d

# Object centroid
geometry_msgs/Point32 position

# Tracking state
# 0 -> OFF (object not valid)
# 1 -> OK
# 2 -> SEARCHING (occlusion occurred, trajectory is estimated)
int16 tracking_state 
