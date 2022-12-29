;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Alarms)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Alarms (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ALARMS")
  (make-package "ROBOTNIK_MSGS::ALARMS"))

(in-package "ROS")
;;//! \htmlinclude Alarms.msg.html


(defclass robotnik_msgs::Alarms
  :super ros::object
  :slots (_alarms ))

(defmethod robotnik_msgs::Alarms
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
    ;; robotnik_msgs/AlarmSensor[] _alarms
    (apply #'+ (send-all _alarms :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/AlarmSensor[] _alarms
     (write-long (length _alarms) s)
     (dolist (elem _alarms)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/AlarmSensor[] _alarms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alarms (let (r) (dotimes (i n) (push (instance robotnik_msgs::AlarmSensor :init) r)) r))
     (dolist (elem- _alarms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::Alarms :md5sum-) "83113d787282f31e7cff7eb72a2096c0")
(setf (get robotnik_msgs::Alarms :datatype-) "robotnik_msgs/Alarms")
(setf (get robotnik_msgs::Alarms :definition-)
      "AlarmSensor[] alarms

================================================================================
MSG: robotnik_msgs/AlarmSensor
int8 id
string description
string message


")



(provide :robotnik_msgs/Alarms "83113d787282f31e7cff7eb72a2096c0")


