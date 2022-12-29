;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::PresenceSensorArray)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'PresenceSensorArray (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::PRESENCESENSORARRAY")
  (make-package "ROBOTNIK_MSGS::PRESENCESENSORARRAY"))

(in-package "ROS")
;;//! \htmlinclude PresenceSensorArray.msg.html


(defclass robotnik_msgs::PresenceSensorArray
  :super ros::object
  :slots (_sensors ))

(defmethod robotnik_msgs::PresenceSensorArray
  (:init
   (&key
    ((:sensors __sensors) ())
    )
   (send-super :init)
   (setq _sensors __sensors)
   self)
  (:sensors
   (&rest __sensors)
   (if (keywordp (car __sensors))
       (send* _sensors __sensors)
     (progn
       (if __sensors (setq _sensors (car __sensors)))
       _sensors)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/PresenceSensor[] _sensors
    (apply #'+ (send-all _sensors :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/PresenceSensor[] _sensors
     (write-long (length _sensors) s)
     (dolist (elem _sensors)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/PresenceSensor[] _sensors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sensors (let (r) (dotimes (i n) (push (instance robotnik_msgs::PresenceSensor :init) r)) r))
     (dolist (elem- _sensors)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::PresenceSensorArray :md5sum-) "eb0dd527b36bdf6dd7986227d34224a6")
(setf (get robotnik_msgs::PresenceSensorArray :datatype-) "robotnik_msgs/PresenceSensorArray")
(setf (get robotnik_msgs::PresenceSensorArray :definition-)
      "robotnik_msgs/PresenceSensor[] sensors
================================================================================
MSG: robotnik_msgs/PresenceSensor
string CAMERA=camera
string PHOTOCELL=photocell

Header header
geometry_msgs/Pose pose
string sensor_id # Which sensor is detecting the object (which camera or which photocell)
string sensor_type # camera or photocell
string detected_id # if QR is being detected, in photocell would be void
string zone 
bool enabled # Determines if the sensor is on or off 
bool value # Determines whether the sensor is detecting the object

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



(provide :robotnik_msgs/PresenceSensorArray "eb0dd527b36bdf6dd7986227d34224a6")


