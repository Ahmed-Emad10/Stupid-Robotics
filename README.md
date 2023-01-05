# Stupid-Robotics
<div align="center">
   <img width="100%" src="screens/stupid-robot.jpg" alt="logo"></a>
   <hr>
</div>

## 📝 Table of Contents

- [About](#about)
- [Technology](#tech)
- [Dependencies](#depend)
- [Get Started](#Install)
- [Screenshots](#Screenshots)
## 📙 About <a name = "about"></a>
This project aims to apply the concepts of cognitive robotics to implement a Mapping with known pose and Simultaneous Localization and Mapping(**SLAM**) algorithm, and then apply it on Gazebo and RViz simulation tools using a real-life robot model in a realistic environment from scratch.</br>
This simulation is done on **SummitXL** robot in Willow garage which is one the most popular indoor simulation environments in Gazebo.</br>
This project is divides into four requirements:
1. Control the robot using keyboard keys.
2. Sensor Incorporating and Alignment.
3. Mapping with known pose.
4. Simultaneous Localization and Mapping(**SLAM**).

## 💻 Technology <a name = "tech"></a>
![](http://wiki.ros.org/custom/images/ros_org.png)

## 🔗 Dependencies <a name = "depend"></a>
#### [summit_xl_common](http://wiki.ros.org/summit_xl_common)</br>
   - Launch files that launch the complete simulation of the robot.
#### [summit_xl_sim](http://wiki.ros.org/summit_xl_sim)</br>
   - This package contains the different controllers and launch files for the SummitXL robot, shared for real robot and simulation.
#### [robotnik_msgs](http://wiki.ros.org/robotnik_msgs)</br>
   - Contains common messages and services used by some Robotnik's packages.
#### [robotnik_sensors](http://wiki.ros.org/robotnik_sensors)</br>
   - Contains Robotnik standard sensors description.
#### [ira_laser_tools](http://wiki.ros.org/ira_laser_tools)
   - Listening to different laser scan sources and merging them in a single scan or generating virtual laser scans.


### to run first req
```
roslaunch summit_xl_sim_bringup summit_xls_complete.launch
```
```
rosrun project_reqs control.py
```

### to run second req
```
roslaunch summit_xl_sim_bringup summit_xls_complete.launch
```
```
roslaunch ira_laser_tools laserscan_multi_merger.launch
```
```
rosrun project_reqs sensor_incorporating_and_alignment.py
```