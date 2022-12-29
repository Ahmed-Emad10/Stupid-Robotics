; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_named_digital_output-request.msg.html

(cl:defclass <set_named_digital_output-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_named_digital_output-request (<set_named_digital_output-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_named_digital_output-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_named_digital_output-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_named_digital_output-request> is deprecated: use robotnik_msgs-srv:set_named_digital_output-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <set_named_digital_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:name-val is deprecated.  Use robotnik_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <set_named_digital_output-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_named_digital_output-request>) ostream)
  "Serializes a message object of type '<set_named_digital_output-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_named_digital_output-request>) istream)
  "Deserializes a message object of type '<set_named_digital_output-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_named_digital_output-request>)))
  "Returns string type for a service object of type '<set_named_digital_output-request>"
  "robotnik_msgs/set_named_digital_outputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_named_digital_output-request)))
  "Returns string type for a service object of type 'set_named_digital_output-request"
  "robotnik_msgs/set_named_digital_outputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_named_digital_output-request>)))
  "Returns md5sum for a message object of type '<set_named_digital_output-request>"
  "fd68dfc7158f5579e9ee788e5ede364e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_named_digital_output-request)))
  "Returns md5sum for a message object of type 'set_named_digital_output-request"
  "fd68dfc7158f5579e9ee788e5ede364e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_named_digital_output-request>)))
  "Returns full string definition for message of type '<set_named_digital_output-request>"
  (cl:format cl:nil "string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_named_digital_output-request)))
  "Returns full string definition for message of type 'set_named_digital_output-request"
  (cl:format cl:nil "string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_named_digital_output-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_named_digital_output-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_named_digital_output-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude set_named_digital_output-response.msg.html

(cl:defclass <set_named_digital_output-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_named_digital_output-response (<set_named_digital_output-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_named_digital_output-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_named_digital_output-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_named_digital_output-response> is deprecated: use robotnik_msgs-srv:set_named_digital_output-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_named_digital_output-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_named_digital_output-response>) ostream)
  "Serializes a message object of type '<set_named_digital_output-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_named_digital_output-response>) istream)
  "Deserializes a message object of type '<set_named_digital_output-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_named_digital_output-response>)))
  "Returns string type for a service object of type '<set_named_digital_output-response>"
  "robotnik_msgs/set_named_digital_outputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_named_digital_output-response)))
  "Returns string type for a service object of type 'set_named_digital_output-response"
  "robotnik_msgs/set_named_digital_outputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_named_digital_output-response>)))
  "Returns md5sum for a message object of type '<set_named_digital_output-response>"
  "fd68dfc7158f5579e9ee788e5ede364e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_named_digital_output-response)))
  "Returns md5sum for a message object of type 'set_named_digital_output-response"
  "fd68dfc7158f5579e9ee788e5ede364e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_named_digital_output-response>)))
  "Returns full string definition for message of type '<set_named_digital_output-response>"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_named_digital_output-response)))
  "Returns full string definition for message of type 'set_named_digital_output-response"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_named_digital_output-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_named_digital_output-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_named_digital_output-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_named_digital_output)))
  'set_named_digital_output-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_named_digital_output)))
  'set_named_digital_output-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_named_digital_output)))
  "Returns string type for a service object of type '<set_named_digital_output>"
  "robotnik_msgs/set_named_digital_output")