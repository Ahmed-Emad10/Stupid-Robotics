;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::BatteryDockingStatusStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'BatteryDockingStatusStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUSSTAMPED")
  (make-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude BatteryDockingStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::BatteryDockingStatusStamped
  :super ros::object
  :slots (_header _status ))

(defmethod robotnik_msgs::BatteryDockingStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance robotnik_msgs::BatteryDockingStatus :init))
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
    ;; robotnik_msgs/BatteryDockingStatus _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/BatteryDockingStatus _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/BatteryDockingStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::BatteryDockingStatusStamped :md5sum-) "f9b376e82e9d778484349573af188b1d")
(setf (get robotnik_msgs::BatteryDockingStatusStamped :datatype-) "robotnik_msgs/BatteryDockingStatusStamped")
(setf (get robotnik_msgs::BatteryDockingStatusStamped :definition-)
      "Header header
BatteryDockingStatus status

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
MSG: robotnik_msgs/BatteryDockingStatus
# Modes of operation:
# no docking station contacts
string MODE_DISABLED=disabled
# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw
string MODE_AUTO_HW=automatic_hw
# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw
string MODE_AUTO_SW=automatic_sw
# Unattended relay detection & and manual activation of the charging relay
string MODE_MANUAL_SW=manual_sw

string operation_mode
	
bool contact_relay_status	# shows if there's contact with the charger
bool charger_relay_status   # shows if the relay for the charge is active or not

")



(provide :robotnik_msgs/BatteryDockingStatusStamped "f9b376e82e9d778484349573af188b1d")


