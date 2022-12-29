;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_float_value)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_float_value (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_FLOAT_VALUE")
  (make-package "ROBOTNIK_MSGS::SET_FLOAT_VALUE"))
(unless (find-package "ROBOTNIK_MSGS::SET_FLOAT_VALUEREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_FLOAT_VALUEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_FLOAT_VALUERESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_FLOAT_VALUERESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::set_float_valueRequest
  :super ros::object
  :slots (_value ))

(defmethod robotnik_msgs::set_float_valueRequest
  (:init
   (&key
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::set_float_valueResponse
  :super ros::object
  :slots (_ret _errorMessage ))

(defmethod robotnik_msgs::set_float_valueResponse
  (:init
   (&key
    ((:ret __ret) nil)
    ((:errorMessage __errorMessage) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _ret __ret)
   (setq _errorMessage __errorMessage)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:errorMessage
   (&rest __errorMessage)
   (if (keywordp (car __errorMessage))
       (send* _errorMessage __errorMessage)
     (progn
       (if __errorMessage (setq _errorMessage (car __errorMessage)))
       _errorMessage)))
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ;; std_msgs/String _errorMessage
    (send _errorMessage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/String _errorMessage
       (send _errorMessage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/String _errorMessage
     (send _errorMessage :deserialize buf ptr-) (incf ptr- (send _errorMessage :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::set_float_value
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_float_value :md5sum-) "1040fd23868f733b1106a6a6948ae41b")
(setf (get robotnik_msgs::set_float_value :datatype-) "robotnik_msgs/set_float_value")
(setf (get robotnik_msgs::set_float_value :request) robotnik_msgs::set_float_valueRequest)
(setf (get robotnik_msgs::set_float_value :response) robotnik_msgs::set_float_valueResponse)

(defmethod robotnik_msgs::set_float_valueRequest
  (:response () (instance robotnik_msgs::set_float_valueResponse :init)))

(setf (get robotnik_msgs::set_float_valueRequest :md5sum-) "1040fd23868f733b1106a6a6948ae41b")
(setf (get robotnik_msgs::set_float_valueRequest :datatype-) "robotnik_msgs/set_float_valueRequest")
(setf (get robotnik_msgs::set_float_valueRequest :definition-)
      "float32 value
---
bool ret
std_msgs/String errorMessage


================================================================================
MSG: std_msgs/String
string data
")

(setf (get robotnik_msgs::set_float_valueResponse :md5sum-) "1040fd23868f733b1106a6a6948ae41b")
(setf (get robotnik_msgs::set_float_valueResponse :datatype-) "robotnik_msgs/set_float_valueResponse")
(setf (get robotnik_msgs::set_float_valueResponse :definition-)
      "float32 value
---
bool ret
std_msgs/String errorMessage


================================================================================
MSG: std_msgs/String
string data
")



(provide :robotnik_msgs/set_float_value "1040fd23868f733b1106a6a6948ae41b")


