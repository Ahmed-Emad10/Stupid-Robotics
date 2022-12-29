;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorHeadingOffset)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorHeadingOffset (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORHEADINGOFFSET")
  (make-package "ROBOTNIK_MSGS::MOTORHEADINGOFFSET"))

(in-package "ROS")
;;//! \htmlinclude MotorHeadingOffset.msg.html


(defclass robotnik_msgs::MotorHeadingOffset
  :super ros::object
  :slots (_motor _value ))

(defmethod robotnik_msgs::MotorHeadingOffset
  (:init
   (&key
    ((:motor __motor) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _motor (round __motor))
   (setq _value (float __value))
   self)
  (:motor
   (&optional __motor)
   (if __motor (setq _motor __motor)) _motor)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _motor
    4
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _motor
       (write-long _motor s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _motor
     (setq _motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorHeadingOffset :md5sum-) "8f9a9c9e1eb9b64236a3a4e805aa730d")
(setf (get robotnik_msgs::MotorHeadingOffset :datatype-) "robotnik_msgs/MotorHeadingOffset")
(setf (get robotnik_msgs::MotorHeadingOffset :definition-)
      "int32 motor
float64 value

")



(provide :robotnik_msgs/MotorHeadingOffset "8f9a9c9e1eb9b64236a3a4e805aa730d")


