;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorsStatusDifferential)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorsStatusDifferential (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORSSTATUSDIFFERENTIAL")
  (make-package "ROBOTNIK_MSGS::MOTORSSTATUSDIFFERENTIAL"))

(in-package "ROS")
;;//! \htmlinclude MotorsStatusDifferential.msg.html


(defclass robotnik_msgs::MotorsStatusDifferential
  :super ros::object
  :slots (_lwStatus _rwStatus ))

(defmethod robotnik_msgs::MotorsStatusDifferential
  (:init
   (&key
    ((:lwStatus __lwStatus) (instance robotnik_msgs::MotorStatus :init))
    ((:rwStatus __rwStatus) (instance robotnik_msgs::MotorStatus :init))
    )
   (send-super :init)
   (setq _lwStatus __lwStatus)
   (setq _rwStatus __rwStatus)
   self)
  (:lwStatus
   (&rest __lwStatus)
   (if (keywordp (car __lwStatus))
       (send* _lwStatus __lwStatus)
     (progn
       (if __lwStatus (setq _lwStatus (car __lwStatus)))
       _lwStatus)))
  (:rwStatus
   (&rest __rwStatus)
   (if (keywordp (car __rwStatus))
       (send* _rwStatus __rwStatus)
     (progn
       (if __rwStatus (setq _rwStatus (car __rwStatus)))
       _rwStatus)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorStatus _lwStatus
    (send _lwStatus :serialization-length)
    ;; robotnik_msgs/MotorStatus _rwStatus
    (send _rwStatus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorStatus _lwStatus
       (send _lwStatus :serialize s)
     ;; robotnik_msgs/MotorStatus _rwStatus
       (send _rwStatus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorStatus _lwStatus
     (send _lwStatus :deserialize buf ptr-) (incf ptr- (send _lwStatus :serialization-length))
   ;; robotnik_msgs/MotorStatus _rwStatus
     (send _rwStatus :deserialize buf ptr-) (incf ptr- (send _rwStatus :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorsStatusDifferential :md5sum-) "54c939ea4e1227a032aeca24b67584ad")
(setf (get robotnik_msgs::MotorsStatusDifferential :datatype-) "robotnik_msgs/MotorsStatusDifferential")
(setf (get robotnik_msgs::MotorsStatusDifferential :definition-)
      "MotorStatus lwStatus
MotorStatus rwStatus


================================================================================
MSG: robotnik_msgs/MotorStatus
uint8 can_id
string joint
string state
string status
string communicationstatus
string mode_of_operation
string[] activestatusword
string[] activedriveflags
bool[] digitaloutputs
bool[] digitalinputs
float32 current
float32[] analoginputs
string statusword
string driveflags



")



(provide :robotnik_msgs/MotorsStatusDifferential "54c939ea4e1227a032aeca24b67584ad")


