; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude alarmmonitor.msg.html

(cl:defclass <alarmmonitor> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (display
    :reader display
    :initarg :display
    :type cl:integer
    :initform 0)
   (component
    :reader component
    :initarg :component
    :type cl:string
    :initform "")
   (hmi
    :reader hmi
    :initarg :hmi
    :type cl:boolean
    :initform cl:nil)
   (group
    :reader group
    :initarg :group
    :type cl:string
    :initform "")
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform "")
   (seconds_active
    :reader seconds_active
    :initarg :seconds_active
    :type cl:integer
    :initform 0))
)

(cl:defclass alarmmonitor (<alarmmonitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <alarmmonitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'alarmmonitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<alarmmonitor> is deprecated: use robotnik_msgs-msg:alarmmonitor instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:type-val is deprecated.  Use robotnik_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'display-val :lambda-list '(m))
(cl:defmethod display-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:display-val is deprecated.  Use robotnik_msgs-msg:display instead.")
  (display m))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:component-val is deprecated.  Use robotnik_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'hmi-val :lambda-list '(m))
(cl:defmethod hmi-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:hmi-val is deprecated.  Use robotnik_msgs-msg:hmi instead.")
  (hmi m))

(cl:ensure-generic-function 'group-val :lambda-list '(m))
(cl:defmethod group-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:group-val is deprecated.  Use robotnik_msgs-msg:group instead.")
  (group m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:text-val is deprecated.  Use robotnik_msgs-msg:text instead.")
  (text m))

(cl:ensure-generic-function 'seconds_active-val :lambda-list '(m))
(cl:defmethod seconds_active-val ((m <alarmmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:seconds_active-val is deprecated.  Use robotnik_msgs-msg:seconds_active instead.")
  (seconds_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <alarmmonitor>) ostream)
  "Serializes a message object of type '<alarmmonitor>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'display)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'component))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'component))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hmi) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seconds_active)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seconds_active)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <alarmmonitor>) istream)
  "Deserializes a message object of type '<alarmmonitor>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'component) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'hmi) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'seconds_active)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<alarmmonitor>)))
  "Returns string type for a message object of type '<alarmmonitor>"
  "robotnik_msgs/alarmmonitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'alarmmonitor)))
  "Returns string type for a message object of type 'alarmmonitor"
  "robotnik_msgs/alarmmonitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<alarmmonitor>)))
  "Returns md5sum for a message object of type '<alarmmonitor>"
  "bb3d91213f2300b7fc9bb9063b1a7b1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'alarmmonitor)))
  "Returns md5sum for a message object of type 'alarmmonitor"
  "bb3d91213f2300b7fc9bb9063b1a7b1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<alarmmonitor>)))
  "Returns full string definition for message of type '<alarmmonitor>"
  (cl:format cl:nil "# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'alarmmonitor)))
  "Returns full string definition for message of type 'alarmmonitor"
  (cl:format cl:nil "# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <alarmmonitor>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4
     4 (cl:length (cl:slot-value msg 'component))
     1
     4 (cl:length (cl:slot-value msg 'group))
     4 (cl:length (cl:slot-value msg 'text))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <alarmmonitor>))
  "Converts a ROS message object to a list"
  (cl:list 'alarmmonitor
    (cl:cons ':type (type msg))
    (cl:cons ':display (display msg))
    (cl:cons ':component (component msg))
    (cl:cons ':hmi (hmi msg))
    (cl:cons ':group (group msg))
    (cl:cons ':text (text msg))
    (cl:cons ':seconds_active (seconds_active msg))
))
