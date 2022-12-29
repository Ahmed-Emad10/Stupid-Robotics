;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::enable_disable)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'enable_disable (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ENABLE_DISABLE")
  (make-package "ROBOTNIK_MSGS::ENABLE_DISABLE"))
(unless (find-package "ROBOTNIK_MSGS::ENABLE_DISABLEREQUEST")
  (make-package "ROBOTNIK_MSGS::ENABLE_DISABLEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::ENABLE_DISABLERESPONSE")
  (make-package "ROBOTNIK_MSGS::ENABLE_DISABLERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::enable_disableRequest
  :super ros::object
  :slots (_value ))

(defmethod robotnik_msgs::enable_disableRequest
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::enable_disableResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::enable_disableResponse
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

(defclass robotnik_msgs::enable_disable
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::enable_disable :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get robotnik_msgs::enable_disable :datatype-) "robotnik_msgs/enable_disable")
(setf (get robotnik_msgs::enable_disable :request) robotnik_msgs::enable_disableRequest)
(setf (get robotnik_msgs::enable_disable :response) robotnik_msgs::enable_disableResponse)

(defmethod robotnik_msgs::enable_disableRequest
  (:response () (instance robotnik_msgs::enable_disableResponse :init)))

(setf (get robotnik_msgs::enable_disableRequest :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get robotnik_msgs::enable_disableRequest :datatype-) "robotnik_msgs/enable_disableRequest")
(setf (get robotnik_msgs::enable_disableRequest :definition-)
      "bool value
---
bool ret 

")

(setf (get robotnik_msgs::enable_disableResponse :md5sum-) "44aff93ccf05e13b2ec5d62303a837a2")
(setf (get robotnik_msgs::enable_disableResponse :datatype-) "robotnik_msgs/enable_disableResponse")
(setf (get robotnik_msgs::enable_disableResponse :definition-)
      "bool value
---
bool ret 

")



(provide :robotnik_msgs/enable_disable "44aff93ccf05e13b2ec5d62303a837a2")


