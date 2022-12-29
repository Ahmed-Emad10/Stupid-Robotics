; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_height-request.msg.html

(cl:defclass <set_height-request> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_height-request (<set_height-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_height-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_height-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_height-request> is deprecated: use robotnik_msgs-srv:set_height-request instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <set_height-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:height-val is deprecated.  Use robotnik_msgs-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_height-request>) ostream)
  "Serializes a message object of type '<set_height-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_height-request>) istream)
  "Deserializes a message object of type '<set_height-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_height-request>)))
  "Returns string type for a service object of type '<set_height-request>"
  "robotnik_msgs/set_heightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_height-request)))
  "Returns string type for a service object of type 'set_height-request"
  "robotnik_msgs/set_heightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_height-request>)))
  "Returns md5sum for a message object of type '<set_height-request>"
  "30c54779fb893ca6d32239f321774b5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_height-request)))
  "Returns md5sum for a message object of type 'set_height-request"
  "30c54779fb893ca6d32239f321774b5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_height-request>)))
  "Returns full string definition for message of type '<set_height-request>"
  (cl:format cl:nil "# New reference position (m)~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_height-request)))
  "Returns full string definition for message of type 'set_height-request"
  (cl:format cl:nil "# New reference position (m)~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_height-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_height-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_height-request
    (cl:cons ':height (height msg))
))
;//! \htmlinclude set_height-response.msg.html

(cl:defclass <set_height-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_height-response (<set_height-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_height-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_height-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_height-response> is deprecated: use robotnik_msgs-srv:set_height-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_height-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_height-response>) ostream)
  "Serializes a message object of type '<set_height-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_height-response>) istream)
  "Deserializes a message object of type '<set_height-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_height-response>)))
  "Returns string type for a service object of type '<set_height-response>"
  "robotnik_msgs/set_heightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_height-response)))
  "Returns string type for a service object of type 'set_height-response"
  "robotnik_msgs/set_heightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_height-response>)))
  "Returns md5sum for a message object of type '<set_height-response>"
  "30c54779fb893ca6d32239f321774b5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_height-response)))
  "Returns md5sum for a message object of type 'set_height-response"
  "30c54779fb893ca6d32239f321774b5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_height-response>)))
  "Returns full string definition for message of type '<set_height-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_height-response)))
  "Returns full string definition for message of type 'set_height-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_height-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_height-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_height-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_height)))
  'set_height-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_height)))
  'set_height-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_height)))
  "Returns string type for a service object of type '<set_height>"
  "robotnik_msgs/set_height")