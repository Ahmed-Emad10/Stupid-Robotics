;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorReferenceValue)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorReferenceValue (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORREFERENCEVALUE")
  (make-package "ROBOTNIK_MSGS::MOTORREFERENCEVALUE"))

(in-package "ROS")
;;//! \htmlinclude MotorReferenceValue.msg.html


(defclass robotnik_msgs::MotorReferenceValue
  :super ros::object
  :slots (_target_value _target_ref _actual_value _actual_ref ))

(defmethod robotnik_msgs::MotorReferenceValue
  (:init
   (&key
    ((:target_value __target_value) 0.0)
    ((:target_ref __target_ref) 0)
    ((:actual_value __actual_value) 0.0)
    ((:actual_ref __actual_ref) 0)
    )
   (send-super :init)
   (setq _target_value (float __target_value))
   (setq _target_ref (round __target_ref))
   (setq _actual_value (float __actual_value))
   (setq _actual_ref (round __actual_ref))
   self)
  (:target_value
   (&optional __target_value)
   (if __target_value (setq _target_value __target_value)) _target_value)
  (:target_ref
   (&optional __target_ref)
   (if __target_ref (setq _target_ref __target_ref)) _target_ref)
  (:actual_value
   (&optional __actual_value)
   (if __actual_value (setq _actual_value __actual_value)) _actual_value)
  (:actual_ref
   (&optional __actual_ref)
   (if __actual_ref (setq _actual_ref __actual_ref)) _actual_ref)
  (:serialization-length
   ()
   (+
    ;; float32 _target_value
    4
    ;; int32 _target_ref
    4
    ;; float32 _actual_value
    4
    ;; int32 _actual_ref
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_value
       (sys::poke _target_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _target_ref
       (write-long _target_ref s)
     ;; float32 _actual_value
       (sys::poke _actual_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _actual_ref
       (write-long _actual_ref s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_value
     (setq _target_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _target_ref
     (setq _target_ref (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _actual_value
     (setq _actual_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _actual_ref
     (setq _actual_ref (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorReferenceValue :md5sum-) "32c091680a0778bc1b7ba8846b79715b")
(setf (get robotnik_msgs::MotorReferenceValue :datatype-) "robotnik_msgs/MotorReferenceValue")
(setf (get robotnik_msgs::MotorReferenceValue :definition-)
      "float32 target_value
int32 target_ref
float32 actual_value
int32 actual_ref

")



(provide :robotnik_msgs/MotorReferenceValue "32c091680a0778bc1b7ba8846b79715b")


