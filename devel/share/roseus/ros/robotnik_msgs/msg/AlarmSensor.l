;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::AlarmSensor)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'AlarmSensor (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ALARMSENSOR")
  (make-package "ROBOTNIK_MSGS::ALARMSENSOR"))

(in-package "ROS")
;;//! \htmlinclude AlarmSensor.msg.html


(defclass robotnik_msgs::AlarmSensor
  :super ros::object
  :slots (_id _description _message ))

(defmethod robotnik_msgs::AlarmSensor
  (:init
   (&key
    ((:id __id) 0)
    ((:description __description) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _description (string __description))
   (setq _message (string __message))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int8 _id
    1
    ;; string _description
    4 (length _description)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _id
       (write-byte _id s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::AlarmSensor :md5sum-) "5dae51bccfcc658f2dc0fff5ec79cb7a")
(setf (get robotnik_msgs::AlarmSensor :datatype-) "robotnik_msgs/AlarmSensor")
(setf (get robotnik_msgs::AlarmSensor :definition-)
      "int8 id
string description
string message


")



(provide :robotnik_msgs/AlarmSensor "5dae51bccfcc658f2dc0fff5ec79cb7a")


