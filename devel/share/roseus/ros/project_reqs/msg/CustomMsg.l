;; Auto-generated. Do not edit!


(when (boundp 'project_reqs::CustomMsg)
  (if (not (find-package "PROJECT_REQS"))
    (make-package "PROJECT_REQS"))
  (shadow 'CustomMsg (find-package "PROJECT_REQS")))
(unless (find-package "PROJECT_REQS::CUSTOMMSG")
  (make-package "PROJECT_REQS::CUSTOMMSG"))

(in-package "ROS")
;;//! \htmlinclude CustomMsg.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass project_reqs::CustomMsg
  :super ros::object
  :slots (_sm _nm ))

(defmethod project_reqs::CustomMsg
  (:init
   (&key
    ((:sm __sm) (instance sensor_msgs::LaserScan :init))
    ((:nm __nm) (instance nav_msgs::Odometry :init))
    )
   (send-super :init)
   (setq _sm __sm)
   (setq _nm __nm)
   self)
  (:sm
   (&rest __sm)
   (if (keywordp (car __sm))
       (send* _sm __sm)
     (progn
       (if __sm (setq _sm (car __sm)))
       _sm)))
  (:nm
   (&rest __nm)
   (if (keywordp (car __nm))
       (send* _nm __nm)
     (progn
       (if __nm (setq _nm (car __nm)))
       _nm)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/LaserScan _sm
    (send _sm :serialization-length)
    ;; nav_msgs/Odometry _nm
    (send _nm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/LaserScan _sm
       (send _sm :serialize s)
     ;; nav_msgs/Odometry _nm
       (send _nm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/LaserScan _sm
     (send _sm :deserialize buf ptr-) (incf ptr- (send _sm :serialization-length))
   ;; nav_msgs/Odometry _nm
     (send _nm :deserialize buf ptr-) (incf ptr- (send _nm :serialization-length))
   ;;
   self)
  )

(setf (get project_reqs::CustomMsg :md5sum-) "14b1aed249d5783b58018a85dcc78ac1")
(setf (get project_reqs::CustomMsg :datatype-) "project_reqs/CustomMsg")
(setf (get project_reqs::CustomMsg :definition-)
      "sensor_msgs/LaserScan sm
nav_msgs/Odometry nm
================================================================================
MSG: sensor_msgs/LaserScan
# Single scan from a planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

float32[] ranges         # range data [m] (Note: values < range_min or > range_max should be discarded)
float32[] intensities    # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :project_reqs/CustomMsg "14b1aed249d5783b58018a85dcc78ac1")


