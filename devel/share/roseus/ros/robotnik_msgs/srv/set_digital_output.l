;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_digital_output)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_digital_output (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUT")
  (make-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUT"))
(unless (find-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUTREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_DIGITAL_OUTPUTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_digital_outputRequest
  :super ros::object
  :slots (_output _value ))

(defmethod robotnik_msgs::set_digital_outputRequest
  (:init
   (&key
    ((:output __output) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _output (round __output))
   (setq _value __value)
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _output
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _output
       (write-byte _output s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _output
     (setq _output (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _output 127) (setq _output (- _output 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::set_digital_outputResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_digital_outputResponse
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

(defclass robotnik_msgs::set_digital_output
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_digital_output :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get robotnik_msgs::set_digital_output :datatype-) "robotnik_msgs/set_digital_output")
(setf (get robotnik_msgs::set_digital_output :request) robotnik_msgs::set_digital_outputRequest)
(setf (get robotnik_msgs::set_digital_output :response) robotnik_msgs::set_digital_outputResponse)

(defmethod robotnik_msgs::set_digital_outputRequest
  (:response () (instance robotnik_msgs::set_digital_outputResponse :init)))

(setf (get robotnik_msgs::set_digital_outputRequest :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get robotnik_msgs::set_digital_outputRequest :datatype-) "robotnik_msgs/set_digital_outputRequest")
(setf (get robotnik_msgs::set_digital_outputRequest :definition-)
      "int8 output
bool value
---
bool ret 

")

(setf (get robotnik_msgs::set_digital_outputResponse :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get robotnik_msgs::set_digital_outputResponse :datatype-) "robotnik_msgs/set_digital_outputResponse")
(setf (get robotnik_msgs::set_digital_outputResponse :definition-)
      "int8 output
bool value
---
bool ret 

")



(provide :robotnik_msgs/set_digital_output "5df94efb72fc0f5277220bfb51b87d14")


