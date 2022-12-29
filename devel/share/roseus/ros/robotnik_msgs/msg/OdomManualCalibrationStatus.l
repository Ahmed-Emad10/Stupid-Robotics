;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::OdomManualCalibrationStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'OdomManualCalibrationStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ODOMMANUALCALIBRATIONSTATUS")
  (make-package "ROBOTNIK_MSGS::ODOMMANUALCALIBRATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OdomManualCalibrationStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotnik_msgs::OdomManualCalibrationStatus
  :super ros::object
  :slots (_odom_increment _real_increment _linear_error _angular_error ))

(defmethod robotnik_msgs::OdomManualCalibrationStatus
  (:init
   (&key
    ((:odom_increment __odom_increment) (instance geometry_msgs::Pose :init))
    ((:real_increment __real_increment) (instance geometry_msgs::Pose :init))
    ((:linear_error __linear_error) 0.0)
    ((:angular_error __angular_error) 0.0)
    )
   (send-super :init)
   (setq _odom_increment __odom_increment)
   (setq _real_increment __real_increment)
   (setq _linear_error (float __linear_error))
   (setq _angular_error (float __angular_error))
   self)
  (:odom_increment
   (&rest __odom_increment)
   (if (keywordp (car __odom_increment))
       (send* _odom_increment __odom_increment)
     (progn
       (if __odom_increment (setq _odom_increment (car __odom_increment)))
       _odom_increment)))
  (:real_increment
   (&rest __real_increment)
   (if (keywordp (car __real_increment))
       (send* _real_increment __real_increment)
     (progn
       (if __real_increment (setq _real_increment (car __real_increment)))
       _real_increment)))
  (:linear_error
   (&optional __linear_error)
   (if __linear_error (setq _linear_error __linear_error)) _linear_error)
  (:angular_error
   (&optional __angular_error)
   (if __angular_error (setq _angular_error __angular_error)) _angular_error)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _odom_increment
    (send _odom_increment :serialization-length)
    ;; geometry_msgs/Pose _real_increment
    (send _real_increment :serialization-length)
    ;; float32 _linear_error
    4
    ;; float32 _angular_error
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _odom_increment
       (send _odom_increment :serialize s)
     ;; geometry_msgs/Pose _real_increment
       (send _real_increment :serialize s)
     ;; float32 _linear_error
       (sys::poke _linear_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_error
       (sys::poke _angular_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _odom_increment
     (send _odom_increment :deserialize buf ptr-) (incf ptr- (send _odom_increment :serialization-length))
   ;; geometry_msgs/Pose _real_increment
     (send _real_increment :deserialize buf ptr-) (incf ptr- (send _real_increment :serialization-length))
   ;; float32 _linear_error
     (setq _linear_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_error
     (setq _angular_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::OdomManualCalibrationStatus :md5sum-) "f77436bc07e4185538807c200cd1cc07")
(setf (get robotnik_msgs::OdomManualCalibrationStatus :datatype-) "robotnik_msgs/OdomManualCalibrationStatus")
(setf (get robotnik_msgs::OdomManualCalibrationStatus :definition-)
      "geometry_msgs/Pose odom_increment             # odometry increment since last reset
geometry_msgs/Pose real_increment             # real increment since last reset

float32 linear_error            # linear error between odom and real since last reset
float32 angular_error           # angular error between odom and real since last reset

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :robotnik_msgs/OdomManualCalibrationStatus "f77436bc07e4185538807c200cd1cc07")


