;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::get_alarms)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'get_alarms (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GET_ALARMS")
  (make-package "ROBOTNIK_MSGS::GET_ALARMS"))
(unless (find-package "ROBOTNIK_MSGS::GET_ALARMSREQUEST")
  (make-package "ROBOTNIK_MSGS::GET_ALARMSREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GET_ALARMSRESPONSE")
  (make-package "ROBOTNIK_MSGS::GET_ALARMSRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::get_alarmsRequest
  :super ros::object
  :slots ())

(defmethod robotnik_msgs::get_alarmsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robotnik_msgs::get_alarmsResponse
  :super ros::object
  :slots (_alarms ))

(defmethod robotnik_msgs::get_alarmsResponse
  (:init
   (&key
    ((:alarms __alarms) (instance robotnik_msgs::alarmsmonitor :init))
    )
   (send-super :init)
   (setq _alarms __alarms)
   self)
  (:alarms
   (&rest __alarms)
   (if (keywordp (car __alarms))
       (send* _alarms __alarms)
     (progn
       (if __alarms (setq _alarms (car __alarms)))
       _alarms)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/alarmsmonitor _alarms
    (send _alarms :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/alarmsmonitor _alarms
       (send _alarms :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/alarmsmonitor _alarms
     (send _alarms :deserialize buf ptr-) (incf ptr- (send _alarms :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::get_alarms
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::get_alarms :md5sum-) "4550354b6bec7529a93833858063eaed")
(setf (get robotnik_msgs::get_alarms :datatype-) "robotnik_msgs/get_alarms")
(setf (get robotnik_msgs::get_alarms :request) robotnik_msgs::get_alarmsRequest)
(setf (get robotnik_msgs::get_alarms :response) robotnik_msgs::get_alarmsResponse)

(defmethod robotnik_msgs::get_alarmsRequest
  (:response () (instance robotnik_msgs::get_alarmsResponse :init)))

(setf (get robotnik_msgs::get_alarmsRequest :md5sum-) "4550354b6bec7529a93833858063eaed")
(setf (get robotnik_msgs::get_alarmsRequest :datatype-) "robotnik_msgs/get_alarmsRequest")
(setf (get robotnik_msgs::get_alarmsRequest :definition-)
      "
---
alarmsmonitor alarms


================================================================================
MSG: robotnik_msgs/alarmsmonitor
alarmmonitor[] alarms

================================================================================
MSG: robotnik_msgs/alarmmonitor
# type: error, warning, event
string type
# displaing number for monitoring
int32 display
# component
string component
# To be shown in HMI
bool hmi
# group: alarm group all alarms of same group will be reset at same time
string group
# text: more explained information about alarm, should include group, time, conditions, etc
string text
# seconds active
uint64 seconds_active
")

(setf (get robotnik_msgs::get_alarmsResponse :md5sum-) "4550354b6bec7529a93833858063eaed")
(setf (get robotnik_msgs::get_alarmsResponse :datatype-) "robotnik_msgs/get_alarmsResponse")
(setf (get robotnik_msgs::get_alarmsResponse :definition-)
      "
---
alarmsmonitor alarms


================================================================================
MSG: robotnik_msgs/alarmsmonitor
alarmmonitor[] alarms

================================================================================
MSG: robotnik_msgs/alarmmonitor
# type: error, warning, event
string type
# displaing number for monitoring
int32 display
# component
string component
# To be shown in HMI
bool hmi
# group: alarm group all alarms of same group will be reset at same time
string group
# text: more explained information about alarm, should include group, time, conditions, etc
string text
# seconds active
uint64 seconds_active
")



(provide :robotnik_msgs/get_alarms "4550354b6bec7529a93833858063eaed")


