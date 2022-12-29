;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorCurrent)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorCurrent (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORCURRENT")
  (make-package "ROBOTNIK_MSGS::MOTORCURRENT"))

(in-package "ROS")
;;//! \htmlinclude MotorCurrent.msg.html


(defclass robotnik_msgs::MotorCurrent
  :super ros::object
  :slots (_can_id _name _continuous_current_limit _current_peak_time _current_peak_limit ))

(defmethod robotnik_msgs::MotorCurrent
  (:init
   (&key
    ((:can_id __can_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:continuous_current_limit __continuous_current_limit) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_peak_time __current_peak_time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_peak_limit __current_peak_limit) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _can_id __can_id)
   (setq _name __name)
   (setq _continuous_current_limit __continuous_current_limit)
   (setq _current_peak_time __current_peak_time)
   (setq _current_peak_limit __current_peak_limit)
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:continuous_current_limit
   (&optional __continuous_current_limit)
   (if __continuous_current_limit (setq _continuous_current_limit __continuous_current_limit)) _continuous_current_limit)
  (:current_peak_time
   (&optional __current_peak_time)
   (if __current_peak_time (setq _current_peak_time __current_peak_time)) _current_peak_time)
  (:current_peak_limit
   (&optional __current_peak_limit)
   (if __current_peak_limit (setq _current_peak_limit __current_peak_limit)) _current_peak_limit)
  (:serialization-length
   ()
   (+
    ;; int32[] _can_id
    (* 4    (length _can_id)) 4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float32[] _continuous_current_limit
    (* 4    (length _continuous_current_limit)) 4
    ;; float32[] _current_peak_time
    (* 4    (length _current_peak_time)) 4
    ;; float32[] _current_peak_limit
    (* 4    (length _current_peak_limit)) 4
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
     ;; float32[] _continuous_current_limit
     (write-long (length _continuous_current_limit) s)
     (dotimes (i (length _continuous_current_limit))
       (sys::poke (elt _continuous_current_limit i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _current_peak_time
     (write-long (length _current_peak_time) s)
     (dotimes (i (length _current_peak_time))
       (sys::poke (elt _current_peak_time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _current_peak_limit
     (write-long (length _current_peak_limit) s)
     (dotimes (i (length _current_peak_limit))
       (sys::poke (elt _current_peak_limit i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _continuous_current_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _continuous_current_limit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _continuous_current_limit i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _current_peak_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_peak_time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_peak_time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _current_peak_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_peak_limit (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_peak_limit i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorCurrent :md5sum-) "683e2e0ea0c1b322bc7f35b2f02088ee")
(setf (get robotnik_msgs::MotorCurrent :datatype-) "robotnik_msgs/MotorCurrent")
(setf (get robotnik_msgs::MotorCurrent :definition-)
      "# either can_id or name are set
# if can_id is -1, then this refers to all motors.
int32[] can_id
string[] name
float32[] continuous_current_limit # Amperes
float32[] current_peak_time # Seconds
float32[] current_peak_limit # Amperes
")



(provide :robotnik_msgs/MotorCurrent "683e2e0ea0c1b322bc7f35b2f02088ee")


