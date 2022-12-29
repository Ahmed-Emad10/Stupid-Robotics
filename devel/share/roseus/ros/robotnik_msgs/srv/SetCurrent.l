;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetCurrent)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetCurrent (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETCURRENT")
  (make-package "ROBOTNIK_MSGS::SETCURRENT"))
(unless (find-package "ROBOTNIK_MSGS::SETCURRENTREQUEST")
  (make-package "ROBOTNIK_MSGS::SETCURRENTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETCURRENTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETCURRENTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetCurrentRequest
  :super ros::object
  :slots (_current ))

(defmethod robotnik_msgs::SetCurrentRequest
  (:init
   (&key
    ((:current __current) (instance robotnik_msgs::MotorCurrent :init))
    )
   (send-super :init)
   (setq _current __current)
   self)
  (:current
   (&rest __current)
   (if (keywordp (car __current))
       (send* _current __current)
     (progn
       (if __current (setq _current (car __current)))
       _current)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorCurrent _current
    (send _current :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorCurrent _current
       (send _current :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorCurrent _current
     (send _current :deserialize buf ptr-) (incf ptr- (send _current :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetCurrentResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_msgs::SetCurrentResponse
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

(defclass robotnik_msgs::SetCurrent
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetCurrent :md5sum-) "220c889cf443b9b34fafe3d24798e477")
(setf (get robotnik_msgs::SetCurrent :datatype-) "robotnik_msgs/SetCurrent")
(setf (get robotnik_msgs::SetCurrent :request) robotnik_msgs::SetCurrentRequest)
(setf (get robotnik_msgs::SetCurrent :response) robotnik_msgs::SetCurrentResponse)

(defmethod robotnik_msgs::SetCurrentRequest
  (:response () (instance robotnik_msgs::SetCurrentResponse :init)))

(setf (get robotnik_msgs::SetCurrentRequest :md5sum-) "220c889cf443b9b34fafe3d24798e477")
(setf (get robotnik_msgs::SetCurrentRequest :datatype-) "robotnik_msgs/SetCurrentRequest")
(setf (get robotnik_msgs::SetCurrentRequest :definition-)
      "MotorCurrent current

================================================================================
MSG: robotnik_msgs/MotorCurrent
# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] continuous_current_limit # Amperes
float32[] current_peak_time # Seconds
---
bool success
string message
")

(setf (get robotnik_msgs::SetCurrentResponse :md5sum-) "220c889cf443b9b34fafe3d24798e477")
(setf (get robotnik_msgs::SetCurrentResponse :datatype-) "robotnik_msgs/SetCurrentResponse")
(setf (get robotnik_msgs::SetCurrentResponse :definition-)
      "MotorCurrent current

================================================================================
MSG: robotnik_msgs/MotorCurrent
# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] continuous_current_limit # Amperes
float32[] current_peak_time # Seconds
---
bool success
string message
")



(provide :robotnik_msgs/SetCurrent "220c889cf443b9b34fafe3d24798e477")


