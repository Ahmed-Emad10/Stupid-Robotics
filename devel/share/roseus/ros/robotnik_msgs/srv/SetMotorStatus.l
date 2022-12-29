;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetMotorStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetMotorStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORSTATUS")
  (make-package "ROBOTNIK_MSGS::SETMOTORSTATUS"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORSTATUSREQUEST")
  (make-package "ROBOTNIK_MSGS::SETMOTORSTATUSREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETMOTORSTATUSRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETMOTORSTATUSRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetMotorStatusRequest
  :super ros::object
  :slots (_status ))

(defmethod robotnik_msgs::SetMotorStatusRequest
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;;
   self)
  )

(defclass robotnik_msgs::SetMotorStatusResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetMotorStatusResponse
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

(defclass robotnik_msgs::SetMotorStatus
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetMotorStatus :md5sum-) "ac25788ee06f4ac013e321c5521c9989")
(setf (get robotnik_msgs::SetMotorStatus :datatype-) "robotnik_msgs/SetMotorStatus")
(setf (get robotnik_msgs::SetMotorStatus :request) robotnik_msgs::SetMotorStatusRequest)
(setf (get robotnik_msgs::SetMotorStatus :response) robotnik_msgs::SetMotorStatusResponse)

(defmethod robotnik_msgs::SetMotorStatusRequest
  (:response () (instance robotnik_msgs::SetMotorStatusResponse :init)))

(setf (get robotnik_msgs::SetMotorStatusRequest :md5sum-) "ac25788ee06f4ac013e321c5521c9989")
(setf (get robotnik_msgs::SetMotorStatusRequest :datatype-) "robotnik_msgs/SetMotorStatusRequest")
(setf (get robotnik_msgs::SetMotorStatusRequest :definition-)
      "# Avalilable status
# 0-> POWER_ENABLED
# 1-> QUICK_STOP
# 2-> POWER_DISABLED (READY_TO_SWITCH_ON)
int8 status
---
bool ret 

")

(setf (get robotnik_msgs::SetMotorStatusResponse :md5sum-) "ac25788ee06f4ac013e321c5521c9989")
(setf (get robotnik_msgs::SetMotorStatusResponse :datatype-) "robotnik_msgs/SetMotorStatusResponse")
(setf (get robotnik_msgs::SetMotorStatusResponse :definition-)
      "# Avalilable status
# 0-> POWER_ENABLED
# 1-> QUICK_STOP
# 2-> POWER_DISABLED (READY_TO_SWITCH_ON)
int8 status
---
bool ret 

")



(provide :robotnik_msgs/SetMotorStatus "ac25788ee06f4ac013e321c5521c9989")


