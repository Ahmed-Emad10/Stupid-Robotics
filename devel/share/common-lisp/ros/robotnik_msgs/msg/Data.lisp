; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Data.msg.html

(cl:defclass <Data> (roslisp-msg-protocol:ros-message)
  ((interface
    :reader interface
    :initarg :interface
    :type cl:string
    :initform "")
   (bytes_sent
    :reader bytes_sent
    :initarg :bytes_sent
    :type cl:float
    :initform 0.0)
   (bytes_received
    :reader bytes_received
    :initarg :bytes_received
    :type cl:float
    :initform 0.0)
   (units_sent
    :reader units_sent
    :initarg :units_sent
    :type cl:string
    :initform "")
   (units_received
    :reader units_received
    :initarg :units_received
    :type cl:string
    :initform "")
   (packages_sent
    :reader packages_sent
    :initarg :packages_sent
    :type cl:integer
    :initform 0)
   (packages_received
    :reader packages_received
    :initarg :packages_received
    :type cl:integer
    :initform 0))
)

(cl:defclass Data (<Data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Data> is deprecated: use robotnik_msgs-msg:Data instead.")))

(cl:ensure-generic-function 'interface-val :lambda-list '(m))
(cl:defmethod interface-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:interface-val is deprecated.  Use robotnik_msgs-msg:interface instead.")
  (interface m))

(cl:ensure-generic-function 'bytes_sent-val :lambda-list '(m))
(cl:defmethod bytes_sent-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:bytes_sent-val is deprecated.  Use robotnik_msgs-msg:bytes_sent instead.")
  (bytes_sent m))

(cl:ensure-generic-function 'bytes_received-val :lambda-list '(m))
(cl:defmethod bytes_received-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:bytes_received-val is deprecated.  Use robotnik_msgs-msg:bytes_received instead.")
  (bytes_received m))

(cl:ensure-generic-function 'units_sent-val :lambda-list '(m))
(cl:defmethod units_sent-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:units_sent-val is deprecated.  Use robotnik_msgs-msg:units_sent instead.")
  (units_sent m))

(cl:ensure-generic-function 'units_received-val :lambda-list '(m))
(cl:defmethod units_received-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:units_received-val is deprecated.  Use robotnik_msgs-msg:units_received instead.")
  (units_received m))

(cl:ensure-generic-function 'packages_sent-val :lambda-list '(m))
(cl:defmethod packages_sent-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:packages_sent-val is deprecated.  Use robotnik_msgs-msg:packages_sent instead.")
  (packages_sent m))

(cl:ensure-generic-function 'packages_received-val :lambda-list '(m))
(cl:defmethod packages_received-val ((m <Data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:packages_received-val is deprecated.  Use robotnik_msgs-msg:packages_received instead.")
  (packages_received m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Data>) ostream)
  "Serializes a message object of type '<Data>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'interface))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'interface))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bytes_sent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bytes_received))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'units_sent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'units_sent))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'units_received))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'units_received))
  (cl:let* ((signed (cl:slot-value msg 'packages_sent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'packages_received)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Data>) istream)
  "Deserializes a message object of type '<Data>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'interface) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'interface) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bytes_sent) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bytes_received) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'units_sent) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'units_sent) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'units_received) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'units_received) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'packages_sent) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'packages_received) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Data>)))
  "Returns string type for a message object of type '<Data>"
  "robotnik_msgs/Data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Data)))
  "Returns string type for a message object of type 'Data"
  "robotnik_msgs/Data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Data>)))
  "Returns md5sum for a message object of type '<Data>"
  "beae478f52d7795f673d8edc9e4295a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Data)))
  "Returns md5sum for a message object of type 'Data"
  "beae478f52d7795f673d8edc9e4295a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Data>)))
  "Returns full string definition for message of type '<Data>"
  (cl:format cl:nil "string interface~%float32 bytes_sent~%float32 bytes_received~%string units_sent~%string units_received~%int32 packages_sent~%int32 packages_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Data)))
  "Returns full string definition for message of type 'Data"
  (cl:format cl:nil "string interface~%float32 bytes_sent~%float32 bytes_received~%string units_sent~%string units_received~%int32 packages_sent~%int32 packages_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Data>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'interface))
     4
     4
     4 (cl:length (cl:slot-value msg 'units_sent))
     4 (cl:length (cl:slot-value msg 'units_received))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Data>))
  "Converts a ROS message object to a list"
  (cl:list 'Data
    (cl:cons ':interface (interface msg))
    (cl:cons ':bytes_sent (bytes_sent msg))
    (cl:cons ':bytes_received (bytes_received msg))
    (cl:cons ':units_sent (units_sent msg))
    (cl:cons ':units_received (units_received msg))
    (cl:cons ':packages_sent (packages_sent msg))
    (cl:cons ':packages_received (packages_received msg))
))
