;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::ElevatorAction)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'ElevatorAction (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ELEVATORACTION")
  (make-package "ROBOTNIK_MSGS::ELEVATORACTION"))

(in-package "ROS")
;;//! \htmlinclude ElevatorAction.msg.html


(intern "*RAISE*" (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(shadow '*RAISE* (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(defconstant robotnik_msgs::ElevatorAction::*RAISE* 1)
(intern "*LOWER*" (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(shadow '*LOWER* (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(defconstant robotnik_msgs::ElevatorAction::*LOWER* -1)
(intern "*STOP*" (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(shadow '*STOP* (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(defconstant robotnik_msgs::ElevatorAction::*STOP* 0)
(intern "*NO_ACTION*" (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(shadow '*NO_ACTION* (find-package "ROBOTNIK_MSGS::ELEVATORACTION"))
(defconstant robotnik_msgs::ElevatorAction::*NO_ACTION* 1000)

(defun robotnik_msgs::ElevatorAction-to-symbol (const)
  (cond
        ((= const 1) 'robotnik_msgs::ElevatorAction::*RAISE*)
        ((= const -1) 'robotnik_msgs::ElevatorAction::*LOWER*)
        ((= const 0) 'robotnik_msgs::ElevatorAction::*STOP*)
        ((= const 1000) 'robotnik_msgs::ElevatorAction::*NO_ACTION*)
        (t nil)))

(defclass robotnik_msgs::ElevatorAction
  :super ros::object
  :slots (_action ))

(defmethod robotnik_msgs::ElevatorAction
  (:init
   (&key
    ((:action __action) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:serialization-length
   ()
   (+
    ;; int32 _action
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _action
       (write-long _action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::ElevatorAction :md5sum-) "632c616886d6575f7d7145cd0384a359")
(setf (get robotnik_msgs::ElevatorAction :datatype-) "robotnik_msgs/ElevatorAction")
(setf (get robotnik_msgs::ElevatorAction :definition-)
      "int32 RAISE=1
int32 LOWER=-1
int32 STOP=0
int32 NO_ACTION=1000

int32 action
# speed, height for future applications

")



(provide :robotnik_msgs/ElevatorAction "632c616886d6575f7d7145cd0384a359")


