;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::InverterStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'InverterStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::INVERTERSTATUS")
  (make-package "ROBOTNIK_MSGS::INVERTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude InverterStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robotnik_msgs::InverterStatus
  :super ros::object
  :slots (_header _ac_voltage _dc_voltage _load _percentage _temperature _on _serial_number ))

(defmethod robotnik_msgs::InverterStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ac_voltage __ac_voltage) 0.0)
    ((:dc_voltage __dc_voltage) 0.0)
    ((:load __load) 0.0)
    ((:percentage __percentage) 0.0)
    ((:temperature __temperature) 0.0)
    ((:on __on) nil)
    ((:serial_number __serial_number) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _ac_voltage (float __ac_voltage))
   (setq _dc_voltage (float __dc_voltage))
   (setq _load (float __load))
   (setq _percentage (float __percentage))
   (setq _temperature (float __temperature))
   (setq _on __on)
   (setq _serial_number (string __serial_number))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ac_voltage
   (&optional __ac_voltage)
   (if __ac_voltage (setq _ac_voltage __ac_voltage)) _ac_voltage)
  (:dc_voltage
   (&optional __dc_voltage)
   (if __dc_voltage (setq _dc_voltage __dc_voltage)) _dc_voltage)
  (:load
   (&optional __load)
   (if __load (setq _load __load)) _load)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:on
   (&optional (__on :null))
   (if (not (eq __on :null)) (setq _on __on)) _on)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _ac_voltage
    4
    ;; float32 _dc_voltage
    4
    ;; float32 _load
    4
    ;; float32 _percentage
    4
    ;; float32 _temperature
    4
    ;; bool _on
    1
    ;; string _serial_number
    4 (length _serial_number)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _ac_voltage
       (sys::poke _ac_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dc_voltage
       (sys::poke _dc_voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _load
       (sys::poke _load (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _percentage
       (sys::poke _percentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;; string _serial_number
       (write-long (length _serial_number) s) (princ _serial_number s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _ac_voltage
     (setq _ac_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dc_voltage
     (setq _dc_voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _load
     (setq _load (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _percentage
     (setq _percentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _serial_number
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serial_number (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::InverterStatus :md5sum-) "d693ae8f6a65a0d35c771d1a15a9e199")
(setf (get robotnik_msgs::InverterStatus :datatype-) "robotnik_msgs/InverterStatus")
(setf (get robotnik_msgs::InverterStatus :definition-)
      "Header  header
float32 ac_voltage       # Output Voltage in Volts (Mandatory)
float32 dc_voltage       # Input Voltage in Volts (If unmeasured NaN)
float32 load             # Current percentage load on 0 to 1 range (If unmeasured NaN)
float32 percentage       # Charge percentage on 0 to 1 range (If unmeasured NaN)
float32 temperature      # Current temperature in centigrads (If unmeasured NaN)
bool    on               # True if the inverter is on

string serial_number     # The best approximation of the battery serial number

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :robotnik_msgs/InverterStatus "d693ae8f6a65a0d35c771d1a15a9e199")


