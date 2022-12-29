;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::ack_alarm)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'ack_alarm (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ACK_ALARM")
  (make-package "ROBOTNIK_MSGS::ACK_ALARM"))
(unless (find-package "ROBOTNIK_MSGS::ACK_ALARMREQUEST")
  (make-package "ROBOTNIK_MSGS::ACK_ALARMREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::ACK_ALARMRESPONSE")
  (make-package "ROBOTNIK_MSGS::ACK_ALARMRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::ack_alarmRequest
  :super ros::object
  :slots (_type _group ))

(defmethod robotnik_msgs::ack_alarmRequest
  (:init
   (&key
    ((:type __type) "")
    ((:group __group) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _group (string __group))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _group
    4 (length _group)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::ack_alarmResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::ack_alarmResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::ack_alarm
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::ack_alarm :md5sum-) "5691e91cfff5344662d430d7da60497e")
(setf (get robotnik_msgs::ack_alarm :datatype-) "robotnik_msgs/ack_alarm")
(setf (get robotnik_msgs::ack_alarm :request) robotnik_msgs::ack_alarmRequest)
(setf (get robotnik_msgs::ack_alarm :response) robotnik_msgs::ack_alarmResponse)

(defmethod robotnik_msgs::ack_alarmRequest
  (:response () (instance robotnik_msgs::ack_alarmResponse :init)))

(setf (get robotnik_msgs::ack_alarmRequest :md5sum-) "5691e91cfff5344662d430d7da60497e")
(setf (get robotnik_msgs::ack_alarmRequest :datatype-) "robotnik_msgs/ack_alarmRequest")
(setf (get robotnik_msgs::ack_alarmRequest :definition-)
      "string type
string group
---
bool ret 

")

(setf (get robotnik_msgs::ack_alarmResponse :md5sum-) "5691e91cfff5344662d430d7da60497e")
(setf (get robotnik_msgs::ack_alarmResponse :datatype-) "robotnik_msgs/ack_alarmResponse")
(setf (get robotnik_msgs::ack_alarmResponse :definition-)
      "string type
string group
---
bool ret 

")



(provide :robotnik_msgs/ack_alarm "5691e91cfff5344662d430d7da60497e")


