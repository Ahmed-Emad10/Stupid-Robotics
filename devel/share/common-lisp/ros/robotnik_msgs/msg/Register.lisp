; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Register.msg.html

(cl:defclass <Register> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass Register (<Register>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Register>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Register)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Register> is deprecated: use robotnik_msgs-msg:Register instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Register>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:id-val is deprecated.  Use robotnik_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Register>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:value-val is deprecated.  Use robotnik_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Register>) ostream)
  "Serializes a message object of type '<Register>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Register>) istream)
  "Deserializes a message object of type '<Register>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Register>)))
  "Returns string type for a message object of type '<Register>"
  "robotnik_msgs/Register")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Register)))
  "Returns string type for a message object of type 'Register"
  "robotnik_msgs/Register")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Register>)))
  "Returns md5sum for a message object of type '<Register>"
  "b971379644cd29fdf0000430f7d4b8e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Register)))
  "Returns md5sum for a message object of type 'Register"
  "b971379644cd29fdf0000430f7d4b8e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Register>)))
  "Returns full string definition for message of type '<Register>"
  (cl:format cl:nil "int32 id~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Register)))
  "Returns full string definition for message of type 'Register"
  (cl:format cl:nil "int32 id~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Register>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Register>))
  "Converts a ROS message object to a list"
  (cl:list 'Register
    (cl:cons ':id (id msg))
    (cl:cons ':value (value msg))
))
