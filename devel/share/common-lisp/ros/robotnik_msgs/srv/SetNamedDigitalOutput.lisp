; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetNamedDigitalOutput-request.msg.html

(cl:defclass <SetNamedDigitalOutput-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetNamedDigitalOutput-request (<SetNamedDigitalOutput-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNamedDigitalOutput-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNamedDigitalOutput-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetNamedDigitalOutput-request> is deprecated: use robotnik_msgs-srv:SetNamedDigitalOutput-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetNamedDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:name-val is deprecated.  Use robotnik_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetNamedDigitalOutput-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNamedDigitalOutput-request>) ostream)
  "Serializes a message object of type '<SetNamedDigitalOutput-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNamedDigitalOutput-request>) istream)
  "Deserializes a message object of type '<SetNamedDigitalOutput-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNamedDigitalOutput-request>)))
  "Returns string type for a service object of type '<SetNamedDigitalOutput-request>"
  "robotnik_msgs/SetNamedDigitalOutputRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedDigitalOutput-request)))
  "Returns string type for a service object of type 'SetNamedDigitalOutput-request"
  "robotnik_msgs/SetNamedDigitalOutputRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNamedDigitalOutput-request>)))
  "Returns md5sum for a message object of type '<SetNamedDigitalOutput-request>"
  "2025a1879a2ece340190f3058951822d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNamedDigitalOutput-request)))
  "Returns md5sum for a message object of type 'SetNamedDigitalOutput-request"
  "2025a1879a2ece340190f3058951822d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNamedDigitalOutput-request>)))
  "Returns full string definition for message of type '<SetNamedDigitalOutput-request>"
  (cl:format cl:nil "string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNamedDigitalOutput-request)))
  "Returns full string definition for message of type 'SetNamedDigitalOutput-request"
  (cl:format cl:nil "string name~%bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNamedDigitalOutput-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNamedDigitalOutput-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNamedDigitalOutput-request
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetNamedDigitalOutput-response.msg.html

(cl:defclass <SetNamedDigitalOutput-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SetNamedDigitalOutput-response (<SetNamedDigitalOutput-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNamedDigitalOutput-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNamedDigitalOutput-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetNamedDigitalOutput-response> is deprecated: use robotnik_msgs-srv:SetNamedDigitalOutput-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetNamedDigitalOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetNamedDigitalOutput-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:msg-val is deprecated.  Use robotnik_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNamedDigitalOutput-response>) ostream)
  "Serializes a message object of type '<SetNamedDigitalOutput-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNamedDigitalOutput-response>) istream)
  "Deserializes a message object of type '<SetNamedDigitalOutput-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNamedDigitalOutput-response>)))
  "Returns string type for a service object of type '<SetNamedDigitalOutput-response>"
  "robotnik_msgs/SetNamedDigitalOutputResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedDigitalOutput-response)))
  "Returns string type for a service object of type 'SetNamedDigitalOutput-response"
  "robotnik_msgs/SetNamedDigitalOutputResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNamedDigitalOutput-response>)))
  "Returns md5sum for a message object of type '<SetNamedDigitalOutput-response>"
  "2025a1879a2ece340190f3058951822d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNamedDigitalOutput-response)))
  "Returns md5sum for a message object of type 'SetNamedDigitalOutput-response"
  "2025a1879a2ece340190f3058951822d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNamedDigitalOutput-response>)))
  "Returns full string definition for message of type '<SetNamedDigitalOutput-response>"
  (cl:format cl:nil "bool ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNamedDigitalOutput-response)))
  "Returns full string definition for message of type 'SetNamedDigitalOutput-response"
  (cl:format cl:nil "bool ret~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNamedDigitalOutput-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNamedDigitalOutput-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNamedDigitalOutput-response
    (cl:cons ':ret (ret msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNamedDigitalOutput)))
  'SetNamedDigitalOutput-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNamedDigitalOutput)))
  'SetNamedDigitalOutput-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNamedDigitalOutput)))
  "Returns string type for a service object of type '<SetNamedDigitalOutput>"
  "robotnik_msgs/SetNamedDigitalOutput")