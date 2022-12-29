;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetNamedDigitalOutput)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetNamedDigitalOutput (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUT")
  (make-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUT"))
(unless (find-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUTREQUEST")
  (make-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETNAMEDDIGITALOUTPUTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetNamedDigitalOutputRequest
  :super ros::object
  :slots (_name _value ))

(defmethod robotnik_msgs::SetNamedDigitalOutputRequest
  (:init
   (&key
    ((:name __name) "")
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _value __value)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::SetNamedDigitalOutputResponse
  :super ros::object
  :slots (_ret _msg ))

(defmethod robotnik_msgs::SetNamedDigitalOutputResponse
  (:init
   (&key
    ((:ret __ret) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _ret __ret)
   (setq _msg (string __msg))
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::SetNamedDigitalOutput
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetNamedDigitalOutput :md5sum-) "2025a1879a2ece340190f3058951822d")
(setf (get robotnik_msgs::SetNamedDigitalOutput :datatype-) "robotnik_msgs/SetNamedDigitalOutput")
(setf (get robotnik_msgs::SetNamedDigitalOutput :request) robotnik_msgs::SetNamedDigitalOutputRequest)
(setf (get robotnik_msgs::SetNamedDigitalOutput :response) robotnik_msgs::SetNamedDigitalOutputResponse)

(defmethod robotnik_msgs::SetNamedDigitalOutputRequest
  (:response () (instance robotnik_msgs::SetNamedDigitalOutputResponse :init)))

(setf (get robotnik_msgs::SetNamedDigitalOutputRequest :md5sum-) "2025a1879a2ece340190f3058951822d")
(setf (get robotnik_msgs::SetNamedDigitalOutputRequest :datatype-) "robotnik_msgs/SetNamedDigitalOutputRequest")
(setf (get robotnik_msgs::SetNamedDigitalOutputRequest :definition-)
      "string name
bool value
---
bool ret
string msg

")

(setf (get robotnik_msgs::SetNamedDigitalOutputResponse :md5sum-) "2025a1879a2ece340190f3058951822d")
(setf (get robotnik_msgs::SetNamedDigitalOutputResponse :datatype-) "robotnik_msgs/SetNamedDigitalOutputResponse")
(setf (get robotnik_msgs::SetNamedDigitalOutputResponse :definition-)
      "string name
bool value
---
bool ret
string msg

")



(provide :robotnik_msgs/SetNamedDigitalOutput "2025a1879a2ece340190f3058951822d")


