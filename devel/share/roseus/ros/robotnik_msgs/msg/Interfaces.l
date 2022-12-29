;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Interfaces)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Interfaces (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::INTERFACES")
  (make-package "ROBOTNIK_MSGS::INTERFACES"))

(in-package "ROS")
;;//! \htmlinclude Interfaces.msg.html


(defclass robotnik_msgs::Interfaces
  :super ros::object
  :slots (_total _interfaces ))

(defmethod robotnik_msgs::Interfaces
  (:init
   (&key
    ((:total __total) (instance robotnik_msgs::Data :init))
    ((:interfaces __interfaces) ())
    )
   (send-super :init)
   (setq _total __total)
   (setq _interfaces __interfaces)
   self)
  (:total
   (&rest __total)
   (if (keywordp (car __total))
       (send* _total __total)
     (progn
       (if __total (setq _total (car __total)))
       _total)))
  (:interfaces
   (&rest __interfaces)
   (if (keywordp (car __interfaces))
       (send* _interfaces __interfaces)
     (progn
       (if __interfaces (setq _interfaces (car __interfaces)))
       _interfaces)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/Data _total
    (send _total :serialization-length)
    ;; robotnik_msgs/Data[] _interfaces
    (apply #'+ (send-all _interfaces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/Data _total
       (send _total :serialize s)
     ;; robotnik_msgs/Data[] _interfaces
     (write-long (length _interfaces) s)
     (dolist (elem _interfaces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/Data _total
     (send _total :deserialize buf ptr-) (incf ptr- (send _total :serialization-length))
   ;; robotnik_msgs/Data[] _interfaces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _interfaces (let (r) (dotimes (i n) (push (instance robotnik_msgs::Data :init) r)) r))
     (dolist (elem- _interfaces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::Interfaces :md5sum-) "2cae798f4cdadfdb2326b84ac55dc3ea")
(setf (get robotnik_msgs::Interfaces :datatype-) "robotnik_msgs/Interfaces")
(setf (get robotnik_msgs::Interfaces :definition-)
      "# Contains the total number of bytes and pkts
Data total
# Contains information of every interface
Data[] interfaces


================================================================================
MSG: robotnik_msgs/Data
string interface
float32 bytes_sent
float32 bytes_received
string units_sent
string units_received
int32 packages_sent
int32 packages_received


")



(provide :robotnik_msgs/Interfaces "2cae798f4cdadfdb2326b84ac55dc3ea")


