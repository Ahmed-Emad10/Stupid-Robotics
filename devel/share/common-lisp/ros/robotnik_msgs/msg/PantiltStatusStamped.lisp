; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude PantiltStatusStamped.msg.html

(cl:defclass <PantiltStatusStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pantilt
    :reader pantilt
    :initarg :pantilt
    :type robotnik_msgs-msg:PantiltStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:PantiltStatus)))
)

(cl:defclass PantiltStatusStamped (<PantiltStatusStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PantiltStatusStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PantiltStatusStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<PantiltStatusStamped> is deprecated: use robotnik_msgs-msg:PantiltStatusStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PantiltStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pantilt-val :lambda-list '(m))
(cl:defmethod pantilt-val ((m <PantiltStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:pantilt-val is deprecated.  Use robotnik_msgs-msg:pantilt instead.")
  (pantilt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PantiltStatusStamped>) ostream)
  "Serializes a message object of type '<PantiltStatusStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pantilt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PantiltStatusStamped>) istream)
  "Deserializes a message object of type '<PantiltStatusStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pantilt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PantiltStatusStamped>)))
  "Returns string type for a message object of type '<PantiltStatusStamped>"
  "robotnik_msgs/PantiltStatusStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PantiltStatusStamped)))
  "Returns string type for a message object of type 'PantiltStatusStamped"
  "robotnik_msgs/PantiltStatusStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PantiltStatusStamped>)))
  "Returns md5sum for a message object of type '<PantiltStatusStamped>"
  "be63351895b74b23132ea9e341c93843")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PantiltStatusStamped)))
  "Returns md5sum for a message object of type 'PantiltStatusStamped"
  "be63351895b74b23132ea9e341c93843")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PantiltStatusStamped>)))
  "Returns full string definition for message of type '<PantiltStatusStamped>"
  (cl:format cl:nil "Header header~%robotnik_msgs/PantiltStatus pantilt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/PantiltStatus~%float32 pan_pos~%float32 tilt_pos~%float32 pan_speed~%float32 tilt_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PantiltStatusStamped)))
  "Returns full string definition for message of type 'PantiltStatusStamped"
  (cl:format cl:nil "Header header~%robotnik_msgs/PantiltStatus pantilt~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/PantiltStatus~%float32 pan_pos~%float32 tilt_pos~%float32 pan_speed~%float32 tilt_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PantiltStatusStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pantilt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PantiltStatusStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PantiltStatusStamped
    (cl:cons ':header (header msg))
    (cl:cons ':pantilt (pantilt msg))
))
