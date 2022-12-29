;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::MotorStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'MotorStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::MOTORSTATUS")
  (make-package "ROBOTNIK_MSGS::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html


(defclass robotnik_msgs::MotorStatus
  :super ros::object
  :slots (_can_id _joint _state _status _communicationstatus _mode_of_operation _activestatusword _activedriveflags _digitaloutputs _digitalinputs _current _analoginputs _statusword _driveflags ))

(defmethod robotnik_msgs::MotorStatus
  (:init
   (&key
    ((:can_id __can_id) 0)
    ((:joint __joint) "")
    ((:state __state) "")
    ((:status __status) "")
    ((:communicationstatus __communicationstatus) "")
    ((:mode_of_operation __mode_of_operation) "")
    ((:activestatusword __activestatusword) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:activedriveflags __activedriveflags) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:digitaloutputs __digitaloutputs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:digitalinputs __digitalinputs) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:current __current) 0.0)
    ((:analoginputs __analoginputs) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:statusword __statusword) "")
    ((:driveflags __driveflags) "")
    )
   (send-super :init)
   (setq _can_id (round __can_id))
   (setq _joint (string __joint))
   (setq _state (string __state))
   (setq _status (string __status))
   (setq _communicationstatus (string __communicationstatus))
   (setq _mode_of_operation (string __mode_of_operation))
   (setq _activestatusword __activestatusword)
   (setq _activedriveflags __activedriveflags)
   (setq _digitaloutputs __digitaloutputs)
   (setq _digitalinputs __digitalinputs)
   (setq _current (float __current))
   (setq _analoginputs __analoginputs)
   (setq _statusword (string __statusword))
   (setq _driveflags (string __driveflags))
   self)
  (:can_id
   (&optional __can_id)
   (if __can_id (setq _can_id __can_id)) _can_id)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:communicationstatus
   (&optional __communicationstatus)
   (if __communicationstatus (setq _communicationstatus __communicationstatus)) _communicationstatus)
  (:mode_of_operation
   (&optional __mode_of_operation)
   (if __mode_of_operation (setq _mode_of_operation __mode_of_operation)) _mode_of_operation)
  (:activestatusword
   (&optional __activestatusword)
   (if __activestatusword (setq _activestatusword __activestatusword)) _activestatusword)
  (:activedriveflags
   (&optional __activedriveflags)
   (if __activedriveflags (setq _activedriveflags __activedriveflags)) _activedriveflags)
  (:digitaloutputs
   (&optional __digitaloutputs)
   (if __digitaloutputs (setq _digitaloutputs __digitaloutputs)) _digitaloutputs)
  (:digitalinputs
   (&optional __digitalinputs)
   (if __digitalinputs (setq _digitalinputs __digitalinputs)) _digitalinputs)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:analoginputs
   (&optional __analoginputs)
   (if __analoginputs (setq _analoginputs __analoginputs)) _analoginputs)
  (:statusword
   (&optional __statusword)
   (if __statusword (setq _statusword __statusword)) _statusword)
  (:driveflags
   (&optional __driveflags)
   (if __driveflags (setq _driveflags __driveflags)) _driveflags)
  (:serialization-length
   ()
   (+
    ;; uint8 _can_id
    1
    ;; string _joint
    4 (length _joint)
    ;; string _state
    4 (length _state)
    ;; string _status
    4 (length _status)
    ;; string _communicationstatus
    4 (length _communicationstatus)
    ;; string _mode_of_operation
    4 (length _mode_of_operation)
    ;; string[] _activestatusword
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activestatusword)) 4
    ;; string[] _activedriveflags
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _activedriveflags)) 4
    ;; bool[] _digitaloutputs
    (* 1    (length _digitaloutputs)) 4
    ;; bool[] _digitalinputs
    (* 1    (length _digitalinputs)) 4
    ;; float32 _current
    4
    ;; float32[] _analoginputs
    (* 4    (length _analoginputs)) 4
    ;; string _statusword
    4 (length _statusword)
    ;; string _driveflags
    4 (length _driveflags)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _can_id
       (write-byte _can_id s)
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; string _communicationstatus
       (write-long (length _communicationstatus) s) (princ _communicationstatus s)
     ;; string _mode_of_operation
       (write-long (length _mode_of_operation) s) (princ _mode_of_operation s)
     ;; string[] _activestatusword
     (write-long (length _activestatusword) s)
     (dolist (elem _activestatusword)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _activedriveflags
     (write-long (length _activedriveflags) s)
     (dolist (elem _activedriveflags)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _digitaloutputs
     (write-long (length _digitaloutputs) s)
     (dotimes (i (length _digitaloutputs))
       (if (elt _digitaloutputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _digitalinputs
     (write-long (length _digitalinputs) s)
     (dotimes (i (length _digitalinputs))
       (if (elt _digitalinputs i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[] _analoginputs
     (write-long (length _analoginputs) s)
     (dotimes (i (length _analoginputs))
       (sys::poke (elt _analoginputs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string _statusword
       (write-long (length _statusword) s) (princ _statusword s)
     ;; string _driveflags
       (write-long (length _driveflags) s) (princ _driveflags s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _can_id
     (setq _can_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _communicationstatus
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _communicationstatus (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode_of_operation
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode_of_operation (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _activestatusword
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activestatusword (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _activestatusword i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _activedriveflags
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _activedriveflags (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _activedriveflags i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _digitaloutputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digitaloutputs (make-list n))
     (dotimes (i n)
     (setf (elt _digitaloutputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _digitalinputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _digitalinputs (make-list n))
     (dotimes (i n)
     (setf (elt _digitalinputs i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[] _analoginputs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _analoginputs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _analoginputs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string _statusword
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _statusword (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _driveflags
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _driveflags (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::MotorStatus :md5sum-) "f36d1740e4c2f57c8e2136e05837a2ca")
(setf (get robotnik_msgs::MotorStatus :datatype-) "robotnik_msgs/MotorStatus")
(setf (get robotnik_msgs::MotorStatus :definition-)
      "uint8 can_id
string joint
string state
string status
string communicationstatus
string mode_of_operation
string[] activestatusword
string[] activedriveflags
bool[] digitaloutputs
bool[] digitalinputs
float32 current
float32[] analoginputs
string statusword
string driveflags



")



(provide :robotnik_msgs/MotorStatus "f36d1740e4c2f57c8e2136e05837a2ca")


