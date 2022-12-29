;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_named_digital_output)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_named_digital_output (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUT")
  (make-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUT"))
(unless (find-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUTREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_NAMED_DIGITAL_OUTPUTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_named_digital_outputRequest
  :super ros::object
  :slots (_name _value ))

(defmethod robotnik_msgs::set_named_digital_outputRequest
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

(defclass robotnik_msgs::set_named_digital_outputResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_named_digital_outputResponse
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

(defclass robotnik_msgs::set_named_digital_output
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_named_digital_output :md5sum-) "fd68dfc7158f5579e9ee788e5ede364e")
(setf (get robotnik_msgs::set_named_digital_output :datatype-) "robotnik_msgs/set_named_digital_output")
(setf (get robotnik_msgs::set_named_digital_output :request) robotnik_msgs::set_named_digital_outputRequest)
(setf (get robotnik_msgs::set_named_digital_output :response) robotnik_msgs::set_named_digital_outputResponse)

(defmethod robotnik_msgs::set_named_digital_outputRequest
  (:response () (instance robotnik_msgs::set_named_digital_outputResponse :init)))

(setf (get robotnik_msgs::set_named_digital_outputRequest :md5sum-) "fd68dfc7158f5579e9ee788e5ede364e")
(setf (get robotnik_msgs::set_named_digital_outputRequest :datatype-) "robotnik_msgs/set_named_digital_outputRequest")
(setf (get robotnik_msgs::set_named_digital_outputRequest :definition-)
      "string name
bool value
---
bool ret
")

(setf (get robotnik_msgs::set_named_digital_outputResponse :md5sum-) "fd68dfc7158f5579e9ee788e5ede364e")
(setf (get robotnik_msgs::set_named_digital_outputResponse :datatype-) "robotnik_msgs/set_named_digital_outputResponse")
(setf (get robotnik_msgs::set_named_digital_outputResponse :definition-)
      "string name
bool value
---
bool ret
")



(provide :robotnik_msgs/set_named_digital_output "fd68dfc7158f5579e9ee788e5ede364e")


