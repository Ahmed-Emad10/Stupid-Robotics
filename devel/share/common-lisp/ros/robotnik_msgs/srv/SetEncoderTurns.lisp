; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetEncoderTurns-request.msg.html

(cl:defclass <SetEncoderTurns-request> (roslisp-msg-protocol:ros-message)
  ((encoder_turns
    :reader encoder_turns
    :initarg :encoder_turns
    :type robotnik_msgs-msg:MotorHeadingOffset
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorHeadingOffset)))
)

(cl:defclass SetEncoderTurns-request (<SetEncoderTurns-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEncoderTurns-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEncoderTurns-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetEncoderTurns-request> is deprecated: use robotnik_msgs-srv:SetEncoderTurns-request instead.")))

(cl:ensure-generic-function 'encoder_turns-val :lambda-list '(m))
(cl:defmethod encoder_turns-val ((m <SetEncoderTurns-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:encoder_turns-val is deprecated.  Use robotnik_msgs-srv:encoder_turns instead.")
  (encoder_turns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEncoderTurns-request>) ostream)
  "Serializes a message object of type '<SetEncoderTurns-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'encoder_turns) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEncoderTurns-request>) istream)
  "Deserializes a message object of type '<SetEncoderTurns-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'encoder_turns) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEncoderTurns-request>)))
  "Returns string type for a service object of type '<SetEncoderTurns-request>"
  "robotnik_msgs/SetEncoderTurnsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEncoderTurns-request)))
  "Returns string type for a service object of type 'SetEncoderTurns-request"
  "robotnik_msgs/SetEncoderTurnsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEncoderTurns-request>)))
  "Returns md5sum for a message object of type '<SetEncoderTurns-request>"
  "75098e1521736fbeb9e5afbd06f20712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEncoderTurns-request)))
  "Returns md5sum for a message object of type 'SetEncoderTurns-request"
  "75098e1521736fbeb9e5afbd06f20712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEncoderTurns-request>)))
  "Returns full string definition for message of type '<SetEncoderTurns-request>"
  (cl:format cl:nil "robotnik_msgs/MotorHeadingOffset encoder_turns~%~%================================================================================~%MSG: robotnik_msgs/MotorHeadingOffset~%int32 motor~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEncoderTurns-request)))
  "Returns full string definition for message of type 'SetEncoderTurns-request"
  (cl:format cl:nil "robotnik_msgs/MotorHeadingOffset encoder_turns~%~%================================================================================~%MSG: robotnik_msgs/MotorHeadingOffset~%int32 motor~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEncoderTurns-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'encoder_turns))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEncoderTurns-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEncoderTurns-request
    (cl:cons ':encoder_turns (encoder_turns msg))
))
;//! \htmlinclude SetEncoderTurns-response.msg.html

(cl:defclass <SetEncoderTurns-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetEncoderTurns-response (<SetEncoderTurns-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEncoderTurns-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEncoderTurns-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetEncoderTurns-response> is deprecated: use robotnik_msgs-srv:SetEncoderTurns-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetEncoderTurns-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetEncoderTurns-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEncoderTurns-response>) ostream)
  "Serializes a message object of type '<SetEncoderTurns-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEncoderTurns-response>) istream)
  "Deserializes a message object of type '<SetEncoderTurns-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEncoderTurns-response>)))
  "Returns string type for a service object of type '<SetEncoderTurns-response>"
  "robotnik_msgs/SetEncoderTurnsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEncoderTurns-response)))
  "Returns string type for a service object of type 'SetEncoderTurns-response"
  "robotnik_msgs/SetEncoderTurnsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEncoderTurns-response>)))
  "Returns md5sum for a message object of type '<SetEncoderTurns-response>"
  "75098e1521736fbeb9e5afbd06f20712")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEncoderTurns-response)))
  "Returns md5sum for a message object of type 'SetEncoderTurns-response"
  "75098e1521736fbeb9e5afbd06f20712")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEncoderTurns-response>)))
  "Returns full string definition for message of type '<SetEncoderTurns-response>"
  (cl:format cl:nil "bool success ~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEncoderTurns-response)))
  "Returns full string definition for message of type 'SetEncoderTurns-response"
  (cl:format cl:nil "bool success ~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEncoderTurns-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEncoderTurns-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEncoderTurns-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEncoderTurns)))
  'SetEncoderTurns-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEncoderTurns)))
  'SetEncoderTurns-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEncoderTurns)))
  "Returns string type for a service object of type '<SetEncoderTurns>"
  "robotnik_msgs/SetEncoderTurns")