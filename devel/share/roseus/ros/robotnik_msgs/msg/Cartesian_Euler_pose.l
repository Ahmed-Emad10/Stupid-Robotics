;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Cartesian_Euler_pose)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Cartesian_Euler_pose (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::CARTESIAN_EULER_POSE")
  (make-package "ROBOTNIK_MSGS::CARTESIAN_EULER_POSE"))

(in-package "ROS")
;;//! \htmlinclude Cartesian_Euler_pose.msg.html


(defclass robotnik_msgs::Cartesian_Euler_pose
  :super ros::object
  :slots (_x _y _z _A _B _C ))

(defmethod robotnik_msgs::Cartesian_Euler_pose
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
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _A
    8
    ;; float64 _B
    8
    ;; float64 _C
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _A
       (sys::poke _A (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _B
       (sys::poke _B (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _C
       (sys::poke _C (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _A
     (setq _A (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _B
     (setq _B (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _C
     (setq _C (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robotnik_msgs::Cartesian_Euler_pose :md5sum-) "1b7d5ac5679ead09b31ec87e784aa10e")
(setf (get robotnik_msgs::Cartesian_Euler_pose :datatype-) "robotnik_msgs/Cartesian_Euler_pose")
(setf (get robotnik_msgs::Cartesian_Euler_pose :definition-)
      "float64 x
float64 y
float64 z
float64 A
float64 B
float64 C

")



(provide :robotnik_msgs/Cartesian_Euler_pose "1b7d5ac5679ead09b31ec87e784aa10e")


