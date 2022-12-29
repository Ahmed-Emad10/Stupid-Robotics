;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::PresenceSensor)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'PresenceSensor (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::PRESENCESENSOR")
  (make-package "ROBOTNIK_MSGS::PRESENCESENSOR"))

(in-package "ROS")
;;//! \htmlinclude PresenceSensor.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CAMERA*" (find-package "ROBOTNIK_MSGS::PRESENCESENSOR"))
(shadow '*CAMERA* (find-package "ROBOTNIK_MSGS::PRESENCESENSOR"))
(defconstant robotnik_msgs::PresenceSensor::*CAMERA* "camera")
(intern "*PHOTOCELL*" (find-package "ROBOTNIK_MSGS::PRESENCESENSOR"))
(shadow '*PHOTOCELL* (find-package "ROBOTNIK_MSGS::PRESENCESENSOR"))
(defconstant robotnik_msgs::PresenceSensor::*PHOTOCELL* "photocell")

(defun robotnik_msgs::PresenceSensor-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::PresenceSensor
  :super ros::object
  :slots (_header _pose _sensor_id _sensor_type _detected_id _zone _enabled _value ))

(defmethod robotnik_msgs::PresenceSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:sensor_id __sensor_id) "")
    ((:sensor_type __sensor_type) "")
    ((:detected_id __detected_id) "")
    ((:zone __zone) "")
    ((:enabled __enabled) nil)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _sensor_id (string __sensor_id))
   (setq _sensor_type (string __sensor_type))
   (setq _detected_id (string __detected_id))
   (setq _zone (string __zone))
   (setq _enabled __enabled)
   (setq _value __value)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:sensor_id
   (&optional __sensor_id)
   (if __sensor_id (setq _sensor_id __sensor_id)) _sensor_id)
  (:sensor_type
   (&optional __sensor_type)
   (if __sensor_type (setq _sensor_type __sensor_type)) _sensor_type)
  (:detected_id
   (&optional __detected_id)
   (if __detected_id (setq _detected_id __detected_id)) _detected_id)
  (:zone
   (&optional __zone)
   (if __zone (setq _zone __zone)) _zone)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _sensor_id
    4 (length _sensor_id)
    ;; string _sensor_type
    4 (length _sensor_type)
    ;; string _detected_id
    4 (length _detected_id)
    ;; string _zone
    4 (length _zone)
    ;; bool _enabled
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _sensor_id
       (write-long (length _sensor_id) s) (princ _sensor_id s)
     ;; string _sensor_type
       (write-long (length _sensor_type) s) (princ _sensor_type s)
     ;; string _detected_id
       (write-long (length _detected_id) s) (princ _detected_id s)
     ;; string _zone
       (write-long (length _zone) s) (princ _zone s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _sensor_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _sensor_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detected_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detected_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _zone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _zone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotnik_msgs::PresenceSensor :md5sum-) "d655196d2d8c595af378ef8e462eca4a")
(setf (get robotnik_msgs::PresenceSensor :datatype-) "robotnik_msgs/PresenceSensor")
(setf (get robotnik_msgs::PresenceSensor :definition-)
      "string CAMERA=camera
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



(provide :robotnik_msgs/PresenceSensor "d655196d2d8c595af378ef8e462eca4a")


