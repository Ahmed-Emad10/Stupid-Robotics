;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorsStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorsStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORSSTATUS")
  (make-package "ROBOTNIK_MSGS::MOTORSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorsStatus.msg.html


(defclass robotnik_msgs::MotorsStatus
  :super ros::object
  :slots (_flwStatus _blwStatus _frwStatus _brwStatus ))

(defmethod robotnik_msgs::MotorsStatus
  (:init
   (&key
    ((:flwStatus __flwStatus) (instance robotnik_msgs::MotorStatus :init))
    ((:blwStatus __blwStatus) (instance robotnik_msgs::MotorStatus :init))
    ((:frwStatus __frwStatus) (instance robotnik_msgs::MotorStatus :init))
    ((:brwStatus __brwStatus) (instance robotnik_msgs::MotorStatus :init))
    )
   (send-super :init)
   (setq _flwStatus __flwStatus)
   (setq _blwStatus __blwStatus)
   (setq _frwStatus __frwStatus)
   (setq _brwStatus __brwStatus)
   self)
  (:flwStatus
   (&rest __flwStatus)
   (if (keywordp (car __flwStatus))
       (send* _flwStatus __flwStatus)
     (progn
       (if __flwStatus (setq _flwStatus (car __flwStatus)))
       _flwStatus)))
  (:blwStatus
   (&rest __blwStatus)
   (if (keywordp (car __blwStatus))
       (send* _blwStatus __blwStatus)
     (progn
       (if __blwStatus (setq _blwStatus (car __blwStatus)))
       _blwStatus)))
  (:frwStatus
   (&rest __frwStatus)
   (if (keywordp (car __frwStatus))
       (send* _frwStatus __frwStatus)
     (progn
       (if __frwStatus (setq _frwStatus (car __frwStatus)))
       _frwStatus)))
  (:brwStatus
   (&rest __brwStatus)
   (if (keywordp (car __brwStatus))
       (send* _brwStatus __brwStatus)
     (progn
       (if __brwStatus (setq _brwStatus (car __brwStatus)))
       _brwStatus)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorStatus _flwStatus
    (send _flwStatus :serialization-length)
    ;; robotnik_msgs/MotorStatus _blwStatus
    (send _blwStatus :serialization-length)
    ;; robotnik_msgs/MotorStatus _frwStatus
    (send _frwStatus :serialization-length)
    ;; robotnik_msgs/MotorStatus _brwStatus
    (send _brwStatus :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorStatus _flwStatus
       (send _flwStatus :serialize s)
     ;; robotnik_msgs/MotorStatus _blwStatus
       (send _blwStatus :serialize s)
     ;; robotnik_msgs/MotorStatus _frwStatus
       (send _frwStatus :serialize s)
     ;; robotnik_msgs/MotorStatus _brwStatus
       (send _brwStatus :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorStatus _flwStatus
     (send _flwStatus :deserialize buf ptr-) (incf ptr- (send _flwStatus :serialization-length))
   ;; robotnik_msgs/MotorStatus _blwStatus
     (send _blwStatus :deserialize buf ptr-) (incf ptr- (send _blwStatus :serialization-length))
   ;; robotnik_msgs/MotorStatus _frwStatus
     (send _frwStatus :deserialize buf ptr-) (incf ptr- (send _frwStatus :serialization-length))
   ;; robotnik_msgs/MotorStatus _brwStatus
     (send _brwStatus :deserialize buf ptr-) (incf ptr- (send _brwStatus :serialization-length))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorsStatus :md5sum-) "8737e2a027c7f183f76ac545960670cc")
(setf (get robotnik_msgs::MotorsStatus :datatype-) "robotnik_msgs/MotorsStatus")
(setf (get robotnik_msgs::MotorsStatus :definition-)
      "MotorStatus flwStatus
MotorStatus blwStatus
MotorStatus frwStatus
MotorStatus brwStatus


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



(provide :robotnik_msgs/MotorsStatus "8737e2a027c7f183f76ac545960670cc")


