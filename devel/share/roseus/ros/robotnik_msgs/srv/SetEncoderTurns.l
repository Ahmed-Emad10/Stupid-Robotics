;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetEncoderTurns)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetEncoderTurns (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETENCODERTURNS")
  (make-package "ROBOTNIK_MSGS::SETENCODERTURNS"))
(unless (find-package "ROBOTNIK_MSGS::SETENCODERTURNSREQUEST")
  (make-package "ROBOTNIK_MSGS::SETENCODERTURNSREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETENCODERTURNSRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETENCODERTURNSRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetEncoderTurnsRequest
  :super ros::object
  :slots (_encoder_turns ))

(defmethod robotnik_msgs::SetEncoderTurnsRequest
  (:init
   (&key
    ((:encoder_turns __encoder_turns) (instance robotnik_msgs::MotorHeadingOffset :init))
    )
   (send-super :init)
   (setq _encoder_turns __encoder_turns)
   self)
  (:encoder_turns
   (&rest __encoder_turns)
   (if (keywordp (car __encoder_turns))
       (send* _encoder_turns __encoder_turns)
     (progn
       (if __encoder_turns (setq _encoder_turns (car __encoder_turns)))
       _encoder_turns)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorHeadingOffset _encoder_turns
    (send _encoder_turns :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorHeadingOffset _encoder_turns
       (send _encoder_turns :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorHeadingOffset _encoder_turns
     (send _encoder_turns :deserialize buf ptr-) (incf ptr- (send _encoder_turns :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetEncoderTurnsResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_msgs::SetEncoderTurnsResponse
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

(defclass robotnik_msgs::SetEncoderTurns
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetEncoderTurns :md5sum-) "75098e1521736fbeb9e5afbd06f20712")
(setf (get robotnik_msgs::SetEncoderTurns :datatype-) "robotnik_msgs/SetEncoderTurns")
(setf (get robotnik_msgs::SetEncoderTurns :request) robotnik_msgs::SetEncoderTurnsRequest)
(setf (get robotnik_msgs::SetEncoderTurns :response) robotnik_msgs::SetEncoderTurnsResponse)

(defmethod robotnik_msgs::SetEncoderTurnsRequest
  (:response () (instance robotnik_msgs::SetEncoderTurnsResponse :init)))

(setf (get robotnik_msgs::SetEncoderTurnsRequest :md5sum-) "75098e1521736fbeb9e5afbd06f20712")
(setf (get robotnik_msgs::SetEncoderTurnsRequest :datatype-) "robotnik_msgs/SetEncoderTurnsRequest")
(setf (get robotnik_msgs::SetEncoderTurnsRequest :definition-)
      "robotnik_msgs/MotorHeadingOffset encoder_turns

================================================================================
MSG: robotnik_msgs/MotorHeadingOffset
int32 motor
float64 value
---
bool success 
string message

")

(setf (get robotnik_msgs::SetEncoderTurnsResponse :md5sum-) "75098e1521736fbeb9e5afbd06f20712")
(setf (get robotnik_msgs::SetEncoderTurnsResponse :datatype-) "robotnik_msgs/SetEncoderTurnsResponse")
(setf (get robotnik_msgs::SetEncoderTurnsResponse :definition-)
      "robotnik_msgs/MotorHeadingOffset encoder_turns

================================================================================
MSG: robotnik_msgs/MotorHeadingOffset
int32 motor
float64 value
---
bool success 
string message

")



(provide :robotnik_msgs/SetEncoderTurns "75098e1521736fbeb9e5afbd06f20712")


