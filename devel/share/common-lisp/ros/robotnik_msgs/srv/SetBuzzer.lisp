; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetBuzzer-request.msg.html

(cl:defclass <SetBuzzer-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (beep_freq
    :reader beep_freq
    :initarg :beep_freq
    :type cl:float
    :initform 0.0)
   (time_enabled
    :reader time_enabled
    :initarg :time_enabled
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetBuzzer-request (<SetBuzzer-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBuzzer-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBuzzer-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetBuzzer-request> is deprecated: use robotnik_msgs-srv:SetBuzzer-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetBuzzer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:enable-val is deprecated.  Use robotnik_msgs-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'beep_freq-val :lambda-list '(m))
(cl:defmethod beep_freq-val ((m <SetBuzzer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:beep_freq-val is deprecated.  Use robotnik_msgs-srv:beep_freq instead.")
  (beep_freq m))

(cl:ensure-generic-function 'time_enabled-val :lambda-list '(m))
(cl:defmethod time_enabled-val ((m <SetBuzzer-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:time_enabled-val is deprecated.  Use robotnik_msgs-srv:time_enabled instead.")
  (time_enabled m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBuzzer-request>) ostream)
  "Serializes a message object of type '<SetBuzzer-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'beep_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_enabled))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBuzzer-request>) istream)
  "Deserializes a message object of type '<SetBuzzer-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'beep_freq) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_enabled) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBuzzer-request>)))
  "Returns string type for a service object of type '<SetBuzzer-request>"
  "robotnik_msgs/SetBuzzerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBuzzer-request)))
  "Returns string type for a service object of type 'SetBuzzer-request"
  "robotnik_msgs/SetBuzzerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBuzzer-request>)))
  "Returns md5sum for a message object of type '<SetBuzzer-request>"
  "41793a7387718993b9d0e132905ea3e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBuzzer-request)))
  "Returns md5sum for a message object of type 'SetBuzzer-request"
  "41793a7387718993b9d0e132905ea3e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBuzzer-request>)))
  "Returns full string definition for message of type '<SetBuzzer-request>"
  (cl:format cl:nil "bool enable~%float64 beep_freq~%float64 time_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBuzzer-request)))
  "Returns full string definition for message of type 'SetBuzzer-request"
  (cl:format cl:nil "bool enable~%float64 beep_freq~%float64 time_enabled~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBuzzer-request>))
  (cl:+ 0
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBuzzer-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBuzzer-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':beep_freq (beep_freq msg))
    (cl:cons ':time_enabled (time_enabled msg))
))
;//! \htmlinclude SetBuzzer-response.msg.html

(cl:defclass <SetBuzzer-response> (roslisp-msg-protocol:ros-message)
  ((msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform "")
   (ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetBuzzer-response (<SetBuzzer-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBuzzer-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBuzzer-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetBuzzer-response> is deprecated: use robotnik_msgs-srv:SetBuzzer-response instead.")))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SetBuzzer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:msg-val is deprecated.  Use robotnik_msgs-srv:msg instead.")
  (msg m))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetBuzzer-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBuzzer-response>) ostream)
  "Serializes a message object of type '<SetBuzzer-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBuzzer-response>) istream)
  "Deserializes a message object of type '<SetBuzzer-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBuzzer-response>)))
  "Returns string type for a service object of type '<SetBuzzer-response>"
  "robotnik_msgs/SetBuzzerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBuzzer-response)))
  "Returns string type for a service object of type 'SetBuzzer-response"
  "robotnik_msgs/SetBuzzerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBuzzer-response>)))
  "Returns md5sum for a message object of type '<SetBuzzer-response>"
  "41793a7387718993b9d0e132905ea3e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBuzzer-response)))
  "Returns md5sum for a message object of type 'SetBuzzer-response"
  "41793a7387718993b9d0e132905ea3e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBuzzer-response>)))
  "Returns full string definition for message of type '<SetBuzzer-response>"
  (cl:format cl:nil "string msg~%bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBuzzer-response)))
  "Returns full string definition for message of type 'SetBuzzer-response"
  (cl:format cl:nil "string msg~%bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBuzzer-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBuzzer-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBuzzer-response
    (cl:cons ':msg (msg msg))
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetBuzzer)))
  'SetBuzzer-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetBuzzer)))
  'SetBuzzer-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBuzzer)))
  "Returns string type for a service object of type '<SetBuzzer>"
  "robotnik_msgs/SetBuzzer")