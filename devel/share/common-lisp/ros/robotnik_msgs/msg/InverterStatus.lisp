; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude InverterStatus.msg.html

(cl:defclass <InverterStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ac_voltage
    :reader ac_voltage
    :initarg :ac_voltage
    :type cl:float
    :initform 0.0)
   (dc_voltage
    :reader dc_voltage
    :initarg :dc_voltage
    :type cl:float
    :initform 0.0)
   (load
    :reader load
    :initarg :load
    :type cl:float
    :initform 0.0)
   (percentage
    :reader percentage
    :initarg :percentage
    :type cl:float
    :initform 0.0)
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0)
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil)
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:string
    :initform ""))
)

(cl:defclass InverterStatus (<InverterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InverterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InverterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<InverterStatus> is deprecated: use robotnik_msgs-msg:InverterStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ac_voltage-val :lambda-list '(m))
(cl:defmethod ac_voltage-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:ac_voltage-val is deprecated.  Use robotnik_msgs-msg:ac_voltage instead.")
  (ac_voltage m))

(cl:ensure-generic-function 'dc_voltage-val :lambda-list '(m))
(cl:defmethod dc_voltage-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:dc_voltage-val is deprecated.  Use robotnik_msgs-msg:dc_voltage instead.")
  (dc_voltage m))

(cl:ensure-generic-function 'load-val :lambda-list '(m))
(cl:defmethod load-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:load-val is deprecated.  Use robotnik_msgs-msg:load instead.")
  (load m))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:percentage-val is deprecated.  Use robotnik_msgs-msg:percentage instead.")
  (percentage m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:temperature-val is deprecated.  Use robotnik_msgs-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:on-val is deprecated.  Use robotnik_msgs-msg:on instead.")
  (on m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <InverterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:serial_number-val is deprecated.  Use robotnik_msgs-msg:serial_number instead.")
  (serial_number m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InverterStatus>) ostream)
  "Serializes a message object of type '<InverterStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ac_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dc_voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'load))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percentage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serial_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serial_number))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InverterStatus>) istream)
  "Deserializes a message object of type '<InverterStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ac_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dc_voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'load) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percentage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serial_number) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serial_number) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InverterStatus>)))
  "Returns string type for a message object of type '<InverterStatus>"
  "robotnik_msgs/InverterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InverterStatus)))
  "Returns string type for a message object of type 'InverterStatus"
  "robotnik_msgs/InverterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InverterStatus>)))
  "Returns md5sum for a message object of type '<InverterStatus>"
  "d693ae8f6a65a0d35c771d1a15a9e199")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InverterStatus)))
  "Returns md5sum for a message object of type 'InverterStatus"
  "d693ae8f6a65a0d35c771d1a15a9e199")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InverterStatus>)))
  "Returns full string definition for message of type '<InverterStatus>"
  (cl:format cl:nil "Header  header~%float32 ac_voltage       # Output Voltage in Volts (Mandatory)~%float32 dc_voltage       # Input Voltage in Volts (If unmeasured NaN)~%float32 load             # Current percentage load on 0 to 1 range (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range (If unmeasured NaN)~%float32 temperature      # Current temperature in centigrads (If unmeasured NaN)~%bool    on               # True if the inverter is on~%~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InverterStatus)))
  "Returns full string definition for message of type 'InverterStatus"
  (cl:format cl:nil "Header  header~%float32 ac_voltage       # Output Voltage in Volts (Mandatory)~%float32 dc_voltage       # Input Voltage in Volts (If unmeasured NaN)~%float32 load             # Current percentage load on 0 to 1 range (If unmeasured NaN)~%float32 percentage       # Charge percentage on 0 to 1 range (If unmeasured NaN)~%float32 temperature      # Current temperature in centigrads (If unmeasured NaN)~%bool    on               # True if the inverter is on~%~%string serial_number     # The best approximation of the battery serial number~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InverterStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'serial_number))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InverterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'InverterStatus
    (cl:cons ':header (header msg))
    (cl:cons ':ac_voltage (ac_voltage msg))
    (cl:cons ':dc_voltage (dc_voltage msg))
    (cl:cons ':load (load msg))
    (cl:cons ':percentage (percentage msg))
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':on (on msg))
    (cl:cons ':serial_number (serial_number msg))
))
