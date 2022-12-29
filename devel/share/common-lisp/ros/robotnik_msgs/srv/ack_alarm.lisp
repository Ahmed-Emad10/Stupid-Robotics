; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude ack_alarm-request.msg.html

(cl:defclass <ack_alarm-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform ""))
)

(cl:defclass ack_alarm-request (<ack_alarm-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ack_alarm-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ack_alarm-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<ack_alarm-request> is deprecated: use robotnik_msgs-srv:ack_alarm-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <ack_alarm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:type-val is deprecated.  Use robotnik_msgs-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <ack_alarm-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:group-val is deprecated.  Use robotnik_msgs-srv:group instead.")
  (group m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ack_alarm-request>) ostream)
  "Serializes a message object of type '<ack_alarm-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ack_alarm-request>) istream)
  "Deserializes a message object of type '<ack_alarm-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ack_alarm-request>)))
  "Returns string type for a service object of type '<ack_alarm-request>"
  "robotnik_msgs/ack_alarmRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ack_alarm-request)))
  "Returns string type for a service object of type 'ack_alarm-request"
  "robotnik_msgs/ack_alarmRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ack_alarm-request>)))
  "Returns md5sum for a message object of type '<ack_alarm-request>"
  "5691e91cfff5344662d430d7da60497e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ack_alarm-request)))
  "Returns md5sum for a message object of type 'ack_alarm-request"
  "5691e91cfff5344662d430d7da60497e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ack_alarm-request>)))
  "Returns full string definition for message of type '<ack_alarm-request>"
  (cl:format cl:nil "string type~%string group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ack_alarm-request)))
  "Returns full string definition for message of type 'ack_alarm-request"
  (cl:format cl:nil "string type~%string group~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ack_alarm-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'group))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ack_alarm-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ack_alarm-request
    (cl:cons ':type (type msg))
    (cl:cons ':group (group msg))
))
;//! \htmlinclude ack_alarm-response.msg.html

(cl:defclass <ack_alarm-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ack_alarm-response (<ack_alarm-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ack_alarm-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ack_alarm-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<ack_alarm-response> is deprecated: use robotnik_msgs-srv:ack_alarm-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <ack_alarm-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ack_alarm-response>) ostream)
  "Serializes a message object of type '<ack_alarm-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ack_alarm-response>) istream)
  "Deserializes a message object of type '<ack_alarm-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ack_alarm-response>)))
  "Returns string type for a service object of type '<ack_alarm-response>"
  "robotnik_msgs/ack_alarmResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ack_alarm-response)))
  "Returns string type for a service object of type 'ack_alarm-response"
  "robotnik_msgs/ack_alarmResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ack_alarm-response>)))
  "Returns md5sum for a message object of type '<ack_alarm-response>"
  "5691e91cfff5344662d430d7da60497e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ack_alarm-response)))
  "Returns md5sum for a message object of type 'ack_alarm-response"
  "5691e91cfff5344662d430d7da60497e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ack_alarm-response>)))
  "Returns full string definition for message of type '<ack_alarm-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ack_alarm-response)))
  "Returns full string definition for message of type 'ack_alarm-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ack_alarm-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ack_alarm-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ack_alarm-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ack_alarm)))
  'ack_alarm-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ack_alarm)))
  'ack_alarm-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ack_alarm)))
  "Returns string type for a service object of type '<ack_alarm>"
  "robotnik_msgs/ack_alarm")