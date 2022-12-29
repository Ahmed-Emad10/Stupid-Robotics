; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude BatteryDockingStatusStamped.msg.html

(cl:defclass <BatteryDockingStatusStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type robotnik_msgs-msg:BatteryDockingStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:BatteryDockingStatus)))
)

(cl:defclass BatteryDockingStatusStamped (<BatteryDockingStatusStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryDockingStatusStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryDockingStatusStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<BatteryDockingStatusStamped> is deprecated: use robotnik_msgs-msg:BatteryDockingStatusStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryDockingStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BatteryDockingStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:status-val is deprecated.  Use robotnik_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryDockingStatusStamped>) ostream)
  "Serializes a message object of type '<BatteryDockingStatusStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryDockingStatusStamped>) istream)
  "Deserializes a message object of type '<BatteryDockingStatusStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryDockingStatusStamped>)))
  "Returns string type for a message object of type '<BatteryDockingStatusStamped>"
  "robotnik_msgs/BatteryDockingStatusStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryDockingStatusStamped)))
  "Returns string type for a message object of type 'BatteryDockingStatusStamped"
  "robotnik_msgs/BatteryDockingStatusStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryDockingStatusStamped>)))
  "Returns md5sum for a message object of type '<BatteryDockingStatusStamped>"
  "f9b376e82e9d778484349573af188b1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryDockingStatusStamped)))
  "Returns md5sum for a message object of type 'BatteryDockingStatusStamped"
  "f9b376e82e9d778484349573af188b1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryDockingStatusStamped>)))
  "Returns full string definition for message of type '<BatteryDockingStatusStamped>"
  (cl:format cl:nil "Header header~%BatteryDockingStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryDockingStatusStamped)))
  "Returns full string definition for message of type 'BatteryDockingStatusStamped"
  (cl:format cl:nil "Header header~%BatteryDockingStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/BatteryDockingStatus~%# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryDockingStatusStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryDockingStatusStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryDockingStatusStamped
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
