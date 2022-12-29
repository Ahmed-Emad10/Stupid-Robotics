;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_odometry)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_odometry (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_ODOMETRY")
  (make-package "ROBOTNIK_MSGS::SET_ODOMETRY"))
(unless (find-package "ROBOTNIK_MSGS::SET_ODOMETRYREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_ODOMETRYREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_ODOMETRYRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_ODOMETRYRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_odometryRequest
  :super ros::object
  :slots (_x _y _z _orientation ))

(defmethod robotnik_msgs::set_odometryRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:orientation __orientation) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _orientation (float __orientation))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:orientation
   (&optional __orientation)
   (if __orientation (setq _orientation __orientation)) _orientation)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _orientation
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _orientation
       (sys::poke _orientation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _orientation
     (setq _orientation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::set_odometryResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_odometryResponse
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

(defclass robotnik_msgs::set_odometry
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_odometry :md5sum-) "34ddd7aa1617c391983fb2ede12712ee")
(setf (get robotnik_msgs::set_odometry :datatype-) "robotnik_msgs/set_odometry")
(setf (get robotnik_msgs::set_odometry :request) robotnik_msgs::set_odometryRequest)
(setf (get robotnik_msgs::set_odometry :response) robotnik_msgs::set_odometryResponse)

(defmethod robotnik_msgs::set_odometryRequest
  (:response () (instance robotnik_msgs::set_odometryResponse :init)))

(setf (get robotnik_msgs::set_odometryRequest :md5sum-) "34ddd7aa1617c391983fb2ede12712ee")
(setf (get robotnik_msgs::set_odometryRequest :datatype-) "robotnik_msgs/set_odometryRequest")
(setf (get robotnik_msgs::set_odometryRequest :definition-)
      "# New robot X position (m)
float32 x
# New robot Y position (m)
float32 y
# New robot Z position (m)
float32 z
# New robot Orientation (rads)
float32 orientation
---
bool ret 

")

(setf (get robotnik_msgs::set_odometryResponse :md5sum-) "34ddd7aa1617c391983fb2ede12712ee")
(setf (get robotnik_msgs::set_odometryResponse :datatype-) "robotnik_msgs/set_odometryResponse")
(setf (get robotnik_msgs::set_odometryResponse :definition-)
      "# New robot X position (m)
float32 x
# New robot Y position (m)
float32 y
# New robot Z position (m)
float32 z
# New robot Orientation (rads)
float32 orientation
---
bool ret 

")



(provide :robotnik_msgs/set_odometry "34ddd7aa1617c391983fb2ede12712ee")


