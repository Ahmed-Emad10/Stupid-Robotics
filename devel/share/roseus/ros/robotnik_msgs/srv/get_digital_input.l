;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::get_digital_input)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'get_digital_input (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUT")
  (make-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUT"))
(unless (find-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUTREQUEST")
  (make-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUTRESPONSE")
  (make-package "ROBOTNIK_MSGS::GET_DIGITAL_INPUTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::get_digital_inputRequest
  :super ros::object
  :slots (_input ))

(defmethod robotnik_msgs::get_digital_inputRequest
  (:init
   (&key
    ((:input __input) 0)
    )
   (send-super :init)
   (setq _input (round __input))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:serialization-length
   ()
   (+
    ;; int8 _input
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _input
       (write-byte _input s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _input
     (setq _input (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _input 127) (setq _input (- _input 256)))
   ;;
   self)
  )

(defclass robotnik_msgs::get_digital_inputResponse
  :super ros::object
  :slots (_value ))

(defmethod robotnik_msgs::get_digital_inputResponse
  (:init
   (&key
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional (__value :null))
   (if (not (eq __value :null)) (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::get_digital_input
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::get_digital_input :md5sum-) "5b85083879fa36068de8cd28363930b7")
(setf (get robotnik_msgs::get_digital_input :datatype-) "robotnik_msgs/get_digital_input")
(setf (get robotnik_msgs::get_digital_input :request) robotnik_msgs::get_digital_inputRequest)
(setf (get robotnik_msgs::get_digital_input :response) robotnik_msgs::get_digital_inputResponse)

(defmethod robotnik_msgs::get_digital_inputRequest
  (:response () (instance robotnik_msgs::get_digital_inputResponse :init)))

(setf (get robotnik_msgs::get_digital_inputRequest :md5sum-) "5b85083879fa36068de8cd28363930b7")
(setf (get robotnik_msgs::get_digital_inputRequest :datatype-) "robotnik_msgs/get_digital_inputRequest")
(setf (get robotnik_msgs::get_digital_inputRequest :definition-)
      "int8 input
---
bool value

")

(setf (get robotnik_msgs::get_digital_inputResponse :md5sum-) "5b85083879fa36068de8cd28363930b7")
(setf (get robotnik_msgs::get_digital_inputResponse :datatype-) "robotnik_msgs/get_digital_inputResponse")
(setf (get robotnik_msgs::get_digital_inputResponse :definition-)
      "int8 input
---
bool value

")



(provide :robotnik_msgs/get_digital_input "5b85083879fa36068de8cd28363930b7")


