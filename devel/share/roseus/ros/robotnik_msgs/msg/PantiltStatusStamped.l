;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::PantiltStatusStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'PantiltStatusStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::PANTILTSTATUSSTAMPED")
  (make-package "ROBOTNIK_MSGS::PANTILTSTATUSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PantiltStatusStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::PantiltStatusStamped
  :super ros::object
  :slots (_header _pantilt ))

(defmethod robotnik_msgs::PantiltStatusStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pantilt __pantilt) (instance robotnik_msgs::PantiltStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _pantilt __pantilt)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pantilt
   (&rest __pantilt)
   (if (keywordp (car __pantilt))
       (send* _pantilt __pantilt)
     (progn
       (if __pantilt (setq _pantilt (car __pantilt)))
       _pantilt)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; robotnik_msgs/PantiltStatus _pantilt
    (send _pantilt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; robotnik_msgs/PantiltStatus _pantilt
       (send _pantilt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; robotnik_msgs/PantiltStatus _pantilt
     (send _pantilt :deserialize buf ptr-) (incf ptr- (send _pantilt :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::PantiltStatusStamped :md5sum-) "be63351895b74b23132ea9e341c93843")
(setf (get robotnik_msgs::PantiltStatusStamped :datatype-) "robotnik_msgs/PantiltStatusStamped")
(setf (get robotnik_msgs::PantiltStatusStamped :definition-)
      "Header header
robotnik_msgs/PantiltStatus pantilt
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
MSG: robotnik_msgs/PantiltStatus
float32 pan_pos
float32 tilt_pos
float32 pan_speed
float32 tilt_speed
")



(provide :robotnik_msgs/PantiltStatusStamped "be63351895b74b23132ea9e341c93843")


