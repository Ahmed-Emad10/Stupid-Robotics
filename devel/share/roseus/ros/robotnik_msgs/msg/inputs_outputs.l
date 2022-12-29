;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::inputs_outputs)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'inputs_outputs (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::INPUTS_OUTPUTS")
  (make-package "ROBOTNIK_MSGS::INPUTS_OUTPUTS"))

(in-package "ROS")
;;//! \htmlinclude inputs_outputs.msg.html


(defclass robotnik_msgs::inputs_outputs
  :super ros::object
  :slots (_digital_inputs _digital_outputs _analog_inputs _analog_outputs ))

(defmethod robotnik_msgs::inputs_outputs
  (:init
   (&key
    ((:digital_inputs __digital_inputs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:digital_outputs __digital_outputs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:analog_inputs __analog_inputs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:analog_outputs __analog_outputs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _digital_inputs __digital_inputs)
   (setq _digital_outputs __digital_outputs)
   (setq _analog_inputs __analog_inputs)
   (setq _analog_outputs __analog_outputs)
   self)
  (:digital_inputs
   (&optional __digital_inputs)
   (if __digital_inputs (setq _digital_inputs __digital_inputs)) _digital_inputs)
  (:digital_outputs
   (&optional __digital_outputs)
   (if __digital_outputs (setq _digital_outputs __digital_outputs)) _digital_outputs)
  (:analog_inputs
   (&optional __analog_inputs)
   (if __analog_inputs (setq _analog_inputs __analog_inputs)) _analog_inputs)
  (:analog_outputs
   (&optional __analog_outputs)
   (if __analog_outputs (setq _analog_outputs __analog_outputs)) _analog_outputs)
  (:serialization-length
   ()
   (+
    ;; bool[] _digital_inputs
    (* 1    (length _digital_inputs)) 4
    ;; bool[] _digital_outputs
    (* 1    (length _digital_outputs)) 4
    ;; float32[] _analog_inputs
    (* 4    (length _analog_inputs)) 4
    ;; float32[] _analog_outputs
    (* 4    (length _analog_outputs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _digital_inputs
     (write-long (length _digital_inputs) s)
     (dotimes (i (length _digital_inputs))
       (if (elt _digital_inputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _digital_outputs
     (write-long (length _digital_outputs) s)
     (dotimes (i (length _digital_outputs))
       (if (elt _digital_outputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[] _analog_inputs
     (write-long (length _analog_inputs) s)
     (dotimes (i (length _analog_inputs))
       (sys::poke (elt _analog_inputs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _analog_outputs
     (write-long (length _analog_outputs) s)
     (dotimes (i (length _analog_outputs))
       (sys::poke (elt _analog_outputs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _digital_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_inputs (make-list n))
     (dotimes (i n)
     (setf (elt _digital_inputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _digital_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digital_outputs (make-list n))
     (dotimes (i n)
     (setf (elt _digital_outputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32[] _analog_inputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_inputs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _analog_inputs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _analog_outputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analog_outputs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _analog_outputs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::inputs_outputs :md5sum-) "219be75bd56b8ebdca0dfa526c3803be")
(setf (get robotnik_msgs::inputs_outputs :datatype-) "robotnik_msgs/inputs_outputs")
(setf (get robotnik_msgs::inputs_outputs :definition-)
      "bool[] digital_inputs
bool[] digital_outputs
float32[] analog_inputs
float32[] analog_outputs

")



(provide :robotnik_msgs/inputs_outputs "219be75bd56b8ebdca0dfa526c3803be")


