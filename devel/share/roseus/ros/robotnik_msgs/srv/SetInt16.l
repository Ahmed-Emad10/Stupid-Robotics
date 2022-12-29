;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetInt16)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetInt16 (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETINT16")
  (make-package "ROBOTNIK_MSGS::SETINT16"))
(unless (find-package "ROBOTNIK_MSGS::SETINT16REQUEST")
  (make-package "ROBOTNIK_MSGS::SETINT16REQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETINT16RESPONSE")
  (make-package "ROBOTNIK_MSGS::SETINT16RESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass robotnik_msgs::SetInt16Request
  :super ros::object
  :slots (_data ))

(defmethod robotnik_msgs::SetInt16Request
  (:init
   (&key
    ((:data __data) (instance std_msgs::Int16 :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int16 _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int16 _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int16 _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetInt16Response
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetInt16Response
  (:init
   (&key
    ((:ret __ret) (instance robotnik_msgs::ReturnMessage :init))
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&rest __ret)
   (if (keywordp (car __ret))
       (send* _ret __ret)
     (progn
       (if __ret (setq _ret (car __ret)))
       _ret)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/ReturnMessage _ret
    (send _ret :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/ReturnMessage _ret
       (send _ret :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/ReturnMessage _ret
     (send _ret :deserialize buf ptr-) (incf ptr- (send _ret :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetInt16
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetInt16 :md5sum-) "8f054c32edfcf21f89433b2b24f041c9")
(setf (get robotnik_msgs::SetInt16 :datatype-) "robotnik_msgs/SetInt16")
(setf (get robotnik_msgs::SetInt16 :request) robotnik_msgs::SetInt16Request)
(setf (get robotnik_msgs::SetInt16 :response) robotnik_msgs::SetInt16Response)

(defmethod robotnik_msgs::SetInt16Request
  (:response () (instance robotnik_msgs::SetInt16Response :init)))

(setf (get robotnik_msgs::SetInt16Request :md5sum-) "8f054c32edfcf21f89433b2b24f041c9")
(setf (get robotnik_msgs::SetInt16Request :datatype-) "robotnik_msgs/SetInt16Request")
(setf (get robotnik_msgs::SetInt16Request :definition-)
      "std_msgs/Int16 data

================================================================================
MSG: std_msgs/Int16
int16 data
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")

(setf (get robotnik_msgs::SetInt16Response :md5sum-) "8f054c32edfcf21f89433b2b24f041c9")
(setf (get robotnik_msgs::SetInt16Response :datatype-) "robotnik_msgs/SetInt16Response")
(setf (get robotnik_msgs::SetInt16Response :definition-)
      "std_msgs/Int16 data

================================================================================
MSG: std_msgs/Int16
int16 data
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")



(provide :robotnik_msgs/SetInt16 "8f054c32edfcf21f89433b2b24f041c9")


