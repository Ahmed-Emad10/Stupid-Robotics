;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetMotorMode)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetMotorMode (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORMODE")
  (make-package "ROBOTNIK_MSGS::SETMOTORMODE"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORMODEREQUEST")
  (make-package "ROBOTNIK_MSGS::SETMOTORMODEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORMODERESPONSE")
  (make-package "ROBOTNIK_MSGS::SETMOTORMODERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetMotorModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod robotnik_msgs::SetMotorModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::SetMotorModeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_msgs::SetMotorModeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::SetMotorMode
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetMotorMode :md5sum-) "1393b8f659688f5f0d86f35948597ef1")
(setf (get robotnik_msgs::SetMotorMode :datatype-) "robotnik_msgs/SetMotorMode")
(setf (get robotnik_msgs::SetMotorMode :request) robotnik_msgs::SetMotorModeRequest)
(setf (get robotnik_msgs::SetMotorMode :response) robotnik_msgs::SetMotorModeResponse)

(defmethod robotnik_msgs::SetMotorModeRequest
  (:response () (instance robotnik_msgs::SetMotorModeResponse :init)))

(setf (get robotnik_msgs::SetMotorModeRequest :md5sum-) "1393b8f659688f5f0d86f35948597ef1")
(setf (get robotnik_msgs::SetMotorModeRequest :datatype-) "robotnik_msgs/SetMotorModeRequest")
(setf (get robotnik_msgs::SetMotorModeRequest :definition-)
      "string mode
---
bool success
string message

")

(setf (get robotnik_msgs::SetMotorModeResponse :md5sum-) "1393b8f659688f5f0d86f35948597ef1")
(setf (get robotnik_msgs::SetMotorModeResponse :datatype-) "robotnik_msgs/SetMotorModeResponse")
(setf (get robotnik_msgs::SetMotorModeResponse :definition-)
      "string mode
---
bool success
string message

")



(provide :robotnik_msgs/SetMotorMode "1393b8f659688f5f0d86f35948597ef1")


