; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude get_mode-request.msg.html

(cl:defclass <get_mode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_mode-request (<get_mode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_mode-request> is deprecated: use robotnik_msgs-srv:get_mode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mode-request>) ostream)
  "Serializes a message object of type '<get_mode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mode-request>) istream)
  "Deserializes a message object of type '<get_mode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mode-request>)))
  "Returns string type for a service object of type '<get_mode-request>"
  "robotnik_msgs/get_modeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mode-request)))
  "Returns string type for a service object of type 'get_mode-request"
  "robotnik_msgs/get_modeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mode-request>)))
  "Returns md5sum for a message object of type '<get_mode-request>"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mode-request)))
  "Returns md5sum for a message object of type 'get_mode-request"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mode-request>)))
  "Returns full string definition for message of type '<get_mode-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mode-request)))
  "Returns full string definition for message of type 'get_mode-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mode-request
))
;//! \htmlinclude get_mode-response.msg.html

(cl:defclass <get_mode-response> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass get_mode-response (<get_mode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_mode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_mode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_mode-response> is deprecated: use robotnik_msgs-srv:get_mode-response instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <get_mode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:mode-val is deprecated.  Use robotnik_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_mode-response>) ostream)
  "Serializes a message object of type '<get_mode-response>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_mode-response>) istream)
  "Deserializes a message object of type '<get_mode-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_mode-response>)))
  "Returns string type for a service object of type '<get_mode-response>"
  "robotnik_msgs/get_modeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mode-response)))
  "Returns string type for a service object of type 'get_mode-response"
  "robotnik_msgs/get_modeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_mode-response>)))
  "Returns md5sum for a message object of type '<get_mode-response>"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_mode-response)))
  "Returns md5sum for a message object of type 'get_mode-response"
  "418c02483a8ca57215fb7b31c5c87234")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_mode-response>)))
  "Returns full string definition for message of type '<get_mode-response>"
  (cl:format cl:nil "int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_mode-response)))
  "Returns full string definition for message of type 'get_mode-response"
  (cl:format cl:nil "int8 mode~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_mode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_mode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_mode-response
    (cl:cons ':mode (mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_mode)))
  'get_mode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_mode)))
  'get_mode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_mode)))
  "Returns string type for a service object of type '<get_mode>"
  "robotnik_msgs/get_mode")