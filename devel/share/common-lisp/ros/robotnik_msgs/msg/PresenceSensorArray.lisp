; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude PresenceSensorArray.msg.html

(cl:defclass <PresenceSensorArray> (roslisp-msg-protocol:ros-message)
  ((sensors
    :reader sensors
    :initarg :sensors
    :type (cl:vector robotnik_msgs-msg:PresenceSensor)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:PresenceSensor :initial-element (cl:make-instance 'robotnik_msgs-msg:PresenceSensor))))
)

(cl:defclass PresenceSensorArray (<PresenceSensorArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PresenceSensorArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PresenceSensorArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<PresenceSensorArray> is deprecated: use robotnik_msgs-msg:PresenceSensorArray instead.")))

(cl:ensure-generic-function 'sensors-val :lambda-list '(m))
(cl:defmethod sensors-val ((m <PresenceSensorArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:sensors-val is deprecated.  Use robotnik_msgs-msg:sensors instead.")
  (sensors m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PresenceSensorArray>) ostream)
  "Serializes a message object of type '<PresenceSensorArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sensors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sensors))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PresenceSensorArray>) istream)
  "Deserializes a message object of type '<PresenceSensorArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sensors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sensors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:PresenceSensor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PresenceSensorArray>)))
  "Returns string type for a message object of type '<PresenceSensorArray>"
  "robotnik_msgs/PresenceSensorArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PresenceSensorArray)))
  "Returns string type for a message object of type 'PresenceSensorArray"
  "robotnik_msgs/PresenceSensorArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PresenceSensorArray>)))
  "Returns md5sum for a message object of type '<PresenceSensorArray>"
  "eb0dd527b36bdf6dd7986227d34224a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PresenceSensorArray)))
  "Returns md5sum for a message object of type 'PresenceSensorArray"
  "eb0dd527b36bdf6dd7986227d34224a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PresenceSensorArray>)))
  "Returns full string definition for message of type '<PresenceSensorArray>"
  (cl:format cl:nil "robotnik_msgs/PresenceSensor[] sensors~%================================================================================~%MSG: robotnik_msgs/PresenceSensor~%string CAMERA=camera~%string PHOTOCELL=photocell~%~%Header header~%geometry_msgs/Pose pose~%string sensor_id # Which sensor is detecting the object (which camera or which photocell)~%string sensor_type # camera or photocell~%string detected_id # if QR is being detected, in photocell would be void~%string zone ~%bool enabled # Determines if the sensor is on or off ~%bool value # Determines whether the sensor is detecting the object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PresenceSensorArray)))
  "Returns full string definition for message of type 'PresenceSensorArray"
  (cl:format cl:nil "robotnik_msgs/PresenceSensor[] sensors~%================================================================================~%MSG: robotnik_msgs/PresenceSensor~%string CAMERA=camera~%string PHOTOCELL=photocell~%~%Header header~%geometry_msgs/Pose pose~%string sensor_id # Which sensor is detecting the object (which camera or which photocell)~%string sensor_type # camera or photocell~%string detected_id # if QR is being detected, in photocell would be void~%string zone ~%bool enabled # Determines if the sensor is on or off ~%bool value # Determines whether the sensor is detecting the object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PresenceSensorArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sensors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PresenceSensorArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PresenceSensorArray
    (cl:cons ':sensors (sensors msg))
))
