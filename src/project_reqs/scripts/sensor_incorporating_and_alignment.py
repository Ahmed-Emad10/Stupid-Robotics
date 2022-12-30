#!/usr/bin/env python3

import rospy
from message_filters import Subscriber, ApproximateTimeSynchronizer
from sensor_msgs.msg import LaserScan
from nav_msgs.msg import Odometry
from project_reqs.msg import CustomMsg

def callback(LaserScan, Odometry):
    rospy.loginfo(LaserScan)
    rospy.loginfo(Odometry)
    # creating the custom message and publish it
    cm = CustomMsg()
    cm.sm = LaserScan
    cm.nm = Odometry
    pub.publish(cm)
    rospy.loginfo(cm)

if __name__ == '__main__':
    try:
        rospy.init_node('Starting Sensor incorporating and alignment node ...')

        # publisher to the sensor topic '/sensor_topic'
        pub = rospy.Publisher('/sensor_topic', CustomMsg, queue_size=10)

        # subscribing to the laser scan and odometry topics
        sub_sensor = Subscriber('/scan_multi', LaserScan)
        sub_odom = Subscriber('/robot/robotnik_base_control/odom', Odometry)

        # creating the filter to sync the 2 topics, slop is he error allowed between the incoming msgs from the 2 topics
        # we are subscribed to
        ats = ApproximateTimeSynchronizer([sub_sensor, sub_odom], queue_size=10, slop=0.1)
        ats.registerCallback(callback)

        rospy.spin()

    except rospy.ROSInterruptException:
        rospy.loginfo('Shutting down Sensor incorporating and alignment node')