; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetByte-request.msg.html

(cl:defclass <SetByte-request> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass SetByte-request (<SetByte-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetByte-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetByte-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetByte-request> is deprecated: use robotnik_msgs-srv:SetByte-request instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <SetByte-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:value-val is deprecated.  Use robotnik_msgs-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetByte-request>) ostream)
  "Serializes a message object of type '<SetByte-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetByte-request>) istream)
  "Deserializes a message object of type '<SetByte-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetByte-request>)))
  "Returns string type for a service object of type '<SetByte-request>"
  "robotnik_msgs/SetByteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetByte-request)))
  "Returns string type for a service object of type 'SetByte-request"
  "robotnik_msgs/SetByteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetByte-request>)))
  "Returns md5sum for a message object of type '<SetByte-request>"
  "cb2fe72c5204ad899462b90ec1ebb6ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetByte-request)))
  "Returns md5sum for a message object of type 'SetByte-request"
  "cb2fe72c5204ad899462b90ec1ebb6ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetByte-request>)))
  "Returns full string definition for message of type '<SetByte-request>"
  (cl:format cl:nil "byte value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetByte-request)))
  "Returns full string definition for message of type 'SetByte-request"
  (cl:format cl:nil "byte value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetByte-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetByte-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetByte-request
    (cl:cons ':value (value msg))
))
;//! \htmlinclude SetByte-response.msg.html

(cl:defclass <SetByte-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetByte-response (<SetByte-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetByte-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetByte-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetByte-response> is deprecated: use robotnik_msgs-srv:SetByte-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetByte-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetByte-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetByte-response>) ostream)
  "Serializes a message object of type '<SetByte-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetByte-response>) istream)
  "Deserializes a message object of type '<SetByte-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetByte-response>)))
  "Returns string type for a service object of type '<SetByte-response>"
  "robotnik_msgs/SetByteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetByte-response)))
  "Returns string type for a service object of type 'SetByte-response"
  "robotnik_msgs/SetByteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetByte-response>)))
  "Returns md5sum for a message object of type '<SetByte-response>"
  "cb2fe72c5204ad899462b90ec1ebb6ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetByte-response)))
  "Returns md5sum for a message object of type 'SetByte-response"
  "cb2fe72c5204ad899462b90ec1ebb6ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetByte-response>)))
  "Returns full string definition for message of type '<SetByte-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetByte-response)))
  "Returns full string definition for message of type 'SetByte-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetByte-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetByte-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetByte-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetByte)))
  'SetByte-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetByte)))
  'SetByte-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetByte)))
  "Returns string type for a service object of type '<SetByte>"
  "robotnik_msgs/SetByte")