#!/bin/bash

# Define an array of topics
topics=(
    /clicked_point
    /goal_pose
    /tf
    /tf_static
    /zed/plane_marker
    /zed/plane_marker_array
    /zed/robot_description
    /zed/zed_node/atm_press
    /zed/zed_node/body_trk/skeletons
    /zed/zed_node/depth/depth_registered
    /zed/zed_node/mapping/fused_cloud
    /zed/zed_node/obj_det/objects
    /zed/zed_node/path_map
    /zed/zed_node/path_odom
    /zed/zed_node/point_cloud/cloud_registered
    /zed/zed_node/pose
    /zed/zed_node/rgb/camera_info
    /zed/zed_node/rgb/image_rect_color
    /zed/zed_node/stereo/image_rect_color
    /zed/zed_node/temperature/imu
    /zed/zed_node/temperature/left
    /zed/zed_node/temperature/right
)

# Use the array in the ros2 bag record command
if [ "$#" -eq 0 ]; then
    ros2 bag record "${topics[@]}"
else
    ros2 bag record -o $1 "${topics[@]}"
fi