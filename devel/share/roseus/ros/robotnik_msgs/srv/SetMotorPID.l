;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetMotorPID)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetMotorPID (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORPID")
  (make-package "ROBOTNIK_MSGS::SETMOTORPID"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORPIDREQUEST")
  (make-package "ROBOTNIK_MSGS::SETMOTORPIDREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORPIDRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETMOTORPIDRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetMotorPIDRequest
  :super ros::object
  :slots (_pid ))

(defmethod robotnik_msgs::SetMotorPIDRequest
  (:init
   (&key
    ((:pid __pid) (instance robotnik_msgs::MotorPID :init))
    )
   (send-super :init)
   (setq _pid __pid)
   self)
  (:pid
   (&rest __pid)
   (if (keywordp (car __pid))
       (send* _pid __pid)
     (progn
       (if __pid (setq _pid (car __pid)))
       _pid)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorPID _pid
    (send _pid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorPID _pid
       (send _pid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorPID _pid
     (send _pid :deserialize buf ptr-) (incf ptr- (send _pid :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetMotorPIDResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_msgs::SetMotorPIDResponse
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

(defclass robotnik_msgs::SetMotorPID
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetMotorPID :md5sum-) "b471f23ed4110be72a67eb0fa77abae1")
(setf (get robotnik_msgs::SetMotorPID :datatype-) "robotnik_msgs/SetMotorPID")
(setf (get robotnik_msgs::SetMotorPID :request) robotnik_msgs::SetMotorPIDRequest)
(setf (get robotnik_msgs::SetMotorPID :response) robotnik_msgs::SetMotorPIDResponse)

(defmethod robotnik_msgs::SetMotorPIDRequest
  (:response () (instance robotnik_msgs::SetMotorPIDResponse :init)))

(setf (get robotnik_msgs::SetMotorPIDRequest :md5sum-) "b471f23ed4110be72a67eb0fa77abae1")
(setf (get robotnik_msgs::SetMotorPIDRequest :datatype-) "robotnik_msgs/SetMotorPIDRequest")
(setf (get robotnik_msgs::SetMotorPIDRequest :definition-)
      "MotorPID pid

================================================================================
MSG: robotnik_msgs/MotorPID
# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] kp
float32[] ki
float32[] kd
---
bool success
string message

")

(setf (get robotnik_msgs::SetMotorPIDResponse :md5sum-) "b471f23ed4110be72a67eb0fa77abae1")
(setf (get robotnik_msgs::SetMotorPIDResponse :datatype-) "robotnik_msgs/SetMotorPIDResponse")
(setf (get robotnik_msgs::SetMotorPIDResponse :definition-)
      "MotorPID pid

================================================================================
MSG: robotnik_msgs/MotorPID
# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] kp
float32[] ki
float32[] kd
---
bool success
string message

")



(provide :robotnik_msgs/SetMotorPID "b471f23ed4110be72a67eb0fa77abae1")


