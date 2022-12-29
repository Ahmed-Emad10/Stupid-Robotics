; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_odometry-request.msg.html

(cl:defclass <set_odometry-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_odometry-request (<set_odometry-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_odometry-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_odometry-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_odometry-request> is deprecated: use robotnik_msgs-srv:set_odometry-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <set_odometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:x-val is deprecated.  Use robotnik_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <set_odometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:y-val is deprecated.  Use robotnik_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <set_odometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:z-val is deprecated.  Use robotnik_msgs-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <set_odometry-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:orientation-val is deprecated.  Use robotnik_msgs-srv:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_odometry-request>) ostream)
  "Serializes a message object of type '<set_odometry-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_odometry-request>) istream)
  "Deserializes a message object of type '<set_odometry-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'orientation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_odometry-request>)))
  "Returns string type for a service object of type '<set_odometry-request>"
  "robotnik_msgs/set_odometryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_odometry-request)))
  "Returns string type for a service object of type 'set_odometry-request"
  "robotnik_msgs/set_odometryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_odometry-request>)))
  "Returns md5sum for a message object of type '<set_odometry-request>"
  "34ddd7aa1617c391983fb2ede12712ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_odometry-request)))
  "Returns md5sum for a message object of type 'set_odometry-request"
  "34ddd7aa1617c391983fb2ede12712ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_odometry-request>)))
  "Returns full string definition for message of type '<set_odometry-request>"
  (cl:format cl:nil "# New robot X position (m)~%float32 x~%# New robot Y position (m)~%float32 y~%# New robot Z position (m)~%float32 z~%# New robot Orientation (rads)~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_odometry-request)))
  "Returns full string definition for message of type 'set_odometry-request"
  (cl:format cl:nil "# New robot X position (m)~%float32 x~%# New robot Y position (m)~%float32 y~%# New robot Z position (m)~%float32 z~%# New robot Orientation (rads)~%float32 orientation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_odometry-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_odometry-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_odometry-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':orientation (orientation msg))
))
;//! \htmlinclude set_odometry-response.msg.html

(cl:defclass <set_odometry-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_odometry-response (<set_odometry-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_odometry-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_odometry-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_odometry-response> is deprecated: use robotnik_msgs-srv:set_odometry-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_odometry-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_odometry-response>) ostream)
  "Serializes a message object of type '<set_odometry-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_odometry-response>) istream)
  "Deserializes a message object of type '<set_odometry-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_odometry-response>)))
  "Returns string type for a service object of type '<set_odometry-response>"
  "robotnik_msgs/set_odometryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_odometry-response)))
  "Returns string type for a service object of type 'set_odometry-response"
  "robotnik_msgs/set_odometryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_odometry-response>)))
  "Returns md5sum for a message object of type '<set_odometry-response>"
  "34ddd7aa1617c391983fb2ede12712ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_odometry-response)))
  "Returns md5sum for a message object of type 'set_odometry-response"
  "34ddd7aa1617c391983fb2ede12712ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_odometry-response>)))
  "Returns full string definition for message of type '<set_odometry-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_odometry-response)))
  "Returns full string definition for message of type 'set_odometry-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_odometry-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_odometry-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_odometry-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_odometry)))
  'set_odometry-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_odometry)))
  'set_odometry-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_odometry)))
  "Returns string type for a service object of type '<set_odometry>"
  "robotnik_msgs/set_odometry")