;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::PantiltStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'PantiltStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::PANTILTSTATUS")
  (make-package "ROBOTNIK_MSGS::PANTILTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PantiltStatus.msg.html


(defclass robotnik_msgs::PantiltStatus
  :super ros::object
  :slots (_pan_pos _tilt_pos _pan_speed _tilt_speed ))

(defmethod robotnik_msgs::PantiltStatus
  (:init
   (&key
    ((:pan_pos __pan_pos) 0.0)
    ((:tilt_pos __tilt_pos) 0.0)
    ((:pan_speed __pan_speed) 0.0)
    ((:tilt_speed __tilt_speed) 0.0)
    )
   (send-super :init)
   (setq _pan_pos (float __pan_pos))
   (setq _tilt_pos (float __tilt_pos))
   (setq _pan_speed (float __pan_speed))
   (setq _tilt_speed (float __tilt_speed))
   self)
  (:pan_pos
   (&optional __pan_pos)
   (if __pan_pos (setq _pan_pos __pan_pos)) _pan_pos)
  (:tilt_pos
   (&optional __tilt_pos)
   (if __tilt_pos (setq _tilt_pos __tilt_pos)) _tilt_pos)
  (:pan_speed
   (&optional __pan_speed)
   (if __pan_speed (setq _pan_speed __pan_speed)) _pan_speed)
  (:tilt_speed
   (&optional __tilt_speed)
   (if __tilt_speed (setq _tilt_speed __tilt_speed)) _tilt_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _pan_pos
    4
    ;; float32 _tilt_pos
    4
    ;; float32 _pan_speed
    4
    ;; float32 _tilt_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan_pos
       (sys::poke _pan_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt_pos
       (sys::poke _tilt_pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pan_speed
       (sys::poke _pan_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt_speed
       (sys::poke _tilt_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan_pos
     (setq _pan_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt_pos
     (setq _tilt_pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pan_speed
     (setq _pan_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt_speed
     (setq _tilt_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::PantiltStatus :md5sum-) "b9addaf9ff55168a01a8a6a9e689829f")
(setf (get robotnik_msgs::PantiltStatus :datatype-) "robotnik_msgs/PantiltStatus")
(setf (get robotnik_msgs::PantiltStatus :definition-)
      "float32 pan_pos
float32 tilt_pos
float32 pan_speed
float32 tilt_speed
")



(provide :robotnik_msgs/PantiltStatus "b9addaf9ff55168a01a8a6a9e689829f")


