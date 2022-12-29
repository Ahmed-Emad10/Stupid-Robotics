;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::RobotnikMotorsStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'RobotnikMotorsStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ROBOTNIKMOTORSSTATUS")
  (make-package "ROBOTNIK_MSGS::ROBOTNIKMOTORSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotnikMotorsStatus.msg.html


(defclass robotnik_msgs::RobotnikMotorsStatus
  :super ros::object
  :slots (_state _motor_status ))

(defmethod robotnik_msgs::RobotnikMotorsStatus
  (:init
   (&key
    ((:state __state) "")
    ((:motor_status __motor_status) ())
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _motor_status __motor_status)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:motor_status
   (&rest __motor_status)
   (if (keywordp (car __motor_status))
       (send* _motor_status __motor_status)
     (progn
       (if __motor_status (setq _motor_status (car __motor_status)))
       _motor_status)))
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; robotnik_msgs/MotorStatus[] _motor_status
    (apply #'+ (send-all _motor_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; robotnik_msgs/MotorStatus[] _motor_status
     (write-long (length _motor_status) s)
     (dolist (elem _motor_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; robotnik_msgs/MotorStatus[] _motor_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motor_status (let (r) (dotimes (i n) (push (instance robotnik_msgs::MotorStatus :init) r)) r))
     (dolist (elem- _motor_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::RobotnikMotorsStatus :md5sum-) "a6f76b778bb6c93074bf081a98ca69ac")
(setf (get robotnik_msgs::RobotnikMotorsStatus :datatype-) "robotnik_msgs/RobotnikMotorsStatus")
(setf (get robotnik_msgs::RobotnikMotorsStatus :definition-)
      "# Global state of the component
string state
# Status of the motor drive
robotnik_msgs/MotorStatus[] motor_status


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



(provide :robotnik_msgs/RobotnikMotorsStatus "a6f76b778bb6c93074bf081a98ca69ac")


