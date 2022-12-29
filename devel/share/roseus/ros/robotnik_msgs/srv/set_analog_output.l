;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_analog_output)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_analog_output (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUT")
  (make-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUT"))
(unless (find-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUTREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_ANALOG_OUTPUTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_analog_outputRequest
  :super ros::object
  :slots (_output _value ))

(defmethod robotnik_msgs::set_analog_outputRequest
  (:init
   (&key
    ((:output __output) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _output (round __output))
   (setq _value (float __value))
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _output
    1
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _output
       (write-byte _output s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _output
     (setq _output (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _output 127) (setq _output (- _output 256)))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::set_analog_outputResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_analog_outputResponse
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

(defclass robotnik_msgs::set_analog_output
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_analog_output :md5sum-) "1f857604e9e8f27790b5ef70d33fca08")
(setf (get robotnik_msgs::set_analog_output :datatype-) "robotnik_msgs/set_analog_output")
(setf (get robotnik_msgs::set_analog_output :request) robotnik_msgs::set_analog_outputRequest)
(setf (get robotnik_msgs::set_analog_output :response) robotnik_msgs::set_analog_outputResponse)

(defmethod robotnik_msgs::set_analog_outputRequest
  (:response () (instance robotnik_msgs::set_analog_outputResponse :init)))

(setf (get robotnik_msgs::set_analog_outputRequest :md5sum-) "1f857604e9e8f27790b5ef70d33fca08")
(setf (get robotnik_msgs::set_analog_outputRequest :datatype-) "robotnik_msgs/set_analog_outputRequest")
(setf (get robotnik_msgs::set_analog_outputRequest :definition-)
      "int8 output
float32 value
---
bool ret 

")

(setf (get robotnik_msgs::set_analog_outputResponse :md5sum-) "1f857604e9e8f27790b5ef70d33fca08")
(setf (get robotnik_msgs::set_analog_outputResponse :datatype-) "robotnik_msgs/set_analog_outputResponse")
(setf (get robotnik_msgs::set_analog_outputResponse :definition-)
      "int8 output
float32 value
---
bool ret 

")



(provide :robotnik_msgs/set_analog_output "1f857604e9e8f27790b5ef70d33fca08")


