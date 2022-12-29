;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::GetMotorsHeadingOffset)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'GetMotorsHeadingOffset (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSET")
  (make-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSET"))
(unless (find-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSETREQUEST")
  (make-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSETREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSETRESPONSE")
  (make-package "ROBOTNIK_MSGS::GETMOTORSHEADINGOFFSETRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass robotnik_msgs::GetMotorsHeadingOffsetRequest
  :super ros::object
  :slots (_request ))

(defmethod robotnik_msgs::GetMotorsHeadingOffsetRequest
  (:init
   (&key
    ((:request __request) (instance std_msgs::Empty :init))
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Empty _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Empty _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Empty _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::GetMotorsHeadingOffsetResponse
  :super ros::object
  :slots (_offsets ))

(defmethod robotnik_msgs::GetMotorsHeadingOffsetResponse
  (:init
   (&key
    ((:offsets __offsets) ())
    )
   (send-super :init)
   (setq _offsets __offsets)
   self)
  (:offsets
   (&rest __offsets)
   (if (keywordp (car __offsets))
       (send* _offsets __offsets)
     (progn
       (if __offsets (setq _offsets (car __offsets)))
       _offsets)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/MotorHeadingOffset[] _offsets
    (apply #'+ (send-all _offsets :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/MotorHeadingOffset[] _offsets
     (write-long (length _offsets) s)
     (dolist (elem _offsets)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/MotorHeadingOffset[] _offsets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offsets (let (r) (dotimes (i n) (push (instance robotnik_msgs::MotorHeadingOffset :init) r)) r))
     (dolist (elem- _offsets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass robotnik_msgs::GetMotorsHeadingOffset
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::GetMotorsHeadingOffset :md5sum-) "cdf947b0b6f5aca552a9fd0b8e9d235b")
(setf (get robotnik_msgs::GetMotorsHeadingOffset :datatype-) "robotnik_msgs/GetMotorsHeadingOffset")
(setf (get robotnik_msgs::GetMotorsHeadingOffset :request) robotnik_msgs::GetMotorsHeadingOffsetRequest)
(setf (get robotnik_msgs::GetMotorsHeadingOffset :response) robotnik_msgs::GetMotorsHeadingOffsetResponse)

(defmethod robotnik_msgs::GetMotorsHeadingOffsetRequest
  (:response () (instance robotnik_msgs::GetMotorsHeadingOffsetResponse :init)))

(setf (get robotnik_msgs::GetMotorsHeadingOffsetRequest :md5sum-) "cdf947b0b6f5aca552a9fd0b8e9d235b")
(setf (get robotnik_msgs::GetMotorsHeadingOffsetRequest :datatype-) "robotnik_msgs/GetMotorsHeadingOffsetRequest")
(setf (get robotnik_msgs::GetMotorsHeadingOffsetRequest :definition-)
      "std_msgs/Empty request

================================================================================
MSG: std_msgs/Empty
---
robotnik_msgs/MotorHeadingOffset[] offsets


================================================================================
MSG: robotnik_msgs/MotorHeadingOffset
int32 motor
float64 value
")

(setf (get robotnik_msgs::GetMotorsHeadingOffsetResponse :md5sum-) "cdf947b0b6f5aca552a9fd0b8e9d235b")
(setf (get robotnik_msgs::GetMotorsHeadingOffsetResponse :datatype-) "robotnik_msgs/GetMotorsHeadingOffsetResponse")
(setf (get robotnik_msgs::GetMotorsHeadingOffsetResponse :definition-)
      "std_msgs/Empty request

================================================================================
MSG: std_msgs/Empty
---
robotnik_msgs/MotorHeadingOffset[] offsets


================================================================================
MSG: robotnik_msgs/MotorHeadingOffset
int32 motor
float64 value
")



(provide :robotnik_msgs/GetMotorsHeadingOffset "cdf947b0b6f5aca552a9fd0b8e9d235b")


