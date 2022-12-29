;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetElevator)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetElevator (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETELEVATOR")
  (make-package "ROBOTNIK_MSGS::SETELEVATOR"))
(unless (find-package "ROBOTNIK_MSGS::SETELEVATORREQUEST")
  (make-package "ROBOTNIK_MSGS::SETELEVATORREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETELEVATORRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETELEVATORRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetElevatorRequest
  :super ros::object
  :slots (_action ))

(defmethod robotnik_msgs::SetElevatorRequest
  (:init
   (&key
    ((:action __action) (instance robotnik_msgs::ElevatorAction :init))
    )
   (send-super :init)
   (setq _action __action)
   self)
  (:action
   (&rest __action)
   (if (keywordp (car __action))
       (send* _action __action)
     (progn
       (if __action (setq _action (car __action)))
       _action)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/ElevatorAction _action
    (send _action :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/ElevatorAction _action
       (send _action :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/ElevatorAction _action
     (send _action :deserialize buf ptr-) (incf ptr- (send _action :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetElevatorResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetElevatorResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::SetElevator
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetElevator :md5sum-) "b0ce8ab263ff08692a79c34185b69763")
(setf (get robotnik_msgs::SetElevator :datatype-) "robotnik_msgs/SetElevator")
(setf (get robotnik_msgs::SetElevator :request) robotnik_msgs::SetElevatorRequest)
(setf (get robotnik_msgs::SetElevator :response) robotnik_msgs::SetElevatorResponse)

(defmethod robotnik_msgs::SetElevatorRequest
  (:response () (instance robotnik_msgs::SetElevatorResponse :init)))

(setf (get robotnik_msgs::SetElevatorRequest :md5sum-) "b0ce8ab263ff08692a79c34185b69763")
(setf (get robotnik_msgs::SetElevatorRequest :datatype-) "robotnik_msgs/SetElevatorRequest")
(setf (get robotnik_msgs::SetElevatorRequest :definition-)
      "robotnik_msgs/ElevatorAction action

================================================================================
MSG: robotnik_msgs/ElevatorAction
int32 RAISE=1
int32 LOWER=-1
int32 STOP=0
int32 NO_ACTION=1000

int32 action
# speed, height for future applications
---
bool ret

")

(setf (get robotnik_msgs::SetElevatorResponse :md5sum-) "b0ce8ab263ff08692a79c34185b69763")
(setf (get robotnik_msgs::SetElevatorResponse :datatype-) "robotnik_msgs/SetElevatorResponse")
(setf (get robotnik_msgs::SetElevatorResponse :definition-)
      "robotnik_msgs/ElevatorAction action

================================================================================
MSG: robotnik_msgs/ElevatorAction
int32 RAISE=1
int32 LOWER=-1
int32 STOP=0
int32 NO_ACTION=1000

int32 action
# speed, height for future applications
---
bool ret

")



(provide :robotnik_msgs/SetElevator "b0ce8ab263ff08692a79c34185b69763")


