#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry, OccupancyGrid
from project_reqs.msg import CustomMsg
import numpy as np


resolution = 0.1
MAP_WIDTH,MAP_HEIGHT = 2000, 2000
hits = np.full((MAP_WIDTH,MAP_HEIGHT), 1)
misses = np.full((MAP_WIDTH,MAP_HEIGHT), 1)
map = np.zeros((MAP_WIDTH,MAP_HEIGHT))


def hit_miss(robot_x, robot_y, robot_theta, angle_min, angle_increment, range_min, range_max,laser_ranges):
    global hits, misses, map
    # convert world space to map space
    robot_x = robot_x + 50
    robot_y = robot_y + 50
    robot_x_int = int(robot_x/resolution)
    robot_y_int = int(robot_y/resolution)

    for i in range(len(laser_ranges)):
        if laser_ranges[i] < range_min or laser_ranges[i] > range_max :
            continue

        # calculate the end of point of the laser from the robot
        end_x = robot_x_int + laser_ranges[i]/resolution * np.cos(robot_theta + angle_min + i * angle_increment)
        end_y = robot_y_int + laser_ranges[i]/resolution * np.sin(robot_theta + angle_min + i * angle_increment)
        end_x = int(end_x) 
        end_y = int(end_y) 

        if end_x < 0 or end_x >= MAP_WIDTH or end_y < 0 or end_y >= MAP_HEIGHT:
            continue
        hits[end_y,end_x] = hits[end_y,end_x] + 10

        dx = end_x - robot_x_int
        dy = end_y - robot_y_int
        dist = np.sqrt(dx**2 + dy**2)
        dx/=dist
        dy/=dist
        pointx = np.arange(robot_x_int, end_x-dx, dx+0.001)
        pointy = np.arange(robot_y_int, end_y-dy, dy+0.001)
        min_len = min(len(pointx),len(pointy))
        pointx = pointx[:min_len]
        pointy = pointy[:min_len]
        pointx = pointx.astype(int)
        pointy = pointy.astype(int)
        misses[pointy,pointx] += 5 

    # map = np.zeros((MAP_WIDTH,MAP_HEIGHT))
    map = hits / (hits + misses)
    map = map * 100
    map = map.astype(int)
    return map

def callback(CustomMsg):
    sm_msg = CustomMsg.sm
    nm_msg = CustomMsg.nm.pose.pose
    Yaw = np.arctan2(2*(nm_msg.orientation.w*nm_msg.orientation.z + nm_msg.orientation.x*nm_msg.orientation.y), 1 - 2*(nm_msg.orientation.y**2 + nm_msg.orientation.z**2))
    map = hit_miss(nm_msg.position.x, nm_msg.position.y, Yaw, sm_msg.angle_min, sm_msg.angle_increment, sm_msg.range_min, sm_msg.range_max, sm_msg.ranges)
    
    occgrid = OccupancyGrid()
    occgrid.header = CustomMsg.nm.header
    occgrid.header.stamp = rospy.Time()
    occgrid.header.seq = 0
    occgrid.header.frame_id = 'robot_map'
    occgrid.info.resolution = resolution
    occgrid.info.width = MAP_WIDTH
    occgrid.info.height = MAP_HEIGHT
    occgrid.info.origin.position.x = -50
    occgrid.info.origin.position.y = -50
    occgrid.data = map.flatten().tolist()
    pub.publish(occgrid)


if __name__ == '__main__':
    try:
        rospy.init_node('mapping')
        rospy.loginfo('Starting Mapping node ...')
        # publisher to the sensor topic '/sensor_topic'
        pub = rospy.Publisher('/map_topic', OccupancyGrid, queue_size=1)
        # subscribing to the laser scan and odometry topics
        sub = rospy.Subscriber('/sensor_topic', CustomMsg, callback)
        rospy.spin()

    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down Mapping node')
