; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude QueryAlarm.msg.html

(cl:defclass <QueryAlarm> (roslisp-msg-protocol:ros-message)
  ((alm_id
    :reader alm_id
    :initarg :alm_id
    :type cl:integer
    :initform 0)
   (alm_component
    :reader alm_component
    :initarg :alm_component
    :type cl:string
    :initform "")
   (alm_type
    :reader alm_type
    :initarg :alm_type
    :type cl:string
    :initform "")
   (alm_group
    :reader alm_group
    :initarg :alm_group
    :type cl:string
    :initform "")
   (alm_description
    :reader alm_description
    :initarg :alm_description
    :type cl:string
    :initform "")
   (alm_start_time
    :reader alm_start_time
    :initarg :alm_start_time
    :type cl:string
    :initform "")
   (alm_end_time
    :reader alm_end_time
    :initarg :alm_end_time
    :type cl:string
    :initform ""))
)

(cl:defclass QueryAlarm (<QueryAlarm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryAlarm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryAlarm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<QueryAlarm> is deprecated: use robotnik_msgs-msg:QueryAlarm instead.")))

(cl:ensure-generic-function 'alm_id-val :lambda-list '(m))
(cl:defmethod alm_id-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_id-val is deprecated.  Use robotnik_msgs-msg:alm_id instead.")
  (alm_id m))

(cl:ensure-generic-function 'alm_component-val :lambda-list '(m))
(cl:defmethod alm_component-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_component-val is deprecated.  Use robotnik_msgs-msg:alm_component instead.")
  (alm_component m))

(cl:ensure-generic-function 'alm_type-val :lambda-list '(m))
(cl:defmethod alm_type-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_type-val is deprecated.  Use robotnik_msgs-msg:alm_type instead.")
  (alm_type m))

(cl:ensure-generic-function 'alm_group-val :lambda-list '(m))
(cl:defmethod alm_group-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_group-val is deprecated.  Use robotnik_msgs-msg:alm_group instead.")
  (alm_group m))

(cl:ensure-generic-function 'alm_description-val :lambda-list '(m))
(cl:defmethod alm_description-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_description-val is deprecated.  Use robotnik_msgs-msg:alm_description instead.")
  (alm_description m))

(cl:ensure-generic-function 'alm_start_time-val :lambda-list '(m))
(cl:defmethod alm_start_time-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_start_time-val is deprecated.  Use robotnik_msgs-msg:alm_start_time instead.")
  (alm_start_time m))

(cl:ensure-generic-function 'alm_end_time-val :lambda-list '(m))
(cl:defmethod alm_end_time-val ((m <QueryAlarm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alm_end_time-val is deprecated.  Use robotnik_msgs-msg:alm_end_time instead.")
  (alm_end_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryAlarm>) ostream)
  "Serializes a message object of type '<QueryAlarm>"
  (cl:let* ((signed (cl:slot-value msg 'alm_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_component))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_component))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_description))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_start_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_start_time))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alm_end_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alm_end_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryAlarm>) istream)
  "Deserializes a message object of type '<QueryAlarm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_component) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_component) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_start_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_start_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alm_end_time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alm_end_time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryAlarm>)))
  "Returns string type for a message object of type '<QueryAlarm>"
  "robotnik_msgs/QueryAlarm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryAlarm)))
  "Returns string type for a message object of type 'QueryAlarm"
  "robotnik_msgs/QueryAlarm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryAlarm>)))
  "Returns md5sum for a message object of type '<QueryAlarm>"
  "f3c7e9979cb91a050b98067ffb98adff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryAlarm)))
  "Returns md5sum for a message object of type 'QueryAlarm"
  "f3c7e9979cb91a050b98067ffb98adff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryAlarm>)))
  "Returns full string definition for message of type '<QueryAlarm>"
  (cl:format cl:nil "int32 alm_id~%string alm_component~%string alm_type~%string alm_group~%string alm_description~%string alm_start_time~%string alm_end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryAlarm)))
  "Returns full string definition for message of type 'QueryAlarm"
  (cl:format cl:nil "int32 alm_id~%string alm_component~%string alm_type~%string alm_group~%string alm_description~%string alm_start_time~%string alm_end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryAlarm>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'alm_component))
     4 (cl:length (cl:slot-value msg 'alm_type))
     4 (cl:length (cl:slot-value msg 'alm_group))
     4 (cl:length (cl:slot-value msg 'alm_description))
     4 (cl:length (cl:slot-value msg 'alm_start_time))
     4 (cl:length (cl:slot-value msg 'alm_end_time))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryAlarm>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryAlarm
    (cl:cons ':alm_id (alm_id msg))
    (cl:cons ':alm_component (alm_component msg))
    (cl:cons ':alm_type (alm_type msg))
    (cl:cons ':alm_group (alm_group msg))
    (cl:cons ':alm_description (alm_description msg))
    (cl:cons ':alm_start_time (alm_start_time msg))
    (cl:cons ':alm_end_time (alm_end_time msg))
))
