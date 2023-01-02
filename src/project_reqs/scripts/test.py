#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry, OccupancyGrid
from project_reqs.msg import CustomMsg
import numpy as np


resolution = 0.02
MAP_WIDTH,MAP_HEIGHT = 4992, 4992
hits = np.full((MAP_WIDTH,MAP_HEIGHT), 1)
misses = np.full((MAP_WIDTH,MAP_HEIGHT), 1)
map = np.zeros((MAP_WIDTH,MAP_HEIGHT))
x , y , theta, prev_t = 0, 0, 0, 0
first =True

def bresenham(start, end):
    x1, y1 = start
    x2, y2 = end
    dx = x2 - x1
    dy = y2 - y1

    # Determine how steep the line is
    is_steep = abs(dy) > abs(dx)

    # Rotate line
    if is_steep:
        x1, y1 = y1, x1
        x2, y2 = y2, x2

    # Swap start and end points if necessary and store swap state
    swapped = False
    if x1 > x2:
        x1, x2 = x2, x1
        y1, y2 = y2, y1
        swapped = True

    # Recalculate differentials
    dx = x2 - x1
    dy = y2 - y1

    # Calculate error
    error = int(dx / 2.0)
    ystep = 1 if y1 < y2 else -1

    # Iterate over bounding box generating points between start and end
    y = y1
    points = []
    for x in range(x1, x2 + 1):
        coord = (y, x) if is_steep else (x, y)
        points.append(coord)
        error -= abs(dy)
        if error < 0:
            y += ystep
            error += dx

    # Reverse the list if the coordinates were swapped
    if swapped:
        points.reverse()
    return points

def pose(vx, vy, init_theta, omega,stamp):
    global x, y , theta, prev_t
    vm_x = vx*np.cos(init_theta) - vy*np.sin(init_theta)
    vm_y = vy*np.cos(init_theta) + vx*np.sin(init_theta)
    delta_t = stamp - prev_t
    prev_t = stamp
    delta_t = delta_t.to_sec()
    xp = x + delta_t * vm_x
    yp = y + delta_t * vm_y
    thetap = init_theta + delta_t * omega
    x = xp
    y = yp 
    theta = thetap 
    print('predicted',xp,yp,theta)
    return xp, yp, thetap

def hit_miss(robot_x, robot_y, robot_theta, angle_min, angle_increment, range_min, range_max,laser_ranges):
    global hits, misses, map
    # convert world space to map space
    robot_x = robot_x + 50
    robot_y = robot_y + 50
    robot_x_int = int(robot_x/resolution)
    robot_y_int = int(robot_y/resolution)
    # print('hii', robot_x_int, robot_y_int)
    for i in range(len(laser_ranges)):
        if laser_ranges[i] < range_min or laser_ranges[i] > range_max :
            continue

        # calculate the end of point of the laser from the robot
        end_x = robot_x_int + laser_ranges[i]/resolution * np.cos(robot_theta + angle_min + i * angle_increment)
        end_y = robot_y_int + laser_ranges[i]/resolution * np.sin(robot_theta + angle_min + i * angle_increment)
        end_x = int(end_x) 
        end_y = int(end_y) 
        # print('end',end_x,end_y)

        if end_x < 0 or end_x >= MAP_WIDTH or end_y < 0 or end_y >= MAP_HEIGHT:
            continue

        # use bresenham to get the points between the robot and the end point
        points = bresenham((robot_x_int, robot_y_int), (end_x, end_y))

        # print('points',points)
        hits[end_y,end_x] = hits[end_y,end_x] + 10

        # print('hits',hits[end_x_int][end_y_int],end_x_int,end_y_int)

        for j in range(1, len(points)-1):
            # print('hiiiiiiiiiii')
            if points[j][0]< 0 or points[j][0] >= MAP_WIDTH or points[j][1] < 0 or points[j][1] >= MAP_HEIGHT:
                # print('byeeeeeeeee')
                continue
            misses[points[j][1],points[j][0]] = misses[points[j][1],points[j][0]] + 5
    
    # print('hits',hits.min(),hits.max())
    # print('misses',misses.min(),misses.max())
    map = np.zeros((MAP_WIDTH,MAP_HEIGHT))
    map = hits / (hits + misses)
    map = map * 100
    map = map.astype(int)
    return map

def callback(CustomMsg):
    # rospy.loginfo(CustomMsg)
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
    
    print('Actual positions', nm_msg.position.x,nm_msg.position.y)
    x, y, thata = pose(CustomMsg.nm.twist.twist.linear.x,CustomMsg.nm.twist.twist.linear.y,Yaw,CustomMsg.nm.twist.twist.angular.z, sm_msg.header.stamp)
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

    # global map
    # map = map.astype(int)
    # map[int((nm_msg.position.y+50)//resolution)] = 100
    # map[:,int((nm_msg.position.x+50)//resolution)] = 100

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
