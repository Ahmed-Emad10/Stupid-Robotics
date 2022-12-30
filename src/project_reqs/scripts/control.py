#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
import termios, tty, sys, select

def getkey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    settings = termios.tcgetattr(sys.stdin)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key
    
lin_speed = 0.0
ang_vel = 0.0
def move(twist: Twist):
    global lin_speed, ang_vel
    # if one key is prsessed at at time
    if getkey() == 'w':
        rospy.loginfo('W key pressed')
        lin_speed += 0.3
        ang_vel = 0.0
    elif getkey() == 's':
        rospy.loginfo('S key pressed')
        lin_speed -= 0.3
        ang_vel = 0.0
    elif getkey() == 'a':
        rospy.loginfo('A key pressed')
        lin_speed = 0.0
        ang_vel = min(1.0, ang_vel + 0.2)
    elif getkey() == 'd':
        rospy.loginfo('D key pressed')
        lin_speed = 0.0
        ang_vel = max(-1.0, ang_vel - 0.2)

    # if two keys are pressed at the same time
    # elif getkey() == 'w' and getkey() == 'a':
    #     rospy.loginfo('W and A keys pressed')
    #     lin_speed += 0.3
    #     ang_vel = min(1.0, ang_vel + 0.2)
    # elif getkey() == 'd' and getkey() == 'w':
    #     rospy.loginfo('W and D keys pressed')
    #     lin_speed += 0.3
    #     ang_vel = max(-1.0, ang_vel - 0.2)
    # elif getkey() == 's' and getkey() == 'a':
    #     rospy.loginfo('S and A keys pressed')
    #     lin_speed -= 0.3
    #     ang_vel = min(1.0, ang_vel + 0.2)
    # elif getkey() == 's' and getkey() == 'd':
    #     rospy.loginfo('S and D keys pressed')
    #     lin_speed -= 0.3
    #     ang_vel = max(-1.0, ang_vel - 0.2)
    # q key is pressed
    elif getkey() == 'q':
        # exit the program
        twist.linear.x = 0.0
        twist.linear.y = 0.0
        twist.linear.z = 0.0
        twist.angular.x = 0.0
        twist.angular.y = 0.0
        twist.angular.z = 0.0
        rospy.loginfo('Q key pressed')
        rospy.signal_shutdown('Q key pressed')
    # no key is pressed
    else:
        if lin_speed > 0.0:
            lin_speed = max(0.0, lin_speed - 1.0) 
        elif lin_speed < 0.0:
            lin_speed = min(0.0, lin_speed + 1.0)
        twist.linear.y = 0.0
        twist.linear.z = 0.0
        twist.angular.x = 0.0
        twist.angular.y = 0.0
        if ang_vel > 0.0:
            ang_vel = max(0.0, ang_vel - 0.5)
        elif ang_vel < 0.0:
            ang_vel = min(0.0, ang_vel + 0.5)

    twist.linear.x = lin_speed
    twist.angular.z = ang_vel
    return twist


if __name__ == '__main__':
    rospy.init_node('control')
    rospy.loginfo('Starting control node press W, A, S, D to move the robot and Q to exit')
    pub = rospy.Publisher('/robot/robotnik_base_control/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(2.0)

    while not rospy.is_shutdown():
        try:
            twist = Twist()
            twist1 = Twist()
            twist1 = move(twist)
            pub.publish(twist1)
            rospy.loginfo('Publishing twist: {}'.format(twist1))
            rate.sleep()

        except rospy.ROSInterruptException:
            rospy.loginfo('Shutting down control node')