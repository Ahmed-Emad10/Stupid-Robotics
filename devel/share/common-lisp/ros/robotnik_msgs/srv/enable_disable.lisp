; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude enable_disable-request.msg.html

(cl:defclass <enable_disable-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass enable_disable-request (<enable_disable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <enable_disable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'enable_disable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<enable_disable-request> is deprecated: use robotnik_msgs-srv:enable_disable-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <enable_disable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <enable_disable-request>) ostream)
  "Serializes a message object of type '<enable_disable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <enable_disable-request>) istream)
  "Deserializes a message object of type '<enable_disable-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<enable_disable-request>)))
  "Returns string type for a service object of type '<enable_disable-request>"
  "robotnik_msgs/enable_disableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable-request)))
  "Returns string type for a service object of type 'enable_disable-request"
  "robotnik_msgs/enable_disableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<enable_disable-request>)))
  "Returns md5sum for a message object of type '<enable_disable-request>"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'enable_disable-request)))
  "Returns md5sum for a message object of type 'enable_disable-request"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<enable_disable-request>)))
  "Returns full string definition for message of type '<enable_disable-request>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'enable_disable-request)))
  "Returns full string definition for message of type 'enable_disable-request"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <enable_disable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <enable_disable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'enable_disable-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude enable_disable-response.msg.html

(cl:defclass <enable_disable-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass enable_disable-response (<enable_disable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <enable_disable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'enable_disable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<enable_disable-response> is deprecated: use robotnik_msgs-srv:enable_disable-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <enable_disable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <enable_disable-response>) ostream)
  "Serializes a message object of type '<enable_disable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <enable_disable-response>) istream)
  "Deserializes a message object of type '<enable_disable-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<enable_disable-response>)))
  "Returns string type for a service object of type '<enable_disable-response>"
  "robotnik_msgs/enable_disableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable-response)))
  "Returns string type for a service object of type 'enable_disable-response"
  "robotnik_msgs/enable_disableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<enable_disable-response>)))
  "Returns md5sum for a message object of type '<enable_disable-response>"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'enable_disable-response)))
  "Returns md5sum for a message object of type 'enable_disable-response"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<enable_disable-response>)))
  "Returns full string definition for message of type '<enable_disable-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'enable_disable-response)))
  "Returns full string definition for message of type 'enable_disable-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <enable_disable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <enable_disable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'enable_disable-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'enable_disable)))
  'enable_disable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'enable_disable)))
  'enable_disable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable)))
  "Returns string type for a service object of type '<enable_disable>"
  "robotnik_msgs/enable_disable")