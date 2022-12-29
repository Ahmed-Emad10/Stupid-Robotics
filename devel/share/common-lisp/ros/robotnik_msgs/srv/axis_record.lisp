; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude axis_record-request.msg.html

(cl:defclass <axis_record-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (directory
    :reader directory
    :initarg :directory
    :type cl:string
    :initform "")
   (profile
    :reader profile
    :initarg :profile
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform ""))
)

(cl:defclass axis_record-request (<axis_record-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <axis_record-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'axis_record-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<axis_record-request> is deprecated: use robotnik_msgs-srv:axis_record-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <axis_record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:action-val is deprecated.  Use robotnik_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'directory-val :lambda-list '(m))
(cl:defmethod directory-val ((m <axis_record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:directory-val is deprecated.  Use robotnik_msgs-srv:directory instead.")
  (directory m))

(cl:ensure-generic-function 'profile-val :lambda-list '(m))
(cl:defmethod profile-val ((m <axis_record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:profile-val is deprecated.  Use robotnik_msgs-srv:profile instead.")
  (profile m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <axis_record-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:id-val is deprecated.  Use robotnik_msgs-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <axis_record-request>) ostream)
  "Serializes a message object of type '<axis_record-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'directory))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'profile))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'profile))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <axis_record-request>) istream)
  "Deserializes a message object of type '<axis_record-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'profile) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'profile) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<axis_record-request>)))
  "Returns string type for a service object of type '<axis_record-request>"
  "robotnik_msgs/axis_recordRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'axis_record-request)))
  "Returns string type for a service object of type 'axis_record-request"
  "robotnik_msgs/axis_recordRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<axis_record-request>)))
  "Returns md5sum for a message object of type '<axis_record-request>"
  "2c515c47879efbb7383294f44d5255c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'axis_record-request)))
  "Returns md5sum for a message object of type 'axis_record-request"
  "2c515c47879efbb7383294f44d5255c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<axis_record-request>)))
  "Returns full string definition for message of type '<axis_record-request>"
  (cl:format cl:nil "# ~%# RECORD = 1, STOP = 2~%int8 action~%# DIRECTORY TO SAVE THE VIDEO~%string directory~%# PROFILE TO USE DURING THE RECORDING~%string profile~%# id / name of the recording~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'axis_record-request)))
  "Returns full string definition for message of type 'axis_record-request"
  (cl:format cl:nil "# ~%# RECORD = 1, STOP = 2~%int8 action~%# DIRECTORY TO SAVE THE VIDEO~%string directory~%# PROFILE TO USE DURING THE RECORDING~%string profile~%# id / name of the recording~%string id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <axis_record-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'directory))
     4 (cl:length (cl:slot-value msg 'profile))
     4 (cl:length (cl:slot-value msg 'id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <axis_record-request>))
  "Converts a ROS message object to a list"
  (cl:list 'axis_record-request
    (cl:cons ':action (action msg))
    (cl:cons ':directory (directory msg))
    (cl:cons ':profile (profile msg))
    (cl:cons ':id (id msg))
))
;//! \htmlinclude axis_record-response.msg.html

(cl:defclass <axis_record-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass axis_record-response (<axis_record-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <axis_record-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'axis_record-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<axis_record-response> is deprecated: use robotnik_msgs-srv:axis_record-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <axis_record-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <axis_record-response>) ostream)
  "Serializes a message object of type '<axis_record-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <axis_record-response>) istream)
  "Deserializes a message object of type '<axis_record-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<axis_record-response>)))
  "Returns string type for a service object of type '<axis_record-response>"
  "robotnik_msgs/axis_recordResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'axis_record-response)))
  "Returns string type for a service object of type 'axis_record-response"
  "robotnik_msgs/axis_recordResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<axis_record-response>)))
  "Returns md5sum for a message object of type '<axis_record-response>"
  "2c515c47879efbb7383294f44d5255c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'axis_record-response)))
  "Returns md5sum for a message object of type 'axis_record-response"
  "2c515c47879efbb7383294f44d5255c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<axis_record-response>)))
  "Returns full string definition for message of type '<axis_record-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'axis_record-response)))
  "Returns full string definition for message of type 'axis_record-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <axis_record-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <axis_record-response>))
  "Converts a ROS message object to a list"
  (cl:list 'axis_record-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'axis_record)))
  'axis_record-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'axis_record)))
  'axis_record-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'axis_record)))
  "Returns string type for a service object of type '<axis_record>"
  "robotnik_msgs/axis_record")