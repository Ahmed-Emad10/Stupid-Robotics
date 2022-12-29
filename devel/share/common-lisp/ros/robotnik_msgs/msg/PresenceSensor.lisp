; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude PresenceSensor.msg.html

(cl:defclass <PresenceSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (sensor_id
    :reader sensor_id
    :initarg :sensor_id
    :type cl:string
    :initform "")
   (sensor_type
    :reader sensor_type
    :initarg :sensor_type
    :type cl:string
    :initform "")
   (detected_id
    :reader detected_id
    :initarg :detected_id
    :type cl:string
    :initform "")
   (zone
    :reader zone
    :initarg :zone
    :type cl:string
    :initform "")
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PresenceSensor (<PresenceSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PresenceSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PresenceSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<PresenceSensor> is deprecated: use robotnik_msgs-msg:PresenceSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:header-val is deprecated.  Use robotnik_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:pose-val is deprecated.  Use robotnik_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'sensor_id-val :lambda-list '(m))
(cl:defmethod sensor_id-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:sensor_id-val is deprecated.  Use robotnik_msgs-msg:sensor_id instead.")
  (sensor_id m))

(cl:ensure-generic-function 'sensor_type-val :lambda-list '(m))
(cl:defmethod sensor_type-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:sensor_type-val is deprecated.  Use robotnik_msgs-msg:sensor_type instead.")
  (sensor_type m))

(cl:ensure-generic-function 'detected_id-val :lambda-list '(m))
(cl:defmethod detected_id-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:detected_id-val is deprecated.  Use robotnik_msgs-msg:detected_id instead.")
  (detected_id m))

(cl:ensure-generic-function 'zone-val :lambda-list '(m))
(cl:defmethod zone-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:zone-val is deprecated.  Use robotnik_msgs-msg:zone instead.")
  (zone m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:enabled-val is deprecated.  Use robotnik_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <PresenceSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:value-val is deprecated.  Use robotnik_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PresenceSensor>)))
    "Constants for message type '<PresenceSensor>"
  '((:CAMERA . "camera")
    (:PHOTOCELL . "photocell"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PresenceSensor)))
    "Constants for message type 'PresenceSensor"
  '((:CAMERA . "camera")
    (:PHOTOCELL . "photocell"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PresenceSensor>) ostream)
  "Serializes a message object of type '<PresenceSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sensor_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sensor_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detected_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detected_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'zone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'zone))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PresenceSensor>) istream)
  "Deserializes a message object of type '<PresenceSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensor_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sensor_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detected_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detected_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zone) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'zone) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PresenceSensor>)))
  "Returns string type for a message object of type '<PresenceSensor>"
  "robotnik_msgs/PresenceSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PresenceSensor)))
  "Returns string type for a message object of type 'PresenceSensor"
  "robotnik_msgs/PresenceSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PresenceSensor>)))
  "Returns md5sum for a message object of type '<PresenceSensor>"
  "d655196d2d8c595af378ef8e462eca4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PresenceSensor)))
  "Returns md5sum for a message object of type 'PresenceSensor"
  "d655196d2d8c595af378ef8e462eca4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PresenceSensor>)))
  "Returns full string definition for message of type '<PresenceSensor>"
  (cl:format cl:nil "string CAMERA=camera~%string PHOTOCELL=photocell~%~%Header header~%geometry_msgs/Pose pose~%string sensor_id # Which sensor is detecting the object (which camera or which photocell)~%string sensor_type # camera or photocell~%string detected_id # if QR is being detected, in photocell would be void~%string zone ~%bool enabled # Determines if the sensor is on or off ~%bool value # Determines whether the sensor is detecting the object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PresenceSensor)))
  "Returns full string definition for message of type 'PresenceSensor"
  (cl:format cl:nil "string CAMERA=camera~%string PHOTOCELL=photocell~%~%Header header~%geometry_msgs/Pose pose~%string sensor_id # Which sensor is detecting the object (which camera or which photocell)~%string sensor_type # camera or photocell~%string detected_id # if QR is being detected, in photocell would be void~%string zone ~%bool enabled # Determines if the sensor is on or off ~%bool value # Determines whether the sensor is detecting the object~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PresenceSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'sensor_id))
     4 (cl:length (cl:slot-value msg 'sensor_type))
     4 (cl:length (cl:slot-value msg 'detected_id))
     4 (cl:length (cl:slot-value msg 'zone))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PresenceSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'PresenceSensor
    (cl:cons ':header (header msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':sensor_id (sensor_id msg))
    (cl:cons ':sensor_type (sensor_type msg))
    (cl:cons ':detected_id (detected_id msg))
    (cl:cons ':zone (zone msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':value (value msg))
))
