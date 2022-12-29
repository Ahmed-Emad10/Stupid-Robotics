; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude InsertTask-request.msg.html

(cl:defclass <InsertTask-request> (roslisp-msg-protocol:ros-message)
  ((id_submission
    :reader id_submission
    :initarg :id_submission
    :type cl:integer
    :initform 0)
   (description_task
    :reader description_task
    :initarg :description_task
    :type cl:string
    :initform "")
   (datatime_start
    :reader datatime_start
    :initarg :datatime_start
    :type cl:string
    :initform ""))
)

(cl:defclass InsertTask-request (<InsertTask-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InsertTask-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InsertTask-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<InsertTask-request> is deprecated: use robotnik_msgs-srv:InsertTask-request instead.")))

(cl:ensure-generic-function 'id_submission-val :lambda-list '(m))
(cl:defmethod id_submission-val ((m <InsertTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:id_submission-val is deprecated.  Use robotnik_msgs-srv:id_submission instead.")
  (id_submission m))

(cl:ensure-generic-function 'description_task-val :lambda-list '(m))
(cl:defmethod description_task-val ((m <InsertTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:description_task-val is deprecated.  Use robotnik_msgs-srv:description_task instead.")
  (description_task m))

(cl:ensure-generic-function 'datatime_start-val :lambda-list '(m))
(cl:defmethod datatime_start-val ((m <InsertTask-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:datatime_start-val is deprecated.  Use robotnik_msgs-srv:datatime_start instead.")
  (datatime_start m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InsertTask-request>) ostream)
  "Serializes a message object of type '<InsertTask-request>"
  (cl:let* ((signed (cl:slot-value msg 'id_submission)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description_task))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description_task))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'datatime_start))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'datatime_start))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InsertTask-request>) istream)
  "Deserializes a message object of type '<InsertTask-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_submission) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description_task) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description_task) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'datatime_start) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'datatime_start) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InsertTask-request>)))
  "Returns string type for a service object of type '<InsertTask-request>"
  "robotnik_msgs/InsertTaskRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InsertTask-request)))
  "Returns string type for a service object of type 'InsertTask-request"
  "robotnik_msgs/InsertTaskRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InsertTask-request>)))
  "Returns md5sum for a message object of type '<InsertTask-request>"
  "36ad6270fb0855e3101179d36268dd90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InsertTask-request)))
  "Returns md5sum for a message object of type 'InsertTask-request"
  "36ad6270fb0855e3101179d36268dd90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InsertTask-request>)))
  "Returns full string definition for message of type '<InsertTask-request>"
  (cl:format cl:nil "int32 id_submission~%string description_task~%string datatime_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InsertTask-request)))
  "Returns full string definition for message of type 'InsertTask-request"
  (cl:format cl:nil "int32 id_submission~%string description_task~%string datatime_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InsertTask-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'description_task))
     4 (cl:length (cl:slot-value msg 'datatime_start))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InsertTask-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InsertTask-request
    (cl:cons ':id_submission (id_submission msg))
    (cl:cons ':description_task (description_task msg))
    (cl:cons ':datatime_start (datatime_start msg))
))
;//! \htmlinclude InsertTask-response.msg.html

(cl:defclass <InsertTask-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass InsertTask-response (<InsertTask-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InsertTask-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InsertTask-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<InsertTask-response> is deprecated: use robotnik_msgs-srv:InsertTask-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <InsertTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <InsertTask-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:msg-val is deprecated.  Use robotnik_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InsertTask-response>) ostream)
  "Serializes a message object of type '<InsertTask-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InsertTask-response>) istream)
  "Deserializes a message object of type '<InsertTask-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InsertTask-response>)))
  "Returns string type for a service object of type '<InsertTask-response>"
  "robotnik_msgs/InsertTaskResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InsertTask-response)))
  "Returns string type for a service object of type 'InsertTask-response"
  "robotnik_msgs/InsertTaskResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InsertTask-response>)))
  "Returns md5sum for a message object of type '<InsertTask-response>"
  "36ad6270fb0855e3101179d36268dd90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InsertTask-response)))
  "Returns md5sum for a message object of type 'InsertTask-response"
  "36ad6270fb0855e3101179d36268dd90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InsertTask-response>)))
  "Returns full string definition for message of type '<InsertTask-response>"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InsertTask-response)))
  "Returns full string definition for message of type 'InsertTask-response"
  (cl:format cl:nil "bool success~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InsertTask-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InsertTask-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InsertTask-response
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InsertTask)))
  'InsertTask-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InsertTask)))
  'InsertTask-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InsertTask)))
  "Returns string type for a service object of type '<InsertTask>"
  "robotnik_msgs/InsertTask")