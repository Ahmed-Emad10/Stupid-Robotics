;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::OdomCalibrationStatusStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'OdomCalibrationStatusStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ODOMCALIBRATIONSTATUSSTAMPED")
  (make-package "ROBOTNIK_MSGS::ODOMCALIBRATIONSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude OdomCalibrationStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::OdomCalibrationStatusStamped
  :super ros::object
  :slots (_header _status ))

(defmethod robotnik_msgs::OdomCalibrationStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance robotnik_msgs::OdomCalibrationStatus :init))
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
    ;; robotnik_msgs/OdomCalibrationStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/OdomCalibrationStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/OdomCalibrationStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::OdomCalibrationStatusStamped :md5sum-) "e0388dc05fe2fd5f3572337c5953072a")
(setf (get robotnik_msgs::OdomCalibrationStatusStamped :datatype-) "robotnik_msgs/OdomCalibrationStatusStamped")
(setf (get robotnik_msgs::OdomCalibrationStatusStamped :definition-)
      "Header header
OdomCalibrationStatus status

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
MSG: robotnik_msgs/OdomCalibrationStatus
bool is_calculating             # true when node is calculating the odometry parameters
float32 remaining_time          # remaining time in seconds for obtaining odometry values

float32 left_radius             # radius of the left wheel in meters
float32 right_radius            # radius of the right wheel in meters
float32 wheels_distance         # distance between the two wheels of the robot in meters
")



(provide :robotnik_msgs/OdomCalibrationStatusStamped "e0388dc05fe2fd5f3572337c5953072a")


