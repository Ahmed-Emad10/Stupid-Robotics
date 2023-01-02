# Stupid-Robotics
<div align="center">
   <img width=100% src="screens/stupid-robot.jpg" alt="demo-logo"></a>
   <hr>
</div>

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