; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude SubState.msg.html

(cl:defclass <SubState> (roslisp-msg-protocol:ros-message)
  ((substate
    :reader substate
    :initarg :substate
    :type cl:integer
    :initform 0)
   (substate_description
    :reader substate_description
    :initarg :substate_description
    :type cl:string
    :initform "")
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SubState (<SubState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<SubState> is deprecated: use robotnik_msgs-msg:SubState instead.")))

(cl:ensure-generic-function 'substate-val :lambda-list '(m))
(cl:defmethod substate-val ((m <SubState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:substate-val is deprecated.  Use robotnik_msgs-msg:substate instead.")
  (substate m))

(cl:ensure-generic-function 'substate_description-val :lambda-list '(m))
(cl:defmethod substate_description-val ((m <SubState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:substate_description-val is deprecated.  Use robotnik_msgs-msg:substate_description instead.")
  (substate_description m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SubState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:msg-val is deprecated.  Use robotnik_msgs-msg:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubState>) ostream)
  "Serializes a message object of type '<SubState>"
  (cl:let* ((signed (cl:slot-value msg 'substate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'substate_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'substate_description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubState>) istream)
  "Deserializes a message object of type '<SubState>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'substate) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'substate_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'substate_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubState>)))
  "Returns string type for a message object of type '<SubState>"
  "robotnik_msgs/SubState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubState)))
  "Returns string type for a message object of type 'SubState"
  "robotnik_msgs/SubState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubState>)))
  "Returns md5sum for a message object of type '<SubState>"
  "d67ef59716a56f2892e9ebccd174a9e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubState)))
  "Returns md5sum for a message object of type 'SubState"
  "d67ef59716a56f2892e9ebccd174a9e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubState>)))
  "Returns full string definition for message of type '<SubState>"
  (cl:format cl:nil "~%# substate of the component~%# each component has its own state machines on each state ~%int32 substate~%~%# Description of the substate~%string substate_description~%~%# Text message - additional status information~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubState)))
  "Returns full string definition for message of type 'SubState"
  (cl:format cl:nil "~%# substate of the component~%# each component has its own state machines on each state ~%int32 substate~%~%# Description of the substate~%string substate_description~%~%# Text message - additional status information~%string msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubState>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'substate_description))
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubState>))
  "Converts a ROS message object to a list"
  (cl:list 'SubState
    (cl:cons ':substate (substate msg))
    (cl:cons ':substate_description (substate_description msg))
    (cl:cons ':msg (msg msg))
))
