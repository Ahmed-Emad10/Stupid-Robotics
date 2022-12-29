;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::ResetFromSubState)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'ResetFromSubState (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::RESETFROMSUBSTATE")
  (make-package "ROBOTNIK_MSGS::RESETFROMSUBSTATE"))
(unless (find-package "ROBOTNIK_MSGS::RESETFROMSUBSTATEREQUEST")
  (make-package "ROBOTNIK_MSGS::RESETFROMSUBSTATEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::RESETFROMSUBSTATERESPONSE")
  (make-package "ROBOTNIK_MSGS::RESETFROMSUBSTATERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::ResetFromSubStateRequest
  :super ros::object
  :slots (_subState ))

(defmethod robotnik_msgs::ResetFromSubStateRequest
  (:init
   (&key
    ((:subState __subState) 0)
    )
   (send-super :init)
   (setq _subState (round __subState))
   self)
  (:subState
   (&optional __subState)
   (if __subState (setq _subState __subState)) _subState)
  (:serialization-length
   ()
   (+
    ;; int32 _subState
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _subState
       (write-long _subState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _subState
     (setq _subState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::ResetFromSubStateResponse
  :super ros::object
  :slots (_currentSubState _success _msg ))

(defmethod robotnik_msgs::ResetFromSubStateResponse
  (:init
   (&key
    ((:currentSubState __currentSubState) 0)
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _currentSubState (round __currentSubState))
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:currentSubState
   (&optional __currentSubState)
   (if __currentSubState (setq _currentSubState __currentSubState)) _currentSubState)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _currentSubState
    4
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _currentSubState
       (write-long _currentSubState s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _currentSubState
     (setq _currentSubState (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::ResetFromSubState
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::ResetFromSubState :md5sum-) "0692f61f0c43fdbd6f19facf658f4c39")
(setf (get robotnik_msgs::ResetFromSubState :datatype-) "robotnik_msgs/ResetFromSubState")
(setf (get robotnik_msgs::ResetFromSubState :request) robotnik_msgs::ResetFromSubStateRequest)
(setf (get robotnik_msgs::ResetFromSubState :response) robotnik_msgs::ResetFromSubStateResponse)

(defmethod robotnik_msgs::ResetFromSubStateRequest
  (:response () (instance robotnik_msgs::ResetFromSubStateResponse :init)))

(setf (get robotnik_msgs::ResetFromSubStateRequest :md5sum-) "0692f61f0c43fdbd6f19facf658f4c39")
(setf (get robotnik_msgs::ResetFromSubStateRequest :datatype-) "robotnik_msgs/ResetFromSubStateRequest")
(setf (get robotnik_msgs::ResetFromSubStateRequest :definition-)
      "#new substate
int32 subState

---

# substate of the component when change
int32 currentSubState

# The change is correct
bool success

# Text message - additional status information
string msg

")

(setf (get robotnik_msgs::ResetFromSubStateResponse :md5sum-) "0692f61f0c43fdbd6f19facf658f4c39")
(setf (get robotnik_msgs::ResetFromSubStateResponse :datatype-) "robotnik_msgs/ResetFromSubStateResponse")
(setf (get robotnik_msgs::ResetFromSubStateResponse :definition-)
      "#new substate
int32 subState

---

# substate of the component when change
int32 currentSubState

# The change is correct
bool success

# Text message - additional status information
string msg

")



(provide :robotnik_msgs/ResetFromSubState "0692f61f0c43fdbd6f19facf658f4c39")


