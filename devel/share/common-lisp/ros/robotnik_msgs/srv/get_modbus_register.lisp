; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude get_modbus_register-request.msg.html

(cl:defclass <get_modbus_register-request> (roslisp-msg-protocol:ros-message)
  ((address
    :reader address
    :initarg :address
    :type cl:integer
    :initform 0))
)

(cl:defclass get_modbus_register-request (<get_modbus_register-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_modbus_register-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_modbus_register-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_modbus_register-request> is deprecated: use robotnik_msgs-srv:get_modbus_register-request instead.")))

(cl:ensure-generic-function 'address-val :lambda-list '(m))
(cl:defmethod address-val ((m <get_modbus_register-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:address-val is deprecated.  Use robotnik_msgs-srv:address instead.")
  (address m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_modbus_register-request>) ostream)
  "Serializes a message object of type '<get_modbus_register-request>"
  (cl:let* ((signed (cl:slot-value msg 'address)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_modbus_register-request>) istream)
  "Deserializes a message object of type '<get_modbus_register-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'address) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_modbus_register-request>)))
  "Returns string type for a service object of type '<get_modbus_register-request>"
  "robotnik_msgs/get_modbus_registerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_modbus_register-request)))
  "Returns string type for a service object of type 'get_modbus_register-request"
  "robotnik_msgs/get_modbus_registerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_modbus_register-request>)))
  "Returns md5sum for a message object of type '<get_modbus_register-request>"
  "3a2192c58e10e29a7d1d9e8d896473ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_modbus_register-request)))
  "Returns md5sum for a message object of type 'get_modbus_register-request"
  "3a2192c58e10e29a7d1d9e8d896473ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_modbus_register-request>)))
  "Returns full string definition for message of type '<get_modbus_register-request>"
  (cl:format cl:nil "int32 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_modbus_register-request)))
  "Returns full string definition for message of type 'get_modbus_register-request"
  (cl:format cl:nil "int32 address~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_modbus_register-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_modbus_register-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_modbus_register-request
    (cl:cons ':address (address msg))
))
;//! \htmlinclude get_modbus_register-response.msg.html

(cl:defclass <get_modbus_register-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass get_modbus_register-response (<get_modbus_register-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_modbus_register-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_modbus_register-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_modbus_register-response> is deprecated: use robotnik_msgs-srv:get_modbus_register-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <get_modbus_register-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_modbus_register-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_modbus_register-response>) ostream)
  "Serializes a message object of type '<get_modbus_register-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_modbus_register-response>) istream)
  "Deserializes a message object of type '<get_modbus_register-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_modbus_register-response>)))
  "Returns string type for a service object of type '<get_modbus_register-response>"
  "robotnik_msgs/get_modbus_registerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_modbus_register-response)))
  "Returns string type for a service object of type 'get_modbus_register-response"
  "robotnik_msgs/get_modbus_registerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_modbus_register-response>)))
  "Returns md5sum for a message object of type '<get_modbus_register-response>"
  "3a2192c58e10e29a7d1d9e8d896473ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_modbus_register-response)))
  "Returns md5sum for a message object of type 'get_modbus_register-response"
  "3a2192c58e10e29a7d1d9e8d896473ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_modbus_register-response>)))
  "Returns full string definition for message of type '<get_modbus_register-response>"
  (cl:format cl:nil "bool ret ~%uint16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_modbus_register-response)))
  "Returns full string definition for message of type 'get_modbus_register-response"
  (cl:format cl:nil "bool ret ~%uint16 value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_modbus_register-response>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_modbus_register-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_modbus_register-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_modbus_register)))
  'get_modbus_register-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_modbus_register)))
  'get_modbus_register-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_modbus_register)))
  "Returns string type for a service object of type '<get_modbus_register>"
  "robotnik_msgs/get_modbus_register")