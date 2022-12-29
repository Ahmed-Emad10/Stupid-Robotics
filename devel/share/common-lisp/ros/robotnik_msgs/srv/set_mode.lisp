; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_mode-request.msg.html

(cl:defclass <set_mode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass set_mode-request (<set_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_mode-request> is deprecated: use robotnik_msgs-srv:set_mode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <set_mode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:mode-val is deprecated.  Use robotnik_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_mode-request>) ostream)
  "Serializes a message object of type '<set_mode-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_mode-request>) istream)
  "Deserializes a message object of type '<set_mode-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_mode-request>)))
  "Returns string type for a service object of type '<set_mode-request>"
  "robotnik_msgs/set_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_mode-request)))
  "Returns string type for a service object of type 'set_mode-request"
  "robotnik_msgs/set_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_mode-request>)))
  "Returns md5sum for a message object of type '<set_mode-request>"
  "961700910d81510cfbb56c2b771e2e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_mode-request)))
  "Returns md5sum for a message object of type 'set_mode-request"
  "961700910d81510cfbb56c2b771e2e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_mode-request>)))
  "Returns full string definition for message of type '<set_mode-request>"
  (cl:format cl:nil "# Set control / kinematic / etc. mode~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_mode-request)))
  "Returns full string definition for message of type 'set_mode-request"
  (cl:format cl:nil "# Set control / kinematic / etc. mode~%int8 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_mode-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_mode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude set_mode-response.msg.html

(cl:defclass <set_mode-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_mode-response (<set_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_mode-response> is deprecated: use robotnik_msgs-srv:set_mode-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_mode-response>) ostream)
  "Serializes a message object of type '<set_mode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_mode-response>) istream)
  "Deserializes a message object of type '<set_mode-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_mode-response>)))
  "Returns string type for a service object of type '<set_mode-response>"
  "robotnik_msgs/set_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_mode-response)))
  "Returns string type for a service object of type 'set_mode-response"
  "robotnik_msgs/set_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_mode-response>)))
  "Returns md5sum for a message object of type '<set_mode-response>"
  "961700910d81510cfbb56c2b771e2e2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_mode-response)))
  "Returns md5sum for a message object of type 'set_mode-response"
  "961700910d81510cfbb56c2b771e2e2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_mode-response>)))
  "Returns full string definition for message of type '<set_mode-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_mode-response)))
  "Returns full string definition for message of type 'set_mode-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_mode-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_mode)))
  'set_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_mode)))
  'set_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_mode)))
  "Returns string type for a service object of type '<set_mode>"
  "robotnik_msgs/set_mode")