;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetByte)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetByte (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETBYTE")
  (make-package "ROBOTNIK_MSGS::SETBYTE"))
(unless (find-package "ROBOTNIK_MSGS::SETBYTEREQUEST")
  (make-package "ROBOTNIK_MSGS::SETBYTEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETBYTERESPONSE")
  (make-package "ROBOTNIK_MSGS::SETBYTERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetByteRequest
  :super ros::object
  :slots (_value ))

(defmethod robotnik_msgs::SetByteRequest
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; byte _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _value 127) (setq _value (- _value 256)))
   ;;
   self)
  )

(defclass robotnik_msgs::SetByteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotnik_msgs::SetByteResponse
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

(defclass robotnik_msgs::SetByte
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetByte :md5sum-) "cb2fe72c5204ad899462b90ec1ebb6ff")
(setf (get robotnik_msgs::SetByte :datatype-) "robotnik_msgs/SetByte")
(setf (get robotnik_msgs::SetByte :request) robotnik_msgs::SetByteRequest)
(setf (get robotnik_msgs::SetByte :response) robotnik_msgs::SetByteResponse)

(defmethod robotnik_msgs::SetByteRequest
  (:response () (instance robotnik_msgs::SetByteResponse :init)))

(setf (get robotnik_msgs::SetByteRequest :md5sum-) "cb2fe72c5204ad899462b90ec1ebb6ff")
(setf (get robotnik_msgs::SetByteRequest :datatype-) "robotnik_msgs/SetByteRequest")
(setf (get robotnik_msgs::SetByteRequest :definition-)
      "byte value
---
bool success
string message

")

(setf (get robotnik_msgs::SetByteResponse :md5sum-) "cb2fe72c5204ad899462b90ec1ebb6ff")
(setf (get robotnik_msgs::SetByteResponse :datatype-) "robotnik_msgs/SetByteResponse")
(setf (get robotnik_msgs::SetByteResponse :definition-)
      "byte value
---
bool success
string message

")



(provide :robotnik_msgs/SetByte "cb2fe72c5204ad899462b90ec1ebb6ff")


