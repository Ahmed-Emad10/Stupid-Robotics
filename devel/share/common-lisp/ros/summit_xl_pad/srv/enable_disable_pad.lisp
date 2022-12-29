; Auto-generated. Do not edit!


(cl:in-package summit_xl_pad-srv)


;//! \htmlinclude enable_disable_pad-request.msg.html

(cl:defclass <enable_disable_pad-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass enable_disable_pad-request (<enable_disable_pad-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <enable_disable_pad-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'enable_disable_pad-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name summit_xl_pad-srv:<enable_disable_pad-request> is deprecated: use summit_xl_pad-srv:enable_disable_pad-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <enable_disable_pad-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader summit_xl_pad-srv:value-val is deprecated.  Use summit_xl_pad-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <enable_disable_pad-request>) ostream)
  "Serializes a message object of type '<enable_disable_pad-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <enable_disable_pad-request>) istream)
  "Deserializes a message object of type '<enable_disable_pad-request>"
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<enable_disable_pad-request>)))
  "Returns string type for a service object of type '<enable_disable_pad-request>"
  "summit_xl_pad/enable_disable_padRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable_pad-request)))
  "Returns string type for a service object of type 'enable_disable_pad-request"
  "summit_xl_pad/enable_disable_padRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<enable_disable_pad-request>)))
  "Returns md5sum for a message object of type '<enable_disable_pad-request>"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'enable_disable_pad-request)))
  "Returns md5sum for a message object of type 'enable_disable_pad-request"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<enable_disable_pad-request>)))
  "Returns full string definition for message of type '<enable_disable_pad-request>"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'enable_disable_pad-request)))
  "Returns full string definition for message of type 'enable_disable_pad-request"
  (cl:format cl:nil "bool value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <enable_disable_pad-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <enable_disable_pad-request>))
  "Converts a ROS message object to a list"
  (cl:list 'enable_disable_pad-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude enable_disable_pad-response.msg.html

(cl:defclass <enable_disable_pad-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass enable_disable_pad-response (<enable_disable_pad-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <enable_disable_pad-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'enable_disable_pad-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name summit_xl_pad-srv:<enable_disable_pad-response> is deprecated: use summit_xl_pad-srv:enable_disable_pad-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <enable_disable_pad-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader summit_xl_pad-srv:ret-val is deprecated.  Use summit_xl_pad-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <enable_disable_pad-response>) ostream)
  "Serializes a message object of type '<enable_disable_pad-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <enable_disable_pad-response>) istream)
  "Deserializes a message object of type '<enable_disable_pad-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<enable_disable_pad-response>)))
  "Returns string type for a service object of type '<enable_disable_pad-response>"
  "summit_xl_pad/enable_disable_padResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable_pad-response)))
  "Returns string type for a service object of type 'enable_disable_pad-response"
  "summit_xl_pad/enable_disable_padResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<enable_disable_pad-response>)))
  "Returns md5sum for a message object of type '<enable_disable_pad-response>"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'enable_disable_pad-response)))
  "Returns md5sum for a message object of type 'enable_disable_pad-response"
  "44aff93ccf05e13b2ec5d62303a837a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<enable_disable_pad-response>)))
  "Returns full string definition for message of type '<enable_disable_pad-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'enable_disable_pad-response)))
  "Returns full string definition for message of type 'enable_disable_pad-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <enable_disable_pad-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <enable_disable_pad-response>))
  "Converts a ROS message object to a list"
  (cl:list 'enable_disable_pad-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'enable_disable_pad)))
  'enable_disable_pad-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'enable_disable_pad)))
  'enable_disable_pad-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'enable_disable_pad)))
  "Returns string type for a service object of type '<enable_disable_pad>"
  "summit_xl_pad/enable_disable_pad")