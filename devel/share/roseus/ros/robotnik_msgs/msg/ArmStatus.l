;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::ArmStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'ArmStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ARMSTATUS")
  (make-package "ROBOTNIK_MSGS::ARMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ArmStatus.msg.html


(defclass robotnik_msgs::ArmStatus
  :super ros::object
  :slots (_position ))

(defmethod robotnik_msgs::ArmStatus
  (:init
   (&key
    ((:position __position) "")
    )
   (send-super :init)
   (setq _position (string __position))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:serialization-length
   ()
   (+
    ;; string _position
    4 (length _position)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _position
       (write-long (length _position) s) (princ _position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _position
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _position (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::ArmStatus :md5sum-) "d6afdd327a64a50f94a7d3a2de5435e3")
(setf (get robotnik_msgs::ArmStatus :datatype-) "robotnik_msgs/ArmStatus")
(setf (get robotnik_msgs::ArmStatus :definition-)
      "# Current arm position
string position
")



(provide :robotnik_msgs/ArmStatus "d6afdd327a64a50f94a7d3a2de5435e3")


