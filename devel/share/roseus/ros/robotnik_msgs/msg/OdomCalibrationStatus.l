;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::OdomCalibrationStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'OdomCalibrationStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ODOMCALIBRATIONSTATUS")
  (make-package "ROBOTNIK_MSGS::ODOMCALIBRATIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OdomCalibrationStatus.msg.html


(defclass robotnik_msgs::OdomCalibrationStatus
  :super ros::object
  :slots (_is_calculating _remaining_time _left_radius _right_radius _wheels_distance ))

(defmethod robotnik_msgs::OdomCalibrationStatus
  (:init
   (&key
    ((:is_calculating __is_calculating) nil)
    ((:remaining_time __remaining_time) 0.0)
    ((:left_radius __left_radius) 0.0)
    ((:right_radius __right_radius) 0.0)
    ((:wheels_distance __wheels_distance) 0.0)
    )
   (send-super :init)
   (setq _is_calculating __is_calculating)
   (setq _remaining_time (float __remaining_time))
   (setq _left_radius (float __left_radius))
   (setq _right_radius (float __right_radius))
   (setq _wheels_distance (float __wheels_distance))
   self)
  (:is_calculating
   (&optional (__is_calculating :null))
   (if (not (eq __is_calculating :null)) (setq _is_calculating __is_calculating)) _is_calculating)
  (:remaining_time
   (&optional __remaining_time)
   (if __remaining_time (setq _remaining_time __remaining_time)) _remaining_time)
  (:left_radius
   (&optional __left_radius)
   (if __left_radius (setq _left_radius __left_radius)) _left_radius)
  (:right_radius
   (&optional __right_radius)
   (if __right_radius (setq _right_radius __right_radius)) _right_radius)
  (:wheels_distance
   (&optional __wheels_distance)
   (if __wheels_distance (setq _wheels_distance __wheels_distance)) _wheels_distance)
  (:serialization-length
   ()
   (+
    ;; bool _is_calculating
    1
    ;; float32 _remaining_time
    4
    ;; float32 _left_radius
    4
    ;; float32 _right_radius
    4
    ;; float32 _wheels_distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_calculating
       (if _is_calculating (write-byte -1 s) (write-byte 0 s))
     ;; float32 _remaining_time
       (sys::poke _remaining_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _left_radius
       (sys::poke _left_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right_radius
       (sys::poke _right_radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheels_distance
       (sys::poke _wheels_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_calculating
     (setq _is_calculating (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _remaining_time
     (setq _remaining_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _left_radius
     (setq _left_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right_radius
     (setq _right_radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheels_distance
     (setq _wheels_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::OdomCalibrationStatus :md5sum-) "d03e7379e89cf43254443e594855bbde")
(setf (get robotnik_msgs::OdomCalibrationStatus :datatype-) "robotnik_msgs/OdomCalibrationStatus")
(setf (get robotnik_msgs::OdomCalibrationStatus :definition-)
      "bool is_calculating             # true when node is calculating the odometry parameters
float32 remaining_time          # remaining time in seconds for obtaining odometry values

float32 left_radius             # radius of the left wheel in meters
float32 right_radius            # radius of the right wheel in meters
float32 wheels_distance         # distance between the two wheels of the robot in meters
")



(provide :robotnik_msgs/OdomCalibrationStatus "d03e7379e89cf43254443e594855bbde")


