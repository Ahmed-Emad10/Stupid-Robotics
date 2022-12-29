;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::StringStamped)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'StringStamped (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::STRINGSTAMPED")
  (make-package "ROBOTNIK_MSGS::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::StringStamped
  :super ros::object
  :slots (_header _string ))

(defmethod robotnik_msgs::StringStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:string __string) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _string (string __string))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:string
   (&optional __string)
   (if __string (setq _string __string)) _string)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _string
    4 (length _string)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _string
       (write-long (length _string) s) (princ _string s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::StringStamped :md5sum-) "5e3e46086181199270f1ac3a28a5977f")
(setf (get robotnik_msgs::StringStamped :datatype-) "robotnik_msgs/StringStamped")
(setf (get robotnik_msgs::StringStamped :definition-)
      "Header header
string string

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

")



(provide :robotnik_msgs/StringStamped "5e3e46086181199270f1ac3a28a5977f")


