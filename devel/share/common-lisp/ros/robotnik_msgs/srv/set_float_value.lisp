; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_float_value-request.msg.html

(cl:defclass <set_float_value-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_float_value-request (<set_float_value-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float_value-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float_value-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_float_value-request> is deprecated: use robotnik_msgs-srv:set_float_value-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_float_value-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float_value-request>) ostream)
  "Serializes a message object of type '<set_float_value-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float_value-request>) istream)
  "Deserializes a message object of type '<set_float_value-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float_value-request>)))
  "Returns string type for a service object of type '<set_float_value-request>"
  "robotnik_msgs/set_float_valueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_value-request)))
  "Returns string type for a service object of type 'set_float_value-request"
  "robotnik_msgs/set_float_valueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float_value-request>)))
  "Returns md5sum for a message object of type '<set_float_value-request>"
  "1040fd23868f733b1106a6a6948ae41b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float_value-request)))
  "Returns md5sum for a message object of type 'set_float_value-request"
  "1040fd23868f733b1106a6a6948ae41b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float_value-request>)))
  "Returns full string definition for message of type '<set_float_value-request>"
  (cl:format cl:nil "float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float_value-request)))
  "Returns full string definition for message of type 'set_float_value-request"
  (cl:format cl:nil "float32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float_value-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float_value-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float_value-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_float_value-response.msg.html

(cl:defclass <set_float_value-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil)
   (errorMessage
    :reader errorMessage
    :initarg :errorMessage
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass set_float_value-response (<set_float_value-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_float_value-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_float_value-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_float_value-response> is deprecated: use robotnik_msgs-srv:set_float_value-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_float_value-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'errorMessage-val :lambda-list '(m))
(cl:defmethod errorMessage-val ((m <set_float_value-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:errorMessage-val is deprecated.  Use robotnik_msgs-srv:errorMessage instead.")
  (errorMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_float_value-response>) ostream)
  "Serializes a message object of type '<set_float_value-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errorMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_float_value-response>) istream)
  "Deserializes a message object of type '<set_float_value-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errorMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_float_value-response>)))
  "Returns string type for a service object of type '<set_float_value-response>"
  "robotnik_msgs/set_float_valueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_value-response)))
  "Returns string type for a service object of type 'set_float_value-response"
  "robotnik_msgs/set_float_valueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_float_value-response>)))
  "Returns md5sum for a message object of type '<set_float_value-response>"
  "1040fd23868f733b1106a6a6948ae41b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_float_value-response)))
  "Returns md5sum for a message object of type 'set_float_value-response"
  "1040fd23868f733b1106a6a6948ae41b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_float_value-response>)))
  "Returns full string definition for message of type '<set_float_value-response>"
  (cl:format cl:nil "bool ret~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_float_value-response)))
  "Returns full string definition for message of type 'set_float_value-response"
  (cl:format cl:nil "bool ret~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_float_value-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errorMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_float_value-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_float_value-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':errorMessage (errorMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_float_value)))
  'set_float_value-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_float_value)))
  'set_float_value-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_float_value)))
  "Returns string type for a service object of type '<set_float_value>"
  "robotnik_msgs/set_float_value")