;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::get_mode)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'get_mode (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GET_MODE")
  (make-package "ROBOTNIK_MSGS::GET_MODE"))
(unless (find-package "ROBOTNIK_MSGS::GET_MODEREQUEST")
  (make-package "ROBOTNIK_MSGS::GET_MODEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GET_MODERESPONSE")
  (make-package "ROBOTNIK_MSGS::GET_MODERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::get_modeRequest
  :super ros::object
  :slots ())

(defmethod robotnik_msgs::get_modeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass robotnik_msgs::get_modeResponse
  :super ros::object
  :slots (_mode ))

(defmethod robotnik_msgs::get_modeResponse
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int8 _mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _mode
       (write-byte _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _mode 127) (setq _mode (- _mode 256)))
   ;;
   self)
  )

(defclass robotnik_msgs::get_mode
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::get_mode :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get robotnik_msgs::get_mode :datatype-) "robotnik_msgs/get_mode")
(setf (get robotnik_msgs::get_mode :request) robotnik_msgs::get_modeRequest)
(setf (get robotnik_msgs::get_mode :response) robotnik_msgs::get_modeResponse)

(defmethod robotnik_msgs::get_modeRequest
  (:response () (instance robotnik_msgs::get_modeResponse :init)))

(setf (get robotnik_msgs::get_modeRequest :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get robotnik_msgs::get_modeRequest :datatype-) "robotnik_msgs/get_modeRequest")
(setf (get robotnik_msgs::get_modeRequest :definition-)
      "---
int8 mode

")

(setf (get robotnik_msgs::get_modeResponse :md5sum-) "418c02483a8ca57215fb7b31c5c87234")
(setf (get robotnik_msgs::get_modeResponse :datatype-) "robotnik_msgs/get_modeResponse")
(setf (get robotnik_msgs::get_modeResponse :definition-)
      "---
int8 mode

")



(provide :robotnik_msgs/get_mode "418c02483a8ca57215fb7b31c5c87234")


