;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::home)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'home (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::HOME")
  (make-package "ROBOTNIK_MSGS::HOME"))
(unless (find-package "ROBOTNIK_MSGS::HOMEREQUEST")
  (make-package "ROBOTNIK_MSGS::HOMEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::HOMERESPONSE")
  (make-package "ROBOTNIK_MSGS::HOMERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::homeRequest
  :super ros::object
  :slots (_request ))

(defmethod robotnik_msgs::homeRequest
  (:init
   (&key
    ((:request __request) nil)
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&optional (__request :null))
   (if (not (eq __request :null)) (setq _request __request)) _request)
  (:serialization-length
   ()
   (+
    ;; bool _request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _request
       (if _request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _request
     (setq _request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::homeResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::homeResponse
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

(defclass robotnik_msgs::home
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::home :md5sum-) "be1cffdc9b615c7812c8c2b842784922")
(setf (get robotnik_msgs::home :datatype-) "robotnik_msgs/home")
(setf (get robotnik_msgs::home :request) robotnik_msgs::homeRequest)
(setf (get robotnik_msgs::home :response) robotnik_msgs::homeResponse)

(defmethod robotnik_msgs::homeRequest
  (:response () (instance robotnik_msgs::homeResponse :init)))

(setf (get robotnik_msgs::homeRequest :md5sum-) "be1cffdc9b615c7812c8c2b842784922")
(setf (get robotnik_msgs::homeRequest :datatype-) "robotnik_msgs/homeRequest")
(setf (get robotnik_msgs::homeRequest :definition-)
      "# Do home request
bool request
---
bool ret

")

(setf (get robotnik_msgs::homeResponse :md5sum-) "be1cffdc9b615c7812c8c2b842784922")
(setf (get robotnik_msgs::homeResponse :datatype-) "robotnik_msgs/homeResponse")
(setf (get robotnik_msgs::homeResponse :definition-)
      "# Do home request
bool request
---
bool ret

")



(provide :robotnik_msgs/home "be1cffdc9b615c7812c8c2b842784922")


