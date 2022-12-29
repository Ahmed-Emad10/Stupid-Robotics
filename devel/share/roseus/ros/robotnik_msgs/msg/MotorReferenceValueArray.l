;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorReferenceValueArray)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorReferenceValueArray (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORREFERENCEVALUEARRAY")
  (make-package "ROBOTNIK_MSGS::MOTORREFERENCEVALUEARRAY"))

(in-package "ROS")
;;//! \htmlinclude MotorReferenceValueArray.msg.html


(defclass robotnik_msgs::MotorReferenceValueArray
  :super ros::object
  :slots (_velocity _position _torque ))

(defmethod robotnik_msgs::MotorReferenceValueArray
  (:init
   (&key
    ((:velocity __velocity) (instance robotnik_msgs::MotorReferenceValue :init))
    ((:position __position) (instance robotnik_msgs::MotorReferenceValue :init))
    ((:torque __torque) (instance robotnik_msgs::MotorReferenceValue :init))
    )
   (send-super :init)
   (setq _velocity __velocity)
   (setq _position __position)
   (setq _torque __torque)
   self)
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorReferenceValue _velocity
    (send _velocity :serialization-length)
    ;; robotnik_msgs/MotorReferenceValue _position
    (send _position :serialization-length)
    ;; robotnik_msgs/MotorReferenceValue _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorReferenceValue _velocity
       (send _velocity :serialize s)
     ;; robotnik_msgs/MotorReferenceValue _position
       (send _position :serialize s)
     ;; robotnik_msgs/MotorReferenceValue _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorReferenceValue _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; robotnik_msgs/MotorReferenceValue _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; robotnik_msgs/MotorReferenceValue _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorReferenceValueArray :md5sum-) "8397e49dd79671c43ebd06b3be44fa96")
(setf (get robotnik_msgs::MotorReferenceValueArray :datatype-) "robotnik_msgs/MotorReferenceValueArray")
(setf (get robotnik_msgs::MotorReferenceValueArray :definition-)
      "MotorReferenceValue velocity
MotorReferenceValue position
MotorReferenceValue torque

================================================================================
MSG: robotnik_msgs/MotorReferenceValue
float32 target_value
int32 target_ref
float32 actual_value
int32 actual_ref

")



(provide :robotnik_msgs/MotorReferenceValueArray "8397e49dd79671c43ebd06b3be44fa96")


