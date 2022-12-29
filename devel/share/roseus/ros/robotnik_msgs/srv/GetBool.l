;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::GetBool)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'GetBool (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GETBOOL")
  (make-package "ROBOTNIK_MSGS::GETBOOL"))
(unless (find-package "ROBOTNIK_MSGS::GETBOOLREQUEST")
  (make-package "ROBOTNIK_MSGS::GETBOOLREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GETBOOLRESPONSE")
  (make-package "ROBOTNIK_MSGS::GETBOOLRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::GetBoolRequest
  :super ros::object
  :slots ())

(defmethod robotnik_msgs::GetBoolRequest
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

(defclass robotnik_msgs::GetBoolResponse
  :super ros::object
  :slots (_data _success _message ))

(defmethod robotnik_msgs::GetBoolResponse
  (:init
   (&key
    ((:data __data) nil)
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _data __data)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:data
   (&optional (__data :null))
   (if (not (eq __data :null)) (setq _data __data)) _data)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _data
    1
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _data
       (if _data (write-byte -1 s) (write-byte 0 s))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _data
     (setq _data (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::GetBool
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::GetBool :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get robotnik_msgs::GetBool :datatype-) "robotnik_msgs/GetBool")
(setf (get robotnik_msgs::GetBool :request) robotnik_msgs::GetBoolRequest)
(setf (get robotnik_msgs::GetBool :response) robotnik_msgs::GetBoolResponse)

(defmethod robotnik_msgs::GetBoolRequest
  (:response () (instance robotnik_msgs::GetBoolResponse :init)))

(setf (get robotnik_msgs::GetBoolRequest :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get robotnik_msgs::GetBoolRequest :datatype-) "robotnik_msgs/GetBoolRequest")
(setf (get robotnik_msgs::GetBoolRequest :definition-)
      "---
bool data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")

(setf (get robotnik_msgs::GetBoolResponse :md5sum-) "43f76a855b16e988566e147b692f2fab")
(setf (get robotnik_msgs::GetBoolResponse :datatype-) "robotnik_msgs/GetBoolResponse")
(setf (get robotnik_msgs::GetBoolResponse :definition-)
      "---
bool data
bool success   # indicate successful run of triggered service
string message # informational, e.g. for error messages

")



(provide :robotnik_msgs/GetBool "43f76a855b16e988566e147b692f2fab")


