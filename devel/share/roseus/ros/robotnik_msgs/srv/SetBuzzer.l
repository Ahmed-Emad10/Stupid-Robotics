;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetBuzzer)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetBuzzer (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETBUZZER")
  (make-package "ROBOTNIK_MSGS::SETBUZZER"))
(unless (find-package "ROBOTNIK_MSGS::SETBUZZERREQUEST")
  (make-package "ROBOTNIK_MSGS::SETBUZZERREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETBUZZERRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETBUZZERRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetBuzzerRequest
  :super ros::object
  :slots (_enable _beep_freq _time_enabled ))

(defmethod robotnik_msgs::SetBuzzerRequest
  (:init
   (&key
    ((:enable __enable) nil)
    ((:beep_freq __beep_freq) 0.0)
    ((:time_enabled __time_enabled) 0.0)
    )
   (send-super :init)
   (setq _enable __enable)
   (setq _beep_freq (float __beep_freq))
   (setq _time_enabled (float __time_enabled))
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:beep_freq
   (&optional __beep_freq)
   (if __beep_freq (setq _beep_freq __beep_freq)) _beep_freq)
  (:time_enabled
   (&optional __time_enabled)
   (if __time_enabled (setq _time_enabled __time_enabled)) _time_enabled)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ;; float64 _beep_freq
    8
    ;; float64 _time_enabled
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; float64 _beep_freq
       (sys::poke _beep_freq (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_enabled
       (sys::poke _time_enabled (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _beep_freq
     (setq _beep_freq (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_enabled
     (setq _time_enabled (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass robotnik_msgs::SetBuzzerResponse
  :super ros::object
  :slots (_msg _ret ))

(defmethod robotnik_msgs::SetBuzzerResponse
  (:init
   (&key
    ((:msg __msg) "")
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _msg (string __msg))
   (setq _ret __ret)
   self)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; string _msg
    4 (length _msg)
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::SetBuzzer
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetBuzzer :md5sum-) "41793a7387718993b9d0e132905ea3e3")
(setf (get robotnik_msgs::SetBuzzer :datatype-) "robotnik_msgs/SetBuzzer")
(setf (get robotnik_msgs::SetBuzzer :request) robotnik_msgs::SetBuzzerRequest)
(setf (get robotnik_msgs::SetBuzzer :response) robotnik_msgs::SetBuzzerResponse)

(defmethod robotnik_msgs::SetBuzzerRequest
  (:response () (instance robotnik_msgs::SetBuzzerResponse :init)))

(setf (get robotnik_msgs::SetBuzzerRequest :md5sum-) "41793a7387718993b9d0e132905ea3e3")
(setf (get robotnik_msgs::SetBuzzerRequest :datatype-) "robotnik_msgs/SetBuzzerRequest")
(setf (get robotnik_msgs::SetBuzzerRequest :definition-)
      "bool enable
float64 beep_freq
float64 time_enabled
---
string msg
bool ret

")

(setf (get robotnik_msgs::SetBuzzerResponse :md5sum-) "41793a7387718993b9d0e132905ea3e3")
(setf (get robotnik_msgs::SetBuzzerResponse :datatype-) "robotnik_msgs/SetBuzzerResponse")
(setf (get robotnik_msgs::SetBuzzerResponse :definition-)
      "bool enable
float64 beep_freq
float64 time_enabled
---
string msg
bool ret

")



(provide :robotnik_msgs/SetBuzzer "41793a7387718993b9d0e132905ea3e3")


