;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::named_input_output)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'named_input_output (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::NAMED_INPUT_OUTPUT")
  (make-package "ROBOTNIK_MSGS::NAMED_INPUT_OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude named_input_output.msg.html


(defclass robotnik_msgs::named_input_output
  :super ros::object
  :slots (_name _value ))

(defmethod robotnik_msgs::named_input_output
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

(setf (get robotnik_msgs::named_input_output :md5sum-) "23f05028c1a699fb83e22401228c3a9e")
(setf (get robotnik_msgs::named_input_output :datatype-) "robotnik_msgs/named_input_output")
(setf (get robotnik_msgs::named_input_output :definition-)
      "string name
bool value
")



(provide :robotnik_msgs/named_input_output "23f05028c1a699fb83e22401228c3a9e")


