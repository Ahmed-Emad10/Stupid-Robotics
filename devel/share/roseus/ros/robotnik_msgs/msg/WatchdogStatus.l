;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::WatchdogStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'WatchdogStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::WATCHDOGSTATUS")
  (make-package "ROBOTNIK_MSGS::WATCHDOGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WatchdogStatus.msg.html


(defclass robotnik_msgs::WatchdogStatus
  :super ros::object
  :slots (_id _timed_out _description ))

(defmethod robotnik_msgs::WatchdogStatus
  (:init
   (&key
    ((:id __id) "")
    ((:timed_out __timed_out) nil)
    ((:description __description) "")
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _timed_out __timed_out)
   (setq _description (string __description))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:timed_out
   (&optional (__timed_out :null))
   (if (not (eq __timed_out :null)) (setq _timed_out __timed_out)) _timed_out)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; bool _timed_out
    1
    ;; string _description
    4 (length _description)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; bool _timed_out
       (if _timed_out (write-byte -1 s) (write-byte 0 s))
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _timed_out
     (setq _timed_out (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::WatchdogStatus :md5sum-) "6eac41b9a2552a59aabed4f2aef62b65")
(setf (get robotnik_msgs::WatchdogStatus :datatype-) "robotnik_msgs/WatchdogStatus")
(setf (get robotnik_msgs::WatchdogStatus :definition-)
      "string id
# False if it's ok, True if fails
bool timed_out
string description

")



(provide :robotnik_msgs/WatchdogStatus "6eac41b9a2552a59aabed4f2aef62b65")


