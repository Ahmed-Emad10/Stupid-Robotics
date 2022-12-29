; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetMotorStatus-request.msg.html

(cl:defclass <SetMotorStatus-request> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetMotorStatus-request (<SetMotorStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorStatus-request> is deprecated: use robotnik_msgs-srv:SetMotorStatus-request instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SetMotorStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:status-val is deprecated.  Use robotnik_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorStatus-request>) ostream)
  "Serializes a message object of type '<SetMotorStatus-request>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorStatus-request>) istream)
  "Deserializes a message object of type '<SetMotorStatus-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorStatus-request>)))
  "Returns string type for a service object of type '<SetMotorStatus-request>"
  "robotnik_msgs/SetMotorStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorStatus-request)))
  "Returns string type for a service object of type 'SetMotorStatus-request"
  "robotnik_msgs/SetMotorStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorStatus-request>)))
  "Returns md5sum for a message object of type '<SetMotorStatus-request>"
  "ac25788ee06f4ac013e321c5521c9989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorStatus-request)))
  "Returns md5sum for a message object of type 'SetMotorStatus-request"
  "ac25788ee06f4ac013e321c5521c9989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorStatus-request>)))
  "Returns full string definition for message of type '<SetMotorStatus-request>"
  (cl:format cl:nil "# Avalilable status~%# 0-> POWER_ENABLED~%# 1-> QUICK_STOP~%# 2-> POWER_DISABLED (READY_TO_SWITCH_ON)~%int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorStatus-request)))
  "Returns full string definition for message of type 'SetMotorStatus-request"
  (cl:format cl:nil "# Avalilable status~%# 0-> POWER_ENABLED~%# 1-> QUICK_STOP~%# 2-> POWER_DISABLED (READY_TO_SWITCH_ON)~%int8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorStatus-request
    (cl:cons ':status (status msg))
))
;//! \htmlinclude SetMotorStatus-response.msg.html

(cl:defclass <SetMotorStatus-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMotorStatus-response (<SetMotorStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorStatus-response> is deprecated: use robotnik_msgs-srv:SetMotorStatus-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetMotorStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorStatus-response>) ostream)
  "Serializes a message object of type '<SetMotorStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorStatus-response>) istream)
  "Deserializes a message object of type '<SetMotorStatus-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorStatus-response>)))
  "Returns string type for a service object of type '<SetMotorStatus-response>"
  "robotnik_msgs/SetMotorStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorStatus-response)))
  "Returns string type for a service object of type 'SetMotorStatus-response"
  "robotnik_msgs/SetMotorStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorStatus-response>)))
  "Returns md5sum for a message object of type '<SetMotorStatus-response>"
  "ac25788ee06f4ac013e321c5521c9989")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorStatus-response)))
  "Returns md5sum for a message object of type 'SetMotorStatus-response"
  "ac25788ee06f4ac013e321c5521c9989")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorStatus-response>)))
  "Returns full string definition for message of type '<SetMotorStatus-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorStatus-response)))
  "Returns full string definition for message of type 'SetMotorStatus-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorStatus-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorStatus)))
  'SetMotorStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorStatus)))
  'SetMotorStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorStatus)))
  "Returns string type for a service object of type '<SetMotorStatus>"
  "robotnik_msgs/SetMotorStatus")