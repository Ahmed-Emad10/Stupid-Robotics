;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::Data)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'Data (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::DATA")
  (make-package "ROBOTNIK_MSGS::DATA"))

(in-package "ROS")
;;//! \htmlinclude Data.msg.html


(defclass robotnik_msgs::Data
  :super ros::object
  :slots (_interface _bytes_sent _bytes_received _units_sent _units_received _packages_sent _packages_received ))

(defmethod robotnik_msgs::Data
  (:init
   (&key
    ((:interface __interface) "")
    ((:bytes_sent __bytes_sent) 0.0)
    ((:bytes_received __bytes_received) 0.0)
    ((:units_sent __units_sent) "")
    ((:units_received __units_received) "")
    ((:packages_sent __packages_sent) 0)
    ((:packages_received __packages_received) 0)
    )
   (send-super :init)
   (setq _interface (string __interface))
   (setq _bytes_sent (float __bytes_sent))
   (setq _bytes_received (float __bytes_received))
   (setq _units_sent (string __units_sent))
   (setq _units_received (string __units_received))
   (setq _packages_sent (round __packages_sent))
   (setq _packages_received (round __packages_received))
   self)
  (:interface
   (&optional __interface)
   (if __interface (setq _interface __interface)) _interface)
  (:bytes_sent
   (&optional __bytes_sent)
   (if __bytes_sent (setq _bytes_sent __bytes_sent)) _bytes_sent)
  (:bytes_received
   (&optional __bytes_received)
   (if __bytes_received (setq _bytes_received __bytes_received)) _bytes_received)
  (:units_sent
   (&optional __units_sent)
   (if __units_sent (setq _units_sent __units_sent)) _units_sent)
  (:units_received
   (&optional __units_received)
   (if __units_received (setq _units_received __units_received)) _units_received)
  (:packages_sent
   (&optional __packages_sent)
   (if __packages_sent (setq _packages_sent __packages_sent)) _packages_sent)
  (:packages_received
   (&optional __packages_received)
   (if __packages_received (setq _packages_received __packages_received)) _packages_received)
  (:serialization-length
   ()
   (+
    ;; string _interface
    4 (length _interface)
    ;; float32 _bytes_sent
    4
    ;; float32 _bytes_received
    4
    ;; string _units_sent
    4 (length _units_sent)
    ;; string _units_received
    4 (length _units_received)
    ;; int32 _packages_sent
    4
    ;; int32 _packages_received
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _interface
       (write-long (length _interface) s) (princ _interface s)
     ;; float32 _bytes_sent
       (sys::poke _bytes_sent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bytes_received
       (sys::poke _bytes_received (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _units_sent
       (write-long (length _units_sent) s) (princ _units_sent s)
     ;; string _units_received
       (write-long (length _units_received) s) (princ _units_received s)
     ;; int32 _packages_sent
       (write-long _packages_sent s)
     ;; int32 _packages_received
       (write-long _packages_received s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _interface
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _interface (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _bytes_sent
     (setq _bytes_sent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bytes_received
     (setq _bytes_received (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _units_sent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _units_sent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _units_received
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _units_received (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _packages_sent
     (setq _packages_sent (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _packages_received
     (setq _packages_received (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robotnik_msgs::Data :md5sum-) "beae478f52d7795f673d8edc9e4295a2")
(setf (get robotnik_msgs::Data :datatype-) "robotnik_msgs/Data")
(setf (get robotnik_msgs::Data :definition-)
      "string interface
float32 bytes_sent
float32 bytes_received
string units_sent
string units_received
int32 packages_sent
int32 packages_received


")



(provide :robotnik_msgs/Data "beae478f52d7795f673d8edc9e4295a2")


