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
x , y , theta, prev_t = 0, 0, 0, 0
first =True


def pose(vx, vy, init_theta, omega,stamp,obs):
    global x, y , theta, prev_t
    # prediction step
    # decompose the velocity vector to vx and vy (transform the velocity vector from the robot space to the map space)
    vm_x = vx*np.cos(init_theta) - vy*np.sin(init_theta)
    vm_y = vy*np.cos(init_theta) + vx*np.sin(init_theta)
    delta_t = stamp - prev_t
    prev_t = stamp
    delta_t = delta_t.to_sec()
    # x_predicted, y_predicted = (x_prev, y_prev) + (vm_x, vm_y) * delta_t
    xp = x + delta_t * vm_x
    yp = y + delta_t * vm_y
    # theta_predicted = theta_prev + angular_velocity * delta_t
    thetap = init_theta + delta_t * omega
    # corretcion step
    k = 1
    x = xp + k *(obs.x - xp) 
    y = yp + k *(obs.y - yp)
    theta = thetap + k *(init_theta - thetap)
    
    return x, y, theta

def hit_miss(robot_x, robot_y, robot_theta, angle_min, angle_increment, range_min, range_max,laser_ranges):
    global hits, misses, map
    # convert world space to map space
    robot_x = robot_x + 50
    robot_y = robot_y + 50
    robot_x_int = int(robot_x/resolution)
    robot_y_int = int(robot_y/resolution)
    for i in range(0, len(laser_ranges), 5):
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

        # calculate the distance between the end point and the robot
        dx = end_x - robot_x_int
        dy = end_y - robot_y_int
        dist = np.sqrt(dx**2 + dy**2)
        # divide the difference between the end point and the robot by the distance to get the step size
        # supose we have the the robot at (0,0) and the end point at (4,3) 
        # the distance is 5 and the difference is (dx = 4, dy = 3)
        # to get the step size we divide the difference(dx, dy) by the distance 5 we got step size (dx = 4/5, dy = 3/5)
        dx/=dist
        dy/=dist
        pointx = np.arange(robot_x_int, end_x-dx, dx+0.001)
        pointy = np.arange(robot_y_int, end_y-dy, dy+0.001)
        min_len = min(len(pointx),len(pointy))
        # truncate the arrays to the same length
        pointx = pointx[:min_len]
        pointy = pointy[:min_len]
        # convert the arrays to int to use them as indexes
        pointx = pointx.astype(int)
        pointy = pointy.astype(int)
        # update misses array
        misses[pointy,pointx] += 5

    map = hits / (hits + misses)
    map = map * 100
    map = map.astype(int)
    return map

def callback(CustomMsg):
    global x, y, theta, prev_t , first
    sm_msg = CustomMsg.sm
    nm_msg = CustomMsg.nm.pose.pose
    Yaw = np.arctan2(2*(nm_msg.orientation.w*nm_msg.orientation.z + nm_msg.orientation.x*nm_msg.orientation.y), 1 - 2*(nm_msg.orientation.y**2 + nm_msg.orientation.z**2))
    if(first):
        x = nm_msg.position.x
        y = nm_msg.position.y
        theta = Yaw
        prev_t = sm_msg.header.stamp
        first = False
    # pose function takes (x_velocity, y_velocity, theta with respect to robot, angular_velocity, time_stamp, observation)
    x, y, thata = pose(CustomMsg.nm.twist.twist.linear.x, CustomMsg.nm.twist.twist.linear.y, Yaw, CustomMsg.nm.twist.twist.angular.z, sm_msg.header.stamp, nm_msg.position)
    map = hit_miss(x, y, thata, sm_msg.angle_min, sm_msg.angle_increment, sm_msg.range_min, sm_msg.range_max, sm_msg.ranges)
    
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
        rospy.init_node('slam_node')
        rospy.loginfo('Starting SLAM node ...')
        # publisher to the sensor topic '/sensor_topic'
        pub = rospy.Publisher('/slam_topic', OccupancyGrid, queue_size=1)
        # subscribing to the laser scan and odometry topics
        sub = rospy.Subscriber('/sensor_topic', CustomMsg, callback)
        rospy.spin()

    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down Mapping node')
