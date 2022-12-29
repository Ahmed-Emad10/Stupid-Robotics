; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude ElevatorAction.msg.html

(cl:defclass <ElevatorAction> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0))
)

(cl:defclass ElevatorAction (<ElevatorAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<ElevatorAction> is deprecated: use robotnik_msgs-msg:ElevatorAction instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ElevatorAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:action-val is deprecated.  Use robotnik_msgs-msg:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorAction>)))
    "Constants for message type '<ElevatorAction>"
  '((:RAISE . 1)
    (:LOWER . -1)
    (:STOP . 0)
    (:NO_ACTION . 1000))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorAction)))
    "Constants for message type 'ElevatorAction"
  '((:RAISE . 1)
    (:LOWER . -1)
    (:STOP . 0)
    (:NO_ACTION . 1000))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorAction>) ostream)
  "Serializes a message object of type '<ElevatorAction>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorAction>) istream)
  "Deserializes a message object of type '<ElevatorAction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorAction>)))
  "Returns string type for a message object of type '<ElevatorAction>"
  "robotnik_msgs/ElevatorAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorAction)))
  "Returns string type for a message object of type 'ElevatorAction"
  "robotnik_msgs/ElevatorAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorAction>)))
  "Returns md5sum for a message object of type '<ElevatorAction>"
  "632c616886d6575f7d7145cd0384a359")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorAction)))
  "Returns md5sum for a message object of type 'ElevatorAction"
  "632c616886d6575f7d7145cd0384a359")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorAction>)))
  "Returns full string definition for message of type '<ElevatorAction>"
  (cl:format cl:nil "int32 RAISE=1~%int32 LOWER=-1~%int32 STOP=0~%int32 NO_ACTION=1000~%~%int32 action~%# speed, height for future applications~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorAction)))
  "Returns full string definition for message of type 'ElevatorAction"
  (cl:format cl:nil "int32 RAISE=1~%int32 LOWER=-1~%int32 STOP=0~%int32 NO_ACTION=1000~%~%int32 action~%# speed, height for future applications~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorAction>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorAction>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorAction
    (cl:cons ':action (action msg))
))
