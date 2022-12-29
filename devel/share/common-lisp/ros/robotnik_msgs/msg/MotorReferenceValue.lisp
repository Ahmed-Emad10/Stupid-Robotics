; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude MotorReferenceValue.msg.html

(cl:defclass <MotorReferenceValue> (roslisp-msg-protocol:ros-message)
  ((target_value
    :reader target_value
    :initarg :target_value
    :type cl:float
    :initform 0.0)
   (target_ref
    :reader target_ref
    :initarg :target_ref
    :type cl:integer
    :initform 0)
   (actual_value
    :reader actual_value
    :initarg :actual_value
    :type cl:float
    :initform 0.0)
   (actual_ref
    :reader actual_ref
    :initarg :actual_ref
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorReferenceValue (<MotorReferenceValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorReferenceValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorReferenceValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<MotorReferenceValue> is deprecated: use robotnik_msgs-msg:MotorReferenceValue instead.")))

(cl:ensure-generic-function 'target_value-val :lambda-list '(m))
(cl:defmethod target_value-val ((m <MotorReferenceValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:target_value-val is deprecated.  Use robotnik_msgs-msg:target_value instead.")
  (target_value m))

(cl:ensure-generic-function 'target_ref-val :lambda-list '(m))
(cl:defmethod target_ref-val ((m <MotorReferenceValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:target_ref-val is deprecated.  Use robotnik_msgs-msg:target_ref instead.")
  (target_ref m))

(cl:ensure-generic-function 'actual_value-val :lambda-list '(m))
(cl:defmethod actual_value-val ((m <MotorReferenceValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:actual_value-val is deprecated.  Use robotnik_msgs-msg:actual_value instead.")
  (actual_value m))

(cl:ensure-generic-function 'actual_ref-val :lambda-list '(m))
(cl:defmethod actual_ref-val ((m <MotorReferenceValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:actual_ref-val is deprecated.  Use robotnik_msgs-msg:actual_ref instead.")
  (actual_ref m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorReferenceValue>) ostream)
  "Serializes a message object of type '<MotorReferenceValue>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'target_ref)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'actual_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'actual_ref)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorReferenceValue>) istream)
  "Deserializes a message object of type '<MotorReferenceValue>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_ref) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'actual_value) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_ref) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorReferenceValue>)))
  "Returns string type for a message object of type '<MotorReferenceValue>"
  "robotnik_msgs/MotorReferenceValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorReferenceValue)))
  "Returns string type for a message object of type 'MotorReferenceValue"
  "robotnik_msgs/MotorReferenceValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorReferenceValue>)))
  "Returns md5sum for a message object of type '<MotorReferenceValue>"
  "32c091680a0778bc1b7ba8846b79715b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorReferenceValue)))
  "Returns md5sum for a message object of type 'MotorReferenceValue"
  "32c091680a0778bc1b7ba8846b79715b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorReferenceValue>)))
  "Returns full string definition for message of type '<MotorReferenceValue>"
  (cl:format cl:nil "float32 target_value~%int32 target_ref~%float32 actual_value~%int32 actual_ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorReferenceValue)))
  "Returns full string definition for message of type 'MotorReferenceValue"
  (cl:format cl:nil "float32 target_value~%int32 target_ref~%float32 actual_value~%int32 actual_ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorReferenceValue>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorReferenceValue>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorReferenceValue
    (cl:cons ':target_value (target_value msg))
    (cl:cons ':target_ref (target_ref msg))
    (cl:cons ':actual_value (actual_value msg))
    (cl:cons ':actual_ref (actual_ref msg))
))
