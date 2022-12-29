;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::GetPTZ)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'GetPTZ (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GETPTZ")
  (make-package "ROBOTNIK_MSGS::GETPTZ"))
(unless (find-package "ROBOTNIK_MSGS::GETPTZREQUEST")
  (make-package "ROBOTNIK_MSGS::GETPTZREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GETPTZRESPONSE")
  (make-package "ROBOTNIK_MSGS::GETPTZRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::GetPTZRequest
  :super ros::object
  :slots (_name ))

(defmethod robotnik_msgs::GetPTZRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::GetPTZResponse
  :super ros::object
  :slots (_success _pan _tilt _zoom _relative ))

(defmethod robotnik_msgs::GetPTZResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:zoom __zoom) 0.0)
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _success __success)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _zoom (float __zoom))
   (setq _relative __relative)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:zoom
   (&optional __zoom)
   (if __zoom (setq _zoom __zoom)) _zoom)
  (:relative
   (&optional (__relative :null))
   (if (not (eq __relative :null)) (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; float32 _zoom
    4
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zoom
       (sys::poke _zoom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zoom
     (setq _zoom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::GetPTZ
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::GetPTZ :md5sum-) "593cec5c2082b3b9a1de4fe76a27b17d")
(setf (get robotnik_msgs::GetPTZ :datatype-) "robotnik_msgs/GetPTZ")
(setf (get robotnik_msgs::GetPTZ :request) robotnik_msgs::GetPTZRequest)
(setf (get robotnik_msgs::GetPTZ :response) robotnik_msgs::GetPTZResponse)

(defmethod robotnik_msgs::GetPTZRequest
  (:response () (instance robotnik_msgs::GetPTZResponse :init)))

(setf (get robotnik_msgs::GetPTZRequest :md5sum-) "593cec5c2082b3b9a1de4fe76a27b17d")
(setf (get robotnik_msgs::GetPTZRequest :datatype-) "robotnik_msgs/GetPTZRequest")
(setf (get robotnik_msgs::GetPTZRequest :definition-)
      "string name
---
bool success
float32 pan
float32 tilt
float32 zoom
bool relative
")

(setf (get robotnik_msgs::GetPTZResponse :md5sum-) "593cec5c2082b3b9a1de4fe76a27b17d")
(setf (get robotnik_msgs::GetPTZResponse :datatype-) "robotnik_msgs/GetPTZResponse")
(setf (get robotnik_msgs::GetPTZResponse :definition-)
      "string name
---
bool success
float32 pan
float32 tilt
float32 zoom
bool relative
")



(provide :robotnik_msgs/GetPTZ "593cec5c2082b3b9a1de4fe76a27b17d")


