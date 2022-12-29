;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::WatchdogStatusArray)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'WatchdogStatusArray (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::WATCHDOGSTATUSARRAY")
  (make-package "ROBOTNIK_MSGS::WATCHDOGSTATUSARRAY"))

(in-package "ROS")
;;//! \htmlinclude WatchdogStatusArray.msg.html


(defclass robotnik_msgs::WatchdogStatusArray
  :super ros::object
  :slots (_status ))

(defmethod robotnik_msgs::WatchdogStatusArray
  (:init
   (&key
    ((:status __status) ())
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/WatchdogStatus[] _status
    (apply #'+ (send-all _status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/WatchdogStatus[] _status
     (write-long (length _status) s)
     (dolist (elem _status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/WatchdogStatus[] _status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _status (let (r) (dotimes (i n) (push (instance robotnik_msgs::WatchdogStatus :init) r)) r))
     (dolist (elem- _status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::WatchdogStatusArray :md5sum-) "1df2dbf9ebcb5eb8dc5708907e8cc240")
(setf (get robotnik_msgs::WatchdogStatusArray :datatype-) "robotnik_msgs/WatchdogStatusArray")
(setf (get robotnik_msgs::WatchdogStatusArray :definition-)
      "WatchdogStatus[] status

================================================================================
MSG: robotnik_msgs/WatchdogStatus
string id
# False if it's ok, True if fails
bool timed_out
string description

")



(provide :robotnik_msgs/WatchdogStatusArray "1df2dbf9ebcb5eb8dc5708907e8cc240")


