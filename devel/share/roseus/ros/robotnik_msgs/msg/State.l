;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::State)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'State (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::STATE")
  (make-package "ROBOTNIK_MSGS::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(intern "*INIT_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*INIT_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*INIT_STATE* 100)
(intern "*STANDBY_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*STANDBY_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*STANDBY_STATE* 200)
(intern "*READY_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*READY_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*READY_STATE* 300)
(intern "*EMERGENCY_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*EMERGENCY_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*EMERGENCY_STATE* 400)
(intern "*FAILURE_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*FAILURE_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*FAILURE_STATE* 500)
(intern "*SHUTDOWN_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*SHUTDOWN_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*SHUTDOWN_STATE* 600)
(intern "*UNKOWN_STATE*" (find-package "ROBOTNIK_MSGS::STATE"))
(shadow '*UNKOWN_STATE* (find-package "ROBOTNIK_MSGS::STATE"))
(defconstant robotnik_msgs::State::*UNKOWN_STATE* 700)

(defun robotnik_msgs::State-to-symbol (const)
  (cond
        ((= const 100) 'robotnik_msgs::State::*INIT_STATE*)
        ((= const 200) 'robotnik_msgs::State::*STANDBY_STATE*)
        ((= const 300) 'robotnik_msgs::State::*READY_STATE*)
        ((= const 400) 'robotnik_msgs::State::*EMERGENCY_STATE*)
        ((= const 500) 'robotnik_msgs::State::*FAILURE_STATE*)
        ((= const 600) 'robotnik_msgs::State::*SHUTDOWN_STATE*)
        ((= const 700) 'robotnik_msgs::State::*UNKOWN_STATE*)
        (t nil)))

(defclass robotnik_msgs::State
  :super ros::object
  :slots (_state _desired_freq _real_freq _state_description ))

(defmethod robotnik_msgs::State
  (:init
   (&key
    ((:state __state) 0)
    ((:desired_freq __desired_freq) 0.0)
    ((:real_freq __real_freq) 0.0)
    ((:state_description __state_description) "")
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _desired_freq (float __desired_freq))
   (setq _real_freq (float __real_freq))
   (setq _state_description (string __state_description))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:desired_freq
   (&optional __desired_freq)
   (if __desired_freq (setq _desired_freq __desired_freq)) _desired_freq)
  (:real_freq
   (&optional __real_freq)
   (if __real_freq (setq _real_freq __real_freq)) _real_freq)
  (:state_description
   (&optional __state_description)
   (if __state_description (setq _state_description __state_description)) _state_description)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; float32 _desired_freq
    4
    ;; float32 _real_freq
    4
    ;; string _state_description
    4 (length _state_description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; float32 _desired_freq
       (sys::poke _desired_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _real_freq
       (sys::poke _real_freq (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _state_description
       (write-long (length _state_description) s) (princ _state_description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _desired_freq
     (setq _desired_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _real_freq
     (setq _real_freq (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _state_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::State :md5sum-) "b3a486e7c5d573e5d1475cd7c02a518b")
(setf (get robotnik_msgs::State :datatype-) "robotnik_msgs/State")
(setf (get robotnik_msgs::State :definition-)
      "# constants
int32 INIT_STATE = 100
int32 STANDBY_STATE = 200
int32 READY_STATE = 300
int32 EMERGENCY_STATE = 400
int32 FAILURE_STATE = 500
int32 SHUTDOWN_STATE = 600
int32 UNKOWN_STATE = 700

# state of the component
int32 state
# desired control loop frecuency
float32 desired_freq
# real frecuency 
float32 real_freq
# Description of the state
string state_description

")



(provide :robotnik_msgs/State "b3a486e7c5d573e5d1475cd7c02a518b")


