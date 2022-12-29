;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::named_inputs_outputs)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'named_inputs_outputs (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::NAMED_INPUTS_OUTPUTS")
  (make-package "ROBOTNIK_MSGS::NAMED_INPUTS_OUTPUTS"))

(in-package "ROS")
;;//! \htmlinclude named_inputs_outputs.msg.html


(defclass robotnik_msgs::named_inputs_outputs
  :super ros::object
  :slots (_digital_inputs _digital_outputs ))

(defmethod robotnik_msgs::named_inputs_outputs
  (:init
   (&key
    ((:digital_inputs __digital_inputs) ())
    ((:digital_outputs __digital_outputs) ())
    )
   (send-super :init)
   (setq _digital_inputs __digital_inputs)
   (setq _digital_outputs __digital_outputs)
   self)
  (:digital_inputs
   (&rest __digital_inputs)
   (if (keywordp (car __digital_inputs))
       (send* _digital_inputs __digital_inputs)
     (progn
       (if __digital_inputs (setq _digital_inputs (car __digital_inputs)))
       _digital_inputs)))
  (:digital_outputs
   (&rest __digital_outputs)
   (if (keywordp (car __digital_outputs))
       (send* _digital_outputs __digital_outputs)
     (progn
       (if __digital_outputs (setq _digital_outputs (car __digital_outputs)))
       _digital_outputs)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/named_input_output[] _digital_inputs
    (apply #'+ (send-all _digital_inputs :serialization-length)) 4
    ;; robotnik_msgs/named_input_output[] _digital_outputs
    (apply #'+ (send-all _digital_outputs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/named_input_output[] _digital_inputs
     (write-long (length _digital_inputs) s)
     (dolist (elem _digital_inputs)
       (send elem :serialize s)
       )
     ;; robotnik_msgs/named_input_output[] _digital_outputs
     (write-long (length _digital_outputs) s)
     (dolist (elem _digital_outputs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/named_input_output[] _digital_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_inputs (let (r) (dotimes (i n) (push (instance robotnik_msgs::named_input_output :init) r)) r))
     (dolist (elem- _digital_inputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; robotnik_msgs/named_input_output[] _digital_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_outputs (let (r) (dotimes (i n) (push (instance robotnik_msgs::named_input_output :init) r)) r))
     (dolist (elem- _digital_outputs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::named_inputs_outputs :md5sum-) "e3301c19a16019595490fc28259868bd")
(setf (get robotnik_msgs::named_inputs_outputs :datatype-) "robotnik_msgs/named_inputs_outputs")
(setf (get robotnik_msgs::named_inputs_outputs :definition-)
      "robotnik_msgs/named_input_output[] digital_inputs
robotnik_msgs/named_input_output[] digital_outputs
================================================================================
MSG: robotnik_msgs/named_input_output
string name
bool value
")



(provide :robotnik_msgs/named_inputs_outputs "e3301c19a16019595490fc28259868bd")


