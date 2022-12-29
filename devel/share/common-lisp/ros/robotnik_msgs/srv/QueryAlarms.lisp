; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude QueryAlarms-request.msg.html

(cl:defclass <QueryAlarms-request> (roslisp-msg-protocol:ros-message)
  ((type_query
    :reader type_query
    :initarg :type_query
    :type cl:string
    :initform "")
   (start_date
    :reader start_date
    :initarg :start_date
    :type cl:string
    :initform "")
   (end_date
    :reader end_date
    :initarg :end_date
    :type cl:string
    :initform "")
   (top
    :reader top
    :initarg :top
    :type cl:integer
    :initform 0)
   (filter_type
    :reader filter_type
    :initarg :filter_type
    :type cl:string
    :initform ""))
)

(cl:defclass QueryAlarms-request (<QueryAlarms-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryAlarms-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryAlarms-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<QueryAlarms-request> is deprecated: use robotnik_msgs-srv:QueryAlarms-request instead.")))

(cl:ensure-generic-function 'type_query-val :lambda-list '(m))
(cl:defmethod type_query-val ((m <QueryAlarms-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:type_query-val is deprecated.  Use robotnik_msgs-srv:type_query instead.")
  (type_query m))

(cl:ensure-generic-function 'start_date-val :lambda-list '(m))
(cl:defmethod start_date-val ((m <QueryAlarms-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:start_date-val is deprecated.  Use robotnik_msgs-srv:start_date instead.")
  (start_date m))

(cl:ensure-generic-function 'end_date-val :lambda-list '(m))
(cl:defmethod end_date-val ((m <QueryAlarms-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:end_date-val is deprecated.  Use robotnik_msgs-srv:end_date instead.")
  (end_date m))

(cl:ensure-generic-function 'top-val :lambda-list '(m))
(cl:defmethod top-val ((m <QueryAlarms-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:top-val is deprecated.  Use robotnik_msgs-srv:top instead.")
  (top m))

(cl:ensure-generic-function 'filter_type-val :lambda-list '(m))
(cl:defmethod filter_type-val ((m <QueryAlarms-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:filter_type-val is deprecated.  Use robotnik_msgs-srv:filter_type instead.")
  (filter_type m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<QueryAlarms-request>)))
    "Constants for message type '<QueryAlarms-request>"
  '((:TYPE_QUERY_ALL . "ALL")
    (:TYPE_QUERY_TOP . "TOP")
    (:TYPE_BETWEEN_DATE . "BETWEEN_DATE")
    (:TYPE_TOP_BETWEEN_DATE . "TOP_BETWEEN_DATE")
    (:FILTER_TYPE_NOTHING . "NOTHING")
    (:FILTER_TYPE_EVENT . "EVENT")
    (:FILTER_TYPE_ALARM . "ALARM")
    (:FILTER_TYPE_ERROR . "ERROR"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'QueryAlarms-request)))
    "Constants for message type 'QueryAlarms-request"
  '((:TYPE_QUERY_ALL . "ALL")
    (:TYPE_QUERY_TOP . "TOP")
    (:TYPE_BETWEEN_DATE . "BETWEEN_DATE")
    (:TYPE_TOP_BETWEEN_DATE . "TOP_BETWEEN_DATE")
    (:FILTER_TYPE_NOTHING . "NOTHING")
    (:FILTER_TYPE_EVENT . "EVENT")
    (:FILTER_TYPE_ALARM . "ALARM")
    (:FILTER_TYPE_ERROR . "ERROR"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryAlarms-request>) ostream)
  "Serializes a message object of type '<QueryAlarms-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type_query))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type_query))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_date))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_date))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_date))
  (cl:let* ((signed (cl:slot-value msg 'top)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filter_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filter_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryAlarms-request>) istream)
  "Deserializes a message object of type '<QueryAlarms-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type_query) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type_query) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_date) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_date) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filter_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filter_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryAlarms-request>)))
  "Returns string type for a service object of type '<QueryAlarms-request>"
  "robotnik_msgs/QueryAlarmsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryAlarms-request)))
  "Returns string type for a service object of type 'QueryAlarms-request"
  "robotnik_msgs/QueryAlarmsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryAlarms-request>)))
  "Returns md5sum for a message object of type '<QueryAlarms-request>"
  "a3f95993dac9d6abc16a8e0ab77695c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryAlarms-request)))
  "Returns md5sum for a message object of type 'QueryAlarms-request"
  "a3f95993dac9d6abc16a8e0ab77695c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryAlarms-request>)))
  "Returns full string definition for message of type '<QueryAlarms-request>"
  (cl:format cl:nil "string TYPE_QUERY_ALL=ALL~%string TYPE_QUERY_TOP=TOP~%string TYPE_BETWEEN_DATE=BETWEEN_DATE~%string TYPE_TOP_BETWEEN_DATE=TOP_BETWEEN_DATE~%string FILTER_TYPE_NOTHING=NOTHING~%string FILTER_TYPE_EVENT=EVENT~%string FILTER_TYPE_ALARM=ALARM~%string FILTER_TYPE_ERROR=ERROR~%string type_query~%string start_date~%string end_date~%int32 top~%string filter_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryAlarms-request)))
  "Returns full string definition for message of type 'QueryAlarms-request"
  (cl:format cl:nil "string TYPE_QUERY_ALL=ALL~%string TYPE_QUERY_TOP=TOP~%string TYPE_BETWEEN_DATE=BETWEEN_DATE~%string TYPE_TOP_BETWEEN_DATE=TOP_BETWEEN_DATE~%string FILTER_TYPE_NOTHING=NOTHING~%string FILTER_TYPE_EVENT=EVENT~%string FILTER_TYPE_ALARM=ALARM~%string FILTER_TYPE_ERROR=ERROR~%string type_query~%string start_date~%string end_date~%int32 top~%string filter_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryAlarms-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type_query))
     4 (cl:length (cl:slot-value msg 'start_date))
     4 (cl:length (cl:slot-value msg 'end_date))
     4
     4 (cl:length (cl:slot-value msg 'filter_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryAlarms-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryAlarms-request
    (cl:cons ':type_query (type_query msg))
    (cl:cons ':start_date (start_date msg))
    (cl:cons ':end_date (end_date msg))
    (cl:cons ':top (top msg))
    (cl:cons ':filter_type (filter_type msg))
))
;//! \htmlinclude QueryAlarms-response.msg.html

(cl:defclass <QueryAlarms-response> (roslisp-msg-protocol:ros-message)
  ((alarms
    :reader alarms
    :initarg :alarms
    :type (cl:vector robotnik_msgs-msg:QueryAlarm)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:QueryAlarm :initial-element (cl:make-instance 'robotnik_msgs-msg:QueryAlarm)))
   (success
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

(cl:defclass QueryAlarms-response (<QueryAlarms-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryAlarms-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryAlarms-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<QueryAlarms-response> is deprecated: use robotnik_msgs-srv:QueryAlarms-response instead.")))

(cl:ensure-generic-function 'alarms-val :lambda-list '(m))
(cl:defmethod alarms-val ((m <QueryAlarms-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:alarms-val is deprecated.  Use robotnik_msgs-srv:alarms instead.")
  (alarms m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <QueryAlarms-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <QueryAlarms-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:msg-val is deprecated.  Use robotnik_msgs-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryAlarms-response>) ostream)
  "Serializes a message object of type '<QueryAlarms-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alarms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'alarms))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryAlarms-response>) istream)
  "Deserializes a message object of type '<QueryAlarms-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alarms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alarms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:QueryAlarm))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryAlarms-response>)))
  "Returns string type for a service object of type '<QueryAlarms-response>"
  "robotnik_msgs/QueryAlarmsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryAlarms-response)))
  "Returns string type for a service object of type 'QueryAlarms-response"
  "robotnik_msgs/QueryAlarmsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryAlarms-response>)))
  "Returns md5sum for a message object of type '<QueryAlarms-response>"
  "a3f95993dac9d6abc16a8e0ab77695c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryAlarms-response)))
  "Returns md5sum for a message object of type 'QueryAlarms-response"
  "a3f95993dac9d6abc16a8e0ab77695c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryAlarms-response>)))
  "Returns full string definition for message of type '<QueryAlarms-response>"
  (cl:format cl:nil "QueryAlarm[] alarms~%bool success~%string msg~%~%~%================================================================================~%MSG: robotnik_msgs/QueryAlarm~%int32 alm_id~%string alm_component~%string alm_type~%string alm_group~%string alm_description~%string alm_start_time~%string alm_end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryAlarms-response)))
  "Returns full string definition for message of type 'QueryAlarms-response"
  (cl:format cl:nil "QueryAlarm[] alarms~%bool success~%string msg~%~%~%================================================================================~%MSG: robotnik_msgs/QueryAlarm~%int32 alm_id~%string alm_component~%string alm_type~%string alm_group~%string alm_description~%string alm_start_time~%string alm_end_time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryAlarms-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alarms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryAlarms-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryAlarms-response
    (cl:cons ':alarms (alarms msg))
    (cl:cons ':success (success msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryAlarms)))
  'QueryAlarms-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryAlarms)))
  'QueryAlarms-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryAlarms)))
  "Returns string type for a service object of type '<QueryAlarms>"
  "robotnik_msgs/QueryAlarms")