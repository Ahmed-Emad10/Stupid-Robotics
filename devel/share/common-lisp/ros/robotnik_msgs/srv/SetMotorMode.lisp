; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetMotorMode-request.msg.html

(cl:defclass <SetMotorMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass SetMotorMode-request (<SetMotorMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorMode-request> is deprecated: use robotnik_msgs-srv:SetMotorMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetMotorMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:mode-val is deprecated.  Use robotnik_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorMode-request>) ostream)
  "Serializes a message object of type '<SetMotorMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorMode-request>) istream)
  "Deserializes a message object of type '<SetMotorMode-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorMode-request>)))
  "Returns string type for a service object of type '<SetMotorMode-request>"
  "robotnik_msgs/SetMotorModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorMode-request)))
  "Returns string type for a service object of type 'SetMotorMode-request"
  "robotnik_msgs/SetMotorModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorMode-request>)))
  "Returns md5sum for a message object of type '<SetMotorMode-request>"
  "1393b8f659688f5f0d86f35948597ef1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorMode-request)))
  "Returns md5sum for a message object of type 'SetMotorMode-request"
  "1393b8f659688f5f0d86f35948597ef1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorMode-request>)))
  "Returns full string definition for message of type '<SetMotorMode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorMode-request)))
  "Returns full string definition for message of type 'SetMotorMode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetMotorMode-response.msg.html

(cl:defclass <SetMotorMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetMotorMode-response (<SetMotorMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorMode-response> is deprecated: use robotnik_msgs-srv:SetMotorMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMotorMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetMotorMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorMode-response>) ostream)
  "Serializes a message object of type '<SetMotorMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorMode-response>) istream)
  "Deserializes a message object of type '<SetMotorMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorMode-response>)))
  "Returns string type for a service object of type '<SetMotorMode-response>"
  "robotnik_msgs/SetMotorModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorMode-response)))
  "Returns string type for a service object of type 'SetMotorMode-response"
  "robotnik_msgs/SetMotorModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorMode-response>)))
  "Returns md5sum for a message object of type '<SetMotorMode-response>"
  "1393b8f659688f5f0d86f35948597ef1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorMode-response)))
  "Returns md5sum for a message object of type 'SetMotorMode-response"
  "1393b8f659688f5f0d86f35948597ef1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorMode-response>)))
  "Returns full string definition for message of type '<SetMotorMode-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorMode-response)))
  "Returns full string definition for message of type 'SetMotorMode-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorMode-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorMode-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorMode)))
  'SetMotorMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorMode)))
  'SetMotorMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorMode)))
  "Returns string type for a service object of type '<SetMotorMode>"
  "robotnik_msgs/SetMotorMode")