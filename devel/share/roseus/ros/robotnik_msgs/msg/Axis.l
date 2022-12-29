;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Axis)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Axis (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::AXIS")
  (make-package "ROBOTNIK_MSGS::AXIS"))

(in-package "ROS")
;;//! \htmlinclude Axis.msg.html


(defclass robotnik_msgs::Axis
  :super ros::object
  :slots (_pan _tilt _zoom _focus _brightness _iris _autofocus _autoiris ))

(defmethod robotnik_msgs::Axis
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:zoom __zoom) 0.0)
    ((:focus __focus) 0.0)
    ((:brightness __brightness) 0.0)
    ((:iris __iris) 0.0)
    ((:autofocus __autofocus) nil)
    ((:autoiris __autoiris) nil)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _zoom (float __zoom))
   (setq _focus (float __focus))
   (setq _brightness (float __brightness))
   (setq _iris (float __iris))
   (setq _autofocus __autofocus)
   (setq _autoiris __autoiris)
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
  (:focus
   (&optional __focus)
   (if __focus (setq _focus __focus)) _focus)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:iris
   (&optional __iris)
   (if __iris (setq _iris __iris)) _iris)
  (:autofocus
   (&optional (__autofocus :null))
   (if (not (eq __autofocus :null)) (setq _autofocus __autofocus)) _autofocus)
  (:autoiris
   (&optional (__autoiris :null))
   (if (not (eq __autoiris :null)) (setq _autoiris __autoiris)) _autoiris)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; float32 _zoom
    4
    ;; float32 _focus
    4
    ;; float32 _brightness
    4
    ;; float32 _iris
    4
    ;; bool _autofocus
    1
    ;; bool _autoiris
    1
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
     ;; float32 _focus
       (sys::poke _focus (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brightness
       (sys::poke _brightness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _iris
       (sys::poke _iris (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _autofocus
       (if _autofocus (write-byte -1 s) (write-byte 0 s))
     ;; bool _autoiris
       (if _autoiris (write-byte -1 s) (write-byte 0 s))
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
   ;; float32 _focus
     (setq _focus (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brightness
     (setq _brightness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _iris
     (setq _iris (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _autofocus
     (setq _autofocus (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _autoiris
     (setq _autoiris (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotnik_msgs::Axis :md5sum-) "e5a99fe291a5635d3f85f17b629d8088")
(setf (get robotnik_msgs::Axis :datatype-) "robotnik_msgs/Axis")
(setf (get robotnik_msgs::Axis :definition-)
      "float32 pan
float32 tilt
float32 zoom
float32 focus
float32 brightness
float32 iris
bool autofocus
bool autoiris

")



(provide :robotnik_msgs/Axis "e5a99fe291a5635d3f85f17b629d8088")


