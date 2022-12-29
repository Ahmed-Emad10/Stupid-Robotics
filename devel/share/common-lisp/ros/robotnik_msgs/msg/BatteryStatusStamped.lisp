; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude BatteryStatusStamped.msg.html

(cl:defclass <BatteryStatusStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type robotnik_msgs-msg:BatteryStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:BatteryStatus)))
)

(cl:defclass BatteryStatusStamped (<BatteryStatusStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryStatusStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryStatusStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<BatteryStatusStamped> is deprecated: use robotnik_msgs-msg:BatteryStatusStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BatteryStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <BatteryStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:status-val is deprecated.  Use robotnik_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryStatusStamped>) ostream)
  "Serializes a message object of type '<BatteryStatusStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryStatusStamped>) istream)
  "Deserializes a message object of type '<BatteryStatusStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryStatusStamped>)))
  "Returns string type for a message object of type '<BatteryStatusStamped>"
  "robotnik_msgs/BatteryStatusStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryStatusStamped)))
  "Returns string type for a message object of type 'BatteryStatusStamped"
  "robotnik_msgs/BatteryStatusStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryStatusStamped>)))
  "Returns md5sum for a message object of type '<BatteryStatusStamped>"
  "ebfafe84a4dbed599e77635223eefcd0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryStatusStamped)))
  "Returns md5sum for a message object of type 'BatteryStatusStamped"
  "ebfafe84a4dbed599e77635223eefcd0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryStatusStamped>)))
  "Returns full string definition for message of type '<BatteryStatusStamped>"
  (cl:format cl:nil "Header header~%BatteryStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%float32[] cell_voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryStatusStamped)))
  "Returns full string definition for message of type 'BatteryStatusStamped"
  (cl:format cl:nil "Header header~%BatteryStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/BatteryStatus~%float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%float32[] cell_voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryStatusStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryStatusStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryStatusStamped
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
