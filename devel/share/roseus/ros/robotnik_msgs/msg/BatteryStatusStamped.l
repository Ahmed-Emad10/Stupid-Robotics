;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::BatteryStatusStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'BatteryStatusStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::BATTERYSTATUSSTAMPED")
  (make-package "ROBOTNIK_MSGS::BATTERYSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude BatteryStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::BatteryStatusStamped
  :super ros::object
  :slots (_header _status ))

(defmethod robotnik_msgs::BatteryStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance robotnik_msgs::BatteryStatus :init))
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
    ;; robotnik_msgs/BatteryStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/BatteryStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/BatteryStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::BatteryStatusStamped :md5sum-) "ebfafe84a4dbed599e77635223eefcd0")
(setf (get robotnik_msgs::BatteryStatusStamped :datatype-) "robotnik_msgs/BatteryStatusStamped")
(setf (get robotnik_msgs::BatteryStatusStamped :definition-)
      "Header header
BatteryStatus status

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
MSG: robotnik_msgs/BatteryStatus
float32 voltage			# in volts
float32 current			# in amperes
float32 level			# in %
uint32 time_remaining		# in minutes
uint32 time_charging            # in minutes 
bool is_charging                # true when connected
float32[] cell_voltages

")



(provide :robotnik_msgs/BatteryStatusStamped "ebfafe84a4dbed599e77635223eefcd0")


