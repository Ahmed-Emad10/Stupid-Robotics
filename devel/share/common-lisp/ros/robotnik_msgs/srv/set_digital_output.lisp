; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_digital_output-request.msg.html

(cl:defclass <set_digital_output-request> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_digital_output-request (<set_digital_output-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_digital_output-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_digital_output-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_digital_output-request> is deprecated: use robotnik_msgs-srv:set_digital_output-request instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <set_digital_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:output-val is deprecated.  Use robotnik_msgs-srv:output instead.")
  (output m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_digital_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_digital_output-request>) ostream)
  "Serializes a message object of type '<set_digital_output-request>"
  (cl:let* ((signed (cl:slot-value msg 'output)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_digital_output-request>) istream)
  "Deserializes a message object of type '<set_digital_output-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_digital_output-request>)))
  "Returns string type for a service object of type '<set_digital_output-request>"
  "robotnik_msgs/set_digital_outputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_digital_output-request)))
  "Returns string type for a service object of type 'set_digital_output-request"
  "robotnik_msgs/set_digital_outputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_digital_output-request>)))
  "Returns md5sum for a message object of type '<set_digital_output-request>"
  "5df94efb72fc0f5277220bfb51b87d14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_digital_output-request)))
  "Returns md5sum for a message object of type 'set_digital_output-request"
  "5df94efb72fc0f5277220bfb51b87d14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_digital_output-request>)))
  "Returns full string definition for message of type '<set_digital_output-request>"
  (cl:format cl:nil "int8 output~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_digital_output-request)))
  "Returns full string definition for message of type 'set_digital_output-request"
  (cl:format cl:nil "int8 output~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_digital_output-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_digital_output-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_digital_output-request
    (cl:cons ':output (output msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_digital_output-response.msg.html

(cl:defclass <set_digital_output-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_digital_output-response (<set_digital_output-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_digital_output-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_digital_output-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_digital_output-response> is deprecated: use robotnik_msgs-srv:set_digital_output-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_digital_output-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_digital_output-response>) ostream)
  "Serializes a message object of type '<set_digital_output-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_digital_output-response>) istream)
  "Deserializes a message object of type '<set_digital_output-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_digital_output-response>)))
  "Returns string type for a service object of type '<set_digital_output-response>"
  "robotnik_msgs/set_digital_outputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_digital_output-response)))
  "Returns string type for a service object of type 'set_digital_output-response"
  "robotnik_msgs/set_digital_outputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_digital_output-response>)))
  "Returns md5sum for a message object of type '<set_digital_output-response>"
  "5df94efb72fc0f5277220bfb51b87d14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_digital_output-response)))
  "Returns md5sum for a message object of type 'set_digital_output-response"
  "5df94efb72fc0f5277220bfb51b87d14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_digital_output-response>)))
  "Returns full string definition for message of type '<set_digital_output-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_digital_output-response)))
  "Returns full string definition for message of type 'set_digital_output-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_digital_output-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_digital_output-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_digital_output-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_digital_output)))
  'set_digital_output-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_digital_output)))
  'set_digital_output-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_digital_output)))
  "Returns string type for a service object of type '<set_digital_output>"
  "robotnik_msgs/set_digital_output")