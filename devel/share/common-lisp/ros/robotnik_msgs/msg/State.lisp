; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (desired_freq
    :reader desired_freq
    :initarg :desired_freq
    :type cl:float
    :initform 0.0)
   (real_freq
    :reader real_freq
    :initarg :real_freq
    :type cl:float
    :initform 0.0)
   (state_description
    :reader state_description
    :initarg :state_description
    :type cl:string
    :initform ""))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<State> is deprecated: use robotnik_msgs-msg:State instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:state-val is deprecated.  Use robotnik_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'desired_freq-val :lambda-list '(m))
(cl:defmethod desired_freq-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:desired_freq-val is deprecated.  Use robotnik_msgs-msg:desired_freq instead.")
  (desired_freq m))

(cl:ensure-generic-function 'real_freq-val :lambda-list '(m))
(cl:defmethod real_freq-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:real_freq-val is deprecated.  Use robotnik_msgs-msg:real_freq instead.")
  (real_freq m))

(cl:ensure-generic-function 'state_description-val :lambda-list '(m))
(cl:defmethod state_description-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:state_description-val is deprecated.  Use robotnik_msgs-msg:state_description instead.")
  (state_description m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<State>)))
    "Constants for message type '<State>"
  '((:INIT_STATE . 100)
    (:STANDBY_STATE . 200)
    (:READY_STATE . 300)
    (:EMERGENCY_STATE . 400)
    (:FAILURE_STATE . 500)
    (:SHUTDOWN_STATE . 600)
    (:UNKOWN_STATE . 700))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'State)))
    "Constants for message type 'State"
  '((:INIT_STATE . 100)
    (:STANDBY_STATE . 200)
    (:READY_STATE . 300)
    (:EMERGENCY_STATE . 400)
    (:FAILURE_STATE . 500)
    (:SHUTDOWN_STATE . 600)
    (:UNKOWN_STATE . 700))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'real_freq))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real_freq) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "robotnik_msgs/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "robotnik_msgs/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "b3a486e7c5d573e5d1475cd7c02a518b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "b3a486e7c5d573e5d1475cd7c02a518b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "# constants~%int32 INIT_STATE = 100~%int32 STANDBY_STATE = 200~%int32 READY_STATE = 300~%int32 EMERGENCY_STATE = 400~%int32 FAILURE_STATE = 500~%int32 SHUTDOWN_STATE = 600~%int32 UNKOWN_STATE = 700~%~%# state of the component~%int32 state~%# desired control loop frecuency~%float32 desired_freq~%# real frecuency ~%float32 real_freq~%# Description of the state~%string state_description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'state_description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':state (state msg))
    (cl:cons ':desired_freq (desired_freq msg))
    (cl:cons ':real_freq (real_freq msg))
    (cl:cons ':state_description (state_description msg))
))
