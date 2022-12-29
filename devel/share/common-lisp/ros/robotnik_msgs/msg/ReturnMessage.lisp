; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude ReturnMessage.msg.html

(cl:defclass <ReturnMessage> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform "")
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ReturnMessage (<ReturnMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReturnMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReturnMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<ReturnMessage> is deprecated: use robotnik_msgs-msg:ReturnMessage instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReturnMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:success-val is deprecated.  Use robotnik_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ReturnMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:message-val is deprecated.  Use robotnik_msgs-msg:message instead.")
  (message m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <ReturnMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:code-val is deprecated.  Use robotnik_msgs-msg:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReturnMessage>) ostream)
  "Serializes a message object of type '<ReturnMessage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
  (cl:let* ((signed (cl:slot-value msg 'code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReturnMessage>) istream)
  "Deserializes a message object of type '<ReturnMessage>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReturnMessage>)))
  "Returns string type for a message object of type '<ReturnMessage>"
  "robotnik_msgs/ReturnMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReturnMessage)))
  "Returns string type for a message object of type 'ReturnMessage"
  "robotnik_msgs/ReturnMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReturnMessage>)))
  "Returns md5sum for a message object of type '<ReturnMessage>"
  "797637cd4b4f3860dff5d9fefb9b58f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReturnMessage)))
  "Returns md5sum for a message object of type 'ReturnMessage"
  "797637cd4b4f3860dff5d9fefb9b58f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReturnMessage>)))
  "Returns full string definition for message of type '<ReturnMessage>"
  (cl:format cl:nil "bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReturnMessage)))
  "Returns full string definition for message of type 'ReturnMessage"
  (cl:format cl:nil "bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReturnMessage>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReturnMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'ReturnMessage
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
    (cl:cons ':code (code msg))
))
