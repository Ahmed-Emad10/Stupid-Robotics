; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetLaserMode-request.msg.html

(cl:defclass <SetLaserMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass SetLaserMode-request (<SetLaserMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLaserMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLaserMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetLaserMode-request> is deprecated: use robotnik_msgs-srv:SetLaserMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetLaserMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:mode-val is deprecated.  Use robotnik_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLaserMode-request>) ostream)
  "Serializes a message object of type '<SetLaserMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLaserMode-request>) istream)
  "Deserializes a message object of type '<SetLaserMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLaserMode-request>)))
  "Returns string type for a service object of type '<SetLaserMode-request>"
  "robotnik_msgs/SetLaserModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaserMode-request)))
  "Returns string type for a service object of type 'SetLaserMode-request"
  "robotnik_msgs/SetLaserModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLaserMode-request>)))
  "Returns md5sum for a message object of type '<SetLaserMode-request>"
  "b696448a6984c2e37a93990a5f048086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLaserMode-request)))
  "Returns md5sum for a message object of type 'SetLaserMode-request"
  "b696448a6984c2e37a93990a5f048086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLaserMode-request>)))
  "Returns full string definition for message of type '<SetLaserMode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLaserMode-request)))
  "Returns full string definition for message of type 'SetLaserMode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLaserMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLaserMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLaserMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetLaserMode-response.msg.html

(cl:defclass <SetLaserMode-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetLaserMode-response (<SetLaserMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLaserMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLaserMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetLaserMode-response> is deprecated: use robotnik_msgs-srv:SetLaserMode-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetLaserMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLaserMode-response>) ostream)
  "Serializes a message object of type '<SetLaserMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLaserMode-response>) istream)
  "Deserializes a message object of type '<SetLaserMode-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLaserMode-response>)))
  "Returns string type for a service object of type '<SetLaserMode-response>"
  "robotnik_msgs/SetLaserModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaserMode-response)))
  "Returns string type for a service object of type 'SetLaserMode-response"
  "robotnik_msgs/SetLaserModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLaserMode-response>)))
  "Returns md5sum for a message object of type '<SetLaserMode-response>"
  "b696448a6984c2e37a93990a5f048086")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLaserMode-response)))
  "Returns md5sum for a message object of type 'SetLaserMode-response"
  "b696448a6984c2e37a93990a5f048086")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLaserMode-response>)))
  "Returns full string definition for message of type '<SetLaserMode-response>"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLaserMode-response)))
  "Returns full string definition for message of type 'SetLaserMode-response"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLaserMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLaserMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLaserMode-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLaserMode)))
  'SetLaserMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLaserMode)))
  'SetLaserMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLaserMode)))
  "Returns string type for a service object of type '<SetLaserMode>"
  "robotnik_msgs/SetLaserMode")