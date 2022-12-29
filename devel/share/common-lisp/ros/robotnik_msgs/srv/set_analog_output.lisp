; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_analog_output-request.msg.html

(cl:defclass <set_analog_output-request> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_analog_output-request (<set_analog_output-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_analog_output-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_analog_output-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_analog_output-request> is deprecated: use robotnik_msgs-srv:set_analog_output-request instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <set_analog_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:output-val is deprecated.  Use robotnik_msgs-srv:output instead.")
  (output m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_analog_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_analog_output-request>) ostream)
  "Serializes a message object of type '<set_analog_output-request>"
  (cl:let* ((signed (cl:slot-value msg 'output)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_analog_output-request>) istream)
  "Deserializes a message object of type '<set_analog_output-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_analog_output-request>)))
  "Returns string type for a service object of type '<set_analog_output-request>"
  "robotnik_msgs/set_analog_outputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_analog_output-request)))
  "Returns string type for a service object of type 'set_analog_output-request"
  "robotnik_msgs/set_analog_outputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_analog_output-request>)))
  "Returns md5sum for a message object of type '<set_analog_output-request>"
  "1f857604e9e8f27790b5ef70d33fca08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_analog_output-request)))
  "Returns md5sum for a message object of type 'set_analog_output-request"
  "1f857604e9e8f27790b5ef70d33fca08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_analog_output-request>)))
  "Returns full string definition for message of type '<set_analog_output-request>"
  (cl:format cl:nil "int8 output~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_analog_output-request)))
  "Returns full string definition for message of type 'set_analog_output-request"
  (cl:format cl:nil "int8 output~%float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_analog_output-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_analog_output-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_analog_output-request
    (cl:cons ':output (output msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_analog_output-response.msg.html

(cl:defclass <set_analog_output-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_analog_output-response (<set_analog_output-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_analog_output-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_analog_output-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_analog_output-response> is deprecated: use robotnik_msgs-srv:set_analog_output-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_analog_output-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_analog_output-response>) ostream)
  "Serializes a message object of type '<set_analog_output-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_analog_output-response>) istream)
  "Deserializes a message object of type '<set_analog_output-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_analog_output-response>)))
  "Returns string type for a service object of type '<set_analog_output-response>"
  "robotnik_msgs/set_analog_outputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_analog_output-response)))
  "Returns string type for a service object of type 'set_analog_output-response"
  "robotnik_msgs/set_analog_outputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_analog_output-response>)))
  "Returns md5sum for a message object of type '<set_analog_output-response>"
  "1f857604e9e8f27790b5ef70d33fca08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_analog_output-response)))
  "Returns md5sum for a message object of type 'set_analog_output-response"
  "1f857604e9e8f27790b5ef70d33fca08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_analog_output-response>)))
  "Returns full string definition for message of type '<set_analog_output-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_analog_output-response)))
  "Returns full string definition for message of type 'set_analog_output-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_analog_output-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_analog_output-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_analog_output-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_analog_output)))
  'set_analog_output-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_analog_output)))
  'set_analog_output-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_analog_output)))
  "Returns string type for a service object of type '<set_analog_output>"
  "robotnik_msgs/set_analog_output")