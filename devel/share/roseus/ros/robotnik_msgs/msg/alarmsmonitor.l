;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::alarmsmonitor)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'alarmsmonitor (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ALARMSMONITOR")
  (make-package "ROBOTNIK_MSGS::ALARMSMONITOR"))

(in-package "ROS")
;;//! \htmlinclude alarmsmonitor.msg.html


(defclass robotnik_msgs::alarmsmonitor
  :super ros::object
  :slots (_alarms ))

(defmethod robotnik_msgs::alarmsmonitor
  (:init
   (&key
    ((:alarms __alarms) ())
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
    ;; robotnik_msgs/alarmmonitor[] _alarms
    (apply #'+ (send-all _alarms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/alarmmonitor[] _alarms
     (write-long (length _alarms) s)
     (dolist (elem _alarms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/alarmmonitor[] _alarms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alarms (let (r) (dotimes (i n) (push (instance robotnik_msgs::alarmmonitor :init) r)) r))
     (dolist (elem- _alarms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::alarmsmonitor :md5sum-) "e686c3a2b0932118650b57e91f9eee9a")
(setf (get robotnik_msgs::alarmsmonitor :datatype-) "robotnik_msgs/alarmsmonitor")
(setf (get robotnik_msgs::alarmsmonitor :definition-)
      "alarmmonitor[] alarms

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



(provide :robotnik_msgs/alarmsmonitor "e686c3a2b0932118650b57e91f9eee9a")


