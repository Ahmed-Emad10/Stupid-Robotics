;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_mode)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_mode (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_MODE")
  (make-package "ROBOTNIK_MSGS::SET_MODE"))
(unless (find-package "ROBOTNIK_MSGS::SET_MODEREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_MODEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_MODERESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_MODERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_modeRequest
  :super ros::object
  :slots (_mode ))

(defmethod robotnik_msgs::set_modeRequest
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

(defclass robotnik_msgs::set_modeResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_modeResponse
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

(defclass robotnik_msgs::set_mode
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_mode :md5sum-) "961700910d81510cfbb56c2b771e2e2f")
(setf (get robotnik_msgs::set_mode :datatype-) "robotnik_msgs/set_mode")
(setf (get robotnik_msgs::set_mode :request) robotnik_msgs::set_modeRequest)
(setf (get robotnik_msgs::set_mode :response) robotnik_msgs::set_modeResponse)

(defmethod robotnik_msgs::set_modeRequest
  (:response () (instance robotnik_msgs::set_modeResponse :init)))

(setf (get robotnik_msgs::set_modeRequest :md5sum-) "961700910d81510cfbb56c2b771e2e2f")
(setf (get robotnik_msgs::set_modeRequest :datatype-) "robotnik_msgs/set_modeRequest")
(setf (get robotnik_msgs::set_modeRequest :definition-)
      "# Set control / kinematic / etc. mode
int8 mode
---
bool ret

")

(setf (get robotnik_msgs::set_modeResponse :md5sum-) "961700910d81510cfbb56c2b771e2e2f")
(setf (get robotnik_msgs::set_modeResponse :datatype-) "robotnik_msgs/set_modeResponse")
(setf (get robotnik_msgs::set_modeResponse :definition-)
      "# Set control / kinematic / etc. mode
int8 mode
---
bool ret

")



(provide :robotnik_msgs/set_mode "961700910d81510cfbb56c2b771e2e2f")


