;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_CartesianEuler_pose)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_CartesianEuler_pose (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSE")
  (make-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSE"))
(unless (find-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSEREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSERESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_CARTESIANEULER_POSERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_CartesianEuler_poseRequest
  :super ros::object
  :slots (_x _y _z _A _B _C ))

(defmethod robotnik_msgs::set_CartesianEuler_poseRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:A __A) 0.0)
    ((:B __B) 0.0)
    ((:C __C) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _A (float __A))
   (setq _B (float __B))
   (setq _C (float __C))
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
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; float32 _A
    4
    ;; float32 _B
    4
    ;; float32 _C
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
     ;; float32 _A
       (sys::poke _A (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _B
       (sys::poke _B (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _C
       (sys::poke _C (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _A
     (setq _A (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _B
     (setq _B (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _C
     (setq _C (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::set_CartesianEuler_poseResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_CartesianEuler_poseResponse
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

(defclass robotnik_msgs::set_CartesianEuler_pose
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_CartesianEuler_pose :md5sum-) "2519f4d60ca7104c2905597455df82b0")
(setf (get robotnik_msgs::set_CartesianEuler_pose :datatype-) "robotnik_msgs/set_CartesianEuler_pose")
(setf (get robotnik_msgs::set_CartesianEuler_pose :request) robotnik_msgs::set_CartesianEuler_poseRequest)
(setf (get robotnik_msgs::set_CartesianEuler_pose :response) robotnik_msgs::set_CartesianEuler_poseResponse)

(defmethod robotnik_msgs::set_CartesianEuler_poseRequest
  (:response () (instance robotnik_msgs::set_CartesianEuler_poseResponse :init)))

(setf (get robotnik_msgs::set_CartesianEuler_poseRequest :md5sum-) "2519f4d60ca7104c2905597455df82b0")
(setf (get robotnik_msgs::set_CartesianEuler_poseRequest :datatype-) "robotnik_msgs/set_CartesianEuler_poseRequest")
(setf (get robotnik_msgs::set_CartesianEuler_poseRequest :definition-)
      "# New robot X position (mm)
float32 x
# New robot Y position (mm)
float32 y
# New robot Z position (mm)
float32 z
# New robot Orientation (grad)
float32 A
# New robot Orientation (grad)
float32 B
# New robot Orientation (grad)
float32 C
---
bool ret 

")

(setf (get robotnik_msgs::set_CartesianEuler_poseResponse :md5sum-) "2519f4d60ca7104c2905597455df82b0")
(setf (get robotnik_msgs::set_CartesianEuler_poseResponse :datatype-) "robotnik_msgs/set_CartesianEuler_poseResponse")
(setf (get robotnik_msgs::set_CartesianEuler_poseResponse :definition-)
      "# New robot X position (mm)
float32 x
# New robot Y position (mm)
float32 y
# New robot Z position (mm)
float32 z
# New robot Orientation (grad)
float32 A
# New robot Orientation (grad)
float32 B
# New robot Orientation (grad)
float32 C
---
bool ret 

")



(provide :robotnik_msgs/set_CartesianEuler_pose "2519f4d60ca7104c2905597455df82b0")


