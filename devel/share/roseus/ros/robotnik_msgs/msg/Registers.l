;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Registers)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Registers (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::REGISTERS")
  (make-package "ROBOTNIK_MSGS::REGISTERS"))

(in-package "ROS")
;;//! \htmlinclude Registers.msg.html


(defclass robotnik_msgs::Registers
  :super ros::object
  :slots (_registers ))

(defmethod robotnik_msgs::Registers
  (:init
   (&key
    ((:registers __registers) ())
    )
   (send-super :init)
   (setq _registers __registers)
   self)
  (:registers
   (&rest __registers)
   (if (keywordp (car __registers))
       (send* _registers __registers)
     (progn
       (if __registers (setq _registers (car __registers)))
       _registers)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/Register[] _registers
    (apply #'+ (send-all _registers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/Register[] _registers
     (write-long (length _registers) s)
     (dolist (elem _registers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/Register[] _registers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _registers (let (r) (dotimes (i n) (push (instance robotnik_msgs::Register :init) r)) r))
     (dolist (elem- _registers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::Registers :md5sum-) "12d8645a7a01078095f8477105240cef")
(setf (get robotnik_msgs::Registers :datatype-) "robotnik_msgs/Registers")
(setf (get robotnik_msgs::Registers :definition-)
      "robotnik_msgs/Register[] registers
================================================================================
MSG: robotnik_msgs/Register
int32 id
int32 value
")



(provide :robotnik_msgs/Registers "12d8645a7a01078095f8477105240cef")


