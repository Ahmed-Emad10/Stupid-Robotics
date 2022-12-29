;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SubState)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SubState (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SUBSTATE")
  (make-package "ROBOTNIK_MSGS::SUBSTATE"))

(in-package "ROS")
;;//! \htmlinclude SubState.msg.html


(defclass robotnik_msgs::SubState
  :super ros::object
  :slots (_substate _substate_description _msg ))

(defmethod robotnik_msgs::SubState
  (:init
   (&key
    ((:substate __substate) 0)
    ((:substate_description __substate_description) "")
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _substate (round __substate))
   (setq _substate_description (string __substate_description))
   (setq _msg (string __msg))
   self)
  (:substate
   (&optional __substate)
   (if __substate (setq _substate __substate)) _substate)
  (:substate_description
   (&optional __substate_description)
   (if __substate_description (setq _substate_description __substate_description)) _substate_description)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _substate
    4
    ;; string _substate_description
    4 (length _substate_description)
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _substate
       (write-long _substate s)
     ;; string _substate_description
       (write-long (length _substate_description) s) (princ _substate_description s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _substate
     (setq _substate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _substate_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _substate_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::SubState :md5sum-) "d67ef59716a56f2892e9ebccd174a9e5")
(setf (get robotnik_msgs::SubState :datatype-) "robotnik_msgs/SubState")
(setf (get robotnik_msgs::SubState :definition-)
      "
# substate of the component
# each component has its own state machines on each state 
int32 substate

# Description of the substate
string substate_description

# Text message - additional status information
string msg

")



(provide :robotnik_msgs/SubState "d67ef59716a56f2892e9ebccd174a9e5")


