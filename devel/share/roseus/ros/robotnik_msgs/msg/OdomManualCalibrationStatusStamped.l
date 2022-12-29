;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::OdomManualCalibrationStatusStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'OdomManualCalibrationStatusStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ODOMMANUALCALIBRATIONSTATUSSTAMPED")
  (make-package "ROBOTNIK_MSGS::ODOMMANUALCALIBRATIONSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude OdomManualCalibrationStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::OdomManualCalibrationStatusStamped
  :super ros::object
  :slots (_header _status ))

(defmethod robotnik_msgs::OdomManualCalibrationStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance robotnik_msgs::OdomManualCalibrationStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; robotnik_msgs/OdomManualCalibrationStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/OdomManualCalibrationStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/OdomManualCalibrationStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::OdomManualCalibrationStatusStamped :md5sum-) "040580a8054e03204d303892affeca19")
(setf (get robotnik_msgs::OdomManualCalibrationStatusStamped :datatype-) "robotnik_msgs/OdomManualCalibrationStatusStamped")
(setf (get robotnik_msgs::OdomManualCalibrationStatusStamped :definition-)
      "Header header
OdomManualCalibrationStatus status

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
MSG: robotnik_msgs/OdomManualCalibrationStatus
geometry_msgs/Pose odom_increment             # odometry increment since last reset
geometry_msgs/Pose real_increment             # real increment since last reset

float32 linear_error            # linear error between odom and real since last reset
float32 angular_error           # angular error between odom and real since last reset

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

")



(provide :robotnik_msgs/OdomManualCalibrationStatusStamped "040580a8054e03204d303892affeca19")


