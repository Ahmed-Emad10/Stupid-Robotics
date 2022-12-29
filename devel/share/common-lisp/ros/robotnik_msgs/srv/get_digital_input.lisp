; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude get_digital_input-request.msg.html

(cl:defclass <get_digital_input-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:fixnum
    :initform 0))
)

(cl:defclass get_digital_input-request (<get_digital_input-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_digital_input-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_digital_input-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_digital_input-request> is deprecated: use robotnik_msgs-srv:get_digital_input-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <get_digital_input-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:input-val is deprecated.  Use robotnik_msgs-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_digital_input-request>) ostream)
  "Serializes a message object of type '<get_digital_input-request>"
  (cl:let* ((signed (cl:slot-value msg 'input)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_digital_input-request>) istream)
  "Deserializes a message object of type '<get_digital_input-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_digital_input-request>)))
  "Returns string type for a service object of type '<get_digital_input-request>"
  "robotnik_msgs/get_digital_inputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_digital_input-request)))
  "Returns string type for a service object of type 'get_digital_input-request"
  "robotnik_msgs/get_digital_inputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_digital_input-request>)))
  "Returns md5sum for a message object of type '<get_digital_input-request>"
  "5b85083879fa36068de8cd28363930b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_digital_input-request)))
  "Returns md5sum for a message object of type 'get_digital_input-request"
  "5b85083879fa36068de8cd28363930b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_digital_input-request>)))
  "Returns full string definition for message of type '<get_digital_input-request>"
  (cl:format cl:nil "int8 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_digital_input-request)))
  "Returns full string definition for message of type 'get_digital_input-request"
  (cl:format cl:nil "int8 input~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_digital_input-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_digital_input-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_digital_input-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude get_digital_input-response.msg.html

(cl:defclass <get_digital_input-response> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass get_digital_input-response (<get_digital_input-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_digital_input-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_digital_input-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_digital_input-response> is deprecated: use robotnik_msgs-srv:get_digital_input-response instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <get_digital_input-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_digital_input-response>) ostream)
  "Serializes a message object of type '<get_digital_input-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_digital_input-response>) istream)
  "Deserializes a message object of type '<get_digital_input-response>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_digital_input-response>)))
  "Returns string type for a service object of type '<get_digital_input-response>"
  "robotnik_msgs/get_digital_inputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_digital_input-response)))
  "Returns string type for a service object of type 'get_digital_input-response"
  "robotnik_msgs/get_digital_inputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_digital_input-response>)))
  "Returns md5sum for a message object of type '<get_digital_input-response>"
  "5b85083879fa36068de8cd28363930b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_digital_input-response)))
  "Returns md5sum for a message object of type 'get_digital_input-response"
  "5b85083879fa36068de8cd28363930b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_digital_input-response>)))
  "Returns full string definition for message of type '<get_digital_input-response>"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_digital_input-response)))
  "Returns full string definition for message of type 'get_digital_input-response"
  (cl:format cl:nil "bool value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_digital_input-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_digital_input-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_digital_input-response
    (cl:cons ':value (value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_digital_input)))
  'get_digital_input-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_digital_input)))
  'get_digital_input-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_digital_input)))
  "Returns string type for a service object of type '<get_digital_input>"
  "robotnik_msgs/get_digital_input")