;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_ptz)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_ptz (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_PTZ")
  (make-package "ROBOTNIK_MSGS::SET_PTZ"))
(unless (find-package "ROBOTNIK_MSGS::SET_PTZREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_PTZREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_PTZRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_PTZRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_ptzRequest
  :super ros::object
  :slots (_pan _tilt _zoom _relative _mode ))

(defmethod robotnik_msgs::set_ptzRequest
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:zoom __zoom) 0.0)
    ((:relative __relative) nil)
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _zoom (float __zoom))
   (setq _relative __relative)
   (setq _mode (string __mode))
   self)
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
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; float32 _zoom
    4
    ;; bool _relative
    1
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zoom
       (sys::poke _zoom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zoom
     (setq _zoom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::set_ptzResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_ptzResponse
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

(defclass robotnik_msgs::set_ptz
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_ptz :md5sum-) "647fede79ebbfd6acc8a04dc504f10b2")
(setf (get robotnik_msgs::set_ptz :datatype-) "robotnik_msgs/set_ptz")
(setf (get robotnik_msgs::set_ptz :request) robotnik_msgs::set_ptzRequest)
(setf (get robotnik_msgs::set_ptz :response) robotnik_msgs::set_ptzResponse)

(defmethod robotnik_msgs::set_ptzRequest
  (:response () (instance robotnik_msgs::set_ptzResponse :init)))

(setf (get robotnik_msgs::set_ptzRequest :md5sum-) "647fede79ebbfd6acc8a04dc504f10b2")
(setf (get robotnik_msgs::set_ptzRequest :datatype-) "robotnik_msgs/set_ptzRequest")
(setf (get robotnik_msgs::set_ptzRequest :definition-)
      "# PAN value
float32 pan
# Tilt value
float32 tilt
# Zoom value
float32 zoom
# Flag for relative  movements
bool relative
# Position or speed mode
string mode
---
bool ret 

")

(setf (get robotnik_msgs::set_ptzResponse :md5sum-) "647fede79ebbfd6acc8a04dc504f10b2")
(setf (get robotnik_msgs::set_ptzResponse :datatype-) "robotnik_msgs/set_ptzResponse")
(setf (get robotnik_msgs::set_ptzResponse :definition-)
      "# PAN value
float32 pan
# Tilt value
float32 tilt
# Zoom value
float32 zoom
# Flag for relative  movements
bool relative
# Position or speed mode
string mode
---
bool ret 

")



(provide :robotnik_msgs/set_ptz "647fede79ebbfd6acc8a04dc504f10b2")


