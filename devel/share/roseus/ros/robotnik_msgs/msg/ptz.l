;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::ptz)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'ptz (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::PTZ")
  (make-package "ROBOTNIK_MSGS::PTZ"))

(in-package "ROS")
;;//! \htmlinclude ptz.msg.html


(defclass robotnik_msgs::ptz
  :super ros::object
  :slots (_pan _tilt _zoom _relative _mode ))

(defmethod robotnik_msgs::ptz
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

(setf (get robotnik_msgs::ptz :md5sum-) "bdbbdf55b26c69882a03baf1effe8bc4")
(setf (get robotnik_msgs::ptz :datatype-) "robotnik_msgs/ptz")
(setf (get robotnik_msgs::ptz :definition-)
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


")



(provide :robotnik_msgs/ptz "bdbbdf55b26c69882a03baf1effe8bc4")


