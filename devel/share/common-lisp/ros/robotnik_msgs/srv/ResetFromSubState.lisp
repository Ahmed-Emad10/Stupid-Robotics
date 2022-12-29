; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude ResetFromSubState-request.msg.html

(cl:defclass <ResetFromSubState-request> (roslisp-msg-protocol:ros-message)
  ((subState
    :reader subState
    :initarg :subState
    :type cl:integer
    :initform 0))
)

(cl:defclass ResetFromSubState-request (<ResetFromSubState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetFromSubState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetFromSubState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<ResetFromSubState-request> is deprecated: use robotnik_msgs-srv:ResetFromSubState-request instead.")))

(cl:ensure-generic-function 'subState-val :lambda-list '(m))
(cl:defmethod subState-val ((m <ResetFromSubState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:subState-val is deprecated.  Use robotnik_msgs-srv:subState instead.")
  (subState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetFromSubState-request>) ostream)
  "Serializes a message object of type '<ResetFromSubState-request>"
  (cl:let* ((signed (cl:slot-value msg 'subState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetFromSubState-request>) istream)
  "Deserializes a message object of type '<ResetFromSubState-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetFromSubState-request>)))
  "Returns string type for a service object of type '<ResetFromSubState-request>"
  "robotnik_msgs/ResetFromSubStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetFromSubState-request)))
  "Returns string type for a service object of type 'ResetFromSubState-request"
  "robotnik_msgs/ResetFromSubStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetFromSubState-request>)))
  "Returns md5sum for a message object of type '<ResetFromSubState-request>"
  "0692f61f0c43fdbd6f19facf658f4c39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetFromSubState-request)))
  "Returns md5sum for a message object of type 'ResetFromSubState-request"
  "0692f61f0c43fdbd6f19facf658f4c39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetFromSubState-request>)))
  "Returns full string definition for message of type '<ResetFromSubState-request>"
  (cl:format cl:nil "#new substate~%int32 subState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetFromSubState-request)))
  "Returns full string definition for message of type 'ResetFromSubState-request"
  (cl:format cl:nil "#new substate~%int32 subState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetFromSubState-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetFromSubState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetFromSubState-request
    (cl:cons ':subState (subState msg))
))
;//! \htmlinclude ResetFromSubState-response.msg.html

(cl:defclass <ResetFromSubState-response> (roslisp-msg-protocol:ros-message)
  ((currentSubState
    :reader currentSubState
    :initarg :currentSubState
    :type cl:integer
    :initform 0)
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass ResetFromSubState-response (<ResetFromSubState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetFromSubState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetFromSubState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<ResetFromSubState-response> is deprecated: use robotnik_msgs-srv:ResetFromSubState-response instead.")))

(cl:ensure-generic-function 'currentSubState-val :lambda-list '(m))
(cl:defmethod currentSubState-val ((m <ResetFromSubState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:currentSubState-val is deprecated.  Use robotnik_msgs-srv:currentSubState instead.")
  (currentSubState m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ResetFromSubState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <ResetFromSubState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:msg-val is deprecated.  Use robotnik_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetFromSubState-response>) ostream)
  "Serializes a message object of type '<ResetFromSubState-response>"
  (cl:let* ((signed (cl:slot-value msg 'currentSubState)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetFromSubState-response>) istream)
  "Deserializes a message object of type '<ResetFromSubState-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentSubState) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetFromSubState-response>)))
  "Returns string type for a service object of type '<ResetFromSubState-response>"
  "robotnik_msgs/ResetFromSubStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetFromSubState-response)))
  "Returns string type for a service object of type 'ResetFromSubState-response"
  "robotnik_msgs/ResetFromSubStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetFromSubState-response>)))
  "Returns md5sum for a message object of type '<ResetFromSubState-response>"
  "0692f61f0c43fdbd6f19facf658f4c39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetFromSubState-response)))
  "Returns md5sum for a message object of type 'ResetFromSubState-response"
  "0692f61f0c43fdbd6f19facf658f4c39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetFromSubState-response>)))
  "Returns full string definition for message of type '<ResetFromSubState-response>"
  (cl:format cl:nil "~%# substate of the component when change~%int32 currentSubState~%~%# The change is correct~%bool success~%~%# Text message - additional status information~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetFromSubState-response)))
  "Returns full string definition for message of type 'ResetFromSubState-response"
  (cl:format cl:nil "~%# substate of the component when change~%int32 currentSubState~%~%# The change is correct~%bool success~%~%# Text message - additional status information~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetFromSubState-response>))
  (cl:+ 0
     4
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetFromSubState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetFromSubState-response
    (cl:cons ':currentSubState (currentSubState msg))
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetFromSubState)))
  'ResetFromSubState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetFromSubState)))
  'ResetFromSubState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetFromSubState)))
  "Returns string type for a service object of type '<ResetFromSubState>"
  "robotnik_msgs/ResetFromSubState")