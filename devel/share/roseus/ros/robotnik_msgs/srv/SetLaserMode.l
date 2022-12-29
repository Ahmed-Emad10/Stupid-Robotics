;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetLaserMode)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetLaserMode (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETLASERMODE")
  (make-package "ROBOTNIK_MSGS::SETLASERMODE"))
(unless (find-package "ROBOTNIK_MSGS::SETLASERMODEREQUEST")
  (make-package "ROBOTNIK_MSGS::SETLASERMODEREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETLASERMODERESPONSE")
  (make-package "ROBOTNIK_MSGS::SETLASERMODERESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetLaserModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod robotnik_msgs::SetLaserModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::SetLaserModeResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetLaserModeResponse
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

(defclass robotnik_msgs::SetLaserMode
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetLaserMode :md5sum-) "b696448a6984c2e37a93990a5f048086")
(setf (get robotnik_msgs::SetLaserMode :datatype-) "robotnik_msgs/SetLaserMode")
(setf (get robotnik_msgs::SetLaserMode :request) robotnik_msgs::SetLaserModeRequest)
(setf (get robotnik_msgs::SetLaserMode :response) robotnik_msgs::SetLaserModeResponse)

(defmethod robotnik_msgs::SetLaserModeRequest
  (:response () (instance robotnik_msgs::SetLaserModeResponse :init)))

(setf (get robotnik_msgs::SetLaserModeRequest :md5sum-) "b696448a6984c2e37a93990a5f048086")
(setf (get robotnik_msgs::SetLaserModeRequest :datatype-) "robotnik_msgs/SetLaserModeRequest")
(setf (get robotnik_msgs::SetLaserModeRequest :definition-)
      "string mode
---
bool ret
")

(setf (get robotnik_msgs::SetLaserModeResponse :md5sum-) "b696448a6984c2e37a93990a5f048086")
(setf (get robotnik_msgs::SetLaserModeResponse :datatype-) "robotnik_msgs/SetLaserModeResponse")
(setf (get robotnik_msgs::SetLaserModeResponse :definition-)
      "string mode
---
bool ret
")



(provide :robotnik_msgs/SetLaserMode "b696448a6984c2e37a93990a5f048086")


