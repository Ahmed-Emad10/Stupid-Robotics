; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude OdomCalibrationStatusStamped.msg.html

(cl:defclass <OdomCalibrationStatusStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type robotnik_msgs-msg:OdomCalibrationStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:OdomCalibrationStatus)))
)

(cl:defclass OdomCalibrationStatusStamped (<OdomCalibrationStatusStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomCalibrationStatusStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomCalibrationStatusStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<OdomCalibrationStatusStamped> is deprecated: use robotnik_msgs-msg:OdomCalibrationStatusStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OdomCalibrationStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <OdomCalibrationStatusStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:status-val is deprecated.  Use robotnik_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomCalibrationStatusStamped>) ostream)
  "Serializes a message object of type '<OdomCalibrationStatusStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomCalibrationStatusStamped>) istream)
  "Deserializes a message object of type '<OdomCalibrationStatusStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomCalibrationStatusStamped>)))
  "Returns string type for a message object of type '<OdomCalibrationStatusStamped>"
  "robotnik_msgs/OdomCalibrationStatusStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomCalibrationStatusStamped)))
  "Returns string type for a message object of type 'OdomCalibrationStatusStamped"
  "robotnik_msgs/OdomCalibrationStatusStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomCalibrationStatusStamped>)))
  "Returns md5sum for a message object of type '<OdomCalibrationStatusStamped>"
  "e0388dc05fe2fd5f3572337c5953072a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomCalibrationStatusStamped)))
  "Returns md5sum for a message object of type 'OdomCalibrationStatusStamped"
  "e0388dc05fe2fd5f3572337c5953072a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomCalibrationStatusStamped>)))
  "Returns full string definition for message of type '<OdomCalibrationStatusStamped>"
  (cl:format cl:nil "Header header~%OdomCalibrationStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/OdomCalibrationStatus~%bool is_calculating             # true when node is calculating the odometry parameters~%float32 remaining_time          # remaining time in seconds for obtaining odometry values~%~%float32 left_radius             # radius of the left wheel in meters~%float32 right_radius            # radius of the right wheel in meters~%float32 wheels_distance         # distance between the two wheels of the robot in meters~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomCalibrationStatusStamped)))
  "Returns full string definition for message of type 'OdomCalibrationStatusStamped"
  (cl:format cl:nil "Header header~%OdomCalibrationStatus status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: robotnik_msgs/OdomCalibrationStatus~%bool is_calculating             # true when node is calculating the odometry parameters~%float32 remaining_time          # remaining time in seconds for obtaining odometry values~%~%float32 left_radius             # radius of the left wheel in meters~%float32 right_radius            # radius of the right wheel in meters~%float32 wheels_distance         # distance between the two wheels of the robot in meters~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomCalibrationStatusStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomCalibrationStatusStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomCalibrationStatusStamped
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
