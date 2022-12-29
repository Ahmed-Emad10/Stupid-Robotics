;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorPID)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorPID (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORPID")
  (make-package "ROBOTNIK_MSGS::MOTORPID"))

(in-package "ROS")
;;//! \htmlinclude MotorPID.msg.html


(defclass robotnik_msgs::MotorPID
  :super ros::object
  :slots (_can_id _name _kp _ki _kd ))

(defmethod robotnik_msgs::MotorPID
  (:init
   (&key
    ((:can_id __can_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:kp __kp) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ki __ki) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:kd __kd) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _can_id __can_id)
   (setq _name __name)
   (setq _kp __kp)
   (setq _ki __ki)
   (setq _kd __kd)
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:serialization-length
   ()
   (+
    ;; int32[] _can_id
    (* 4    (length _can_id)) 4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float32[] _kp
    (* 4    (length _kp)) 4
    ;; float32[] _ki
    (* 4    (length _ki)) 4
    ;; float32[] _kd
    (* 4    (length _kd)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _can_id
     (write-long (length _can_id) s)
     (dotimes (i (length _can_id))
       (write-long (elt _can_id i) s)
       )
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _kp
     (write-long (length _kp) s)
     (dotimes (i (length _kp))
       (sys::poke (elt _kp i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ki
     (write-long (length _ki) s)
     (dotimes (i (length _ki))
       (sys::poke (elt _ki i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _kd
     (write-long (length _kd) s)
     (dotimes (i (length _kd))
       (sys::poke (elt _kd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _can_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _can_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _can_id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _kp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kp (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kp i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ki
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ki (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ki i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _kd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _kd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _kd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorPID :md5sum-) "a4f1747645e7d598483fc2ed471a485d")
(setf (get robotnik_msgs::MotorPID :datatype-) "robotnik_msgs/MotorPID")
(setf (get robotnik_msgs::MotorPID :definition-)
      "# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] kp
float32[] ki
float32[] kd

")



(provide :robotnik_msgs/MotorPID "a4f1747645e7d598483fc2ed471a485d")


