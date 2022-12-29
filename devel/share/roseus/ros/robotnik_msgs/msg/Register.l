;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Register)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Register (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::REGISTER")
  (make-package "ROBOTNIK_MSGS::REGISTER"))

(in-package "ROS")
;;//! \htmlinclude Register.msg.html


(defclass robotnik_msgs::Register
  :super ros::object
  :slots (_id _value ))

(defmethod robotnik_msgs::Register
  (:init
   (&key
    ((:id __id) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _value (round __value))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _value
       (write-long _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _value
     (setq _value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::Register :md5sum-) "b971379644cd29fdf0000430f7d4b8e8")
(setf (get robotnik_msgs::Register :datatype-) "robotnik_msgs/Register")
(setf (get robotnik_msgs::Register :definition-)
      "int32 id
int32 value
")



(provide :robotnik_msgs/Register "b971379644cd29fdf0000430f7d4b8e8")


