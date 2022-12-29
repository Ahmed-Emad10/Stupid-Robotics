; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude WatchdogStatus.msg.html

(cl:defclass <WatchdogStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (timed_out
    :reader timed_out
    :initarg :timed_out
    :type cl:boolean
    :initform cl:nil)
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform ""))
)

(cl:defclass WatchdogStatus (<WatchdogStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WatchdogStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WatchdogStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<WatchdogStatus> is deprecated: use robotnik_msgs-msg:WatchdogStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WatchdogStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:id-val is deprecated.  Use robotnik_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'timed_out-val :lambda-list '(m))
(cl:defmethod timed_out-val ((m <WatchdogStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:timed_out-val is deprecated.  Use robotnik_msgs-msg:timed_out instead.")
  (timed_out m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <WatchdogStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:description-val is deprecated.  Use robotnik_msgs-msg:description instead.")
  (description m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WatchdogStatus>) ostream)
  "Serializes a message object of type '<WatchdogStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timed_out) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WatchdogStatus>) istream)
  "Deserializes a message object of type '<WatchdogStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'timed_out) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WatchdogStatus>)))
  "Returns string type for a message object of type '<WatchdogStatus>"
  "robotnik_msgs/WatchdogStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WatchdogStatus)))
  "Returns string type for a message object of type 'WatchdogStatus"
  "robotnik_msgs/WatchdogStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WatchdogStatus>)))
  "Returns md5sum for a message object of type '<WatchdogStatus>"
  "6eac41b9a2552a59aabed4f2aef62b65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WatchdogStatus)))
  "Returns md5sum for a message object of type 'WatchdogStatus"
  "6eac41b9a2552a59aabed4f2aef62b65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WatchdogStatus>)))
  "Returns full string definition for message of type '<WatchdogStatus>"
  (cl:format cl:nil "string id~%# False if it's ok, True if fails~%bool timed_out~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WatchdogStatus)))
  "Returns full string definition for message of type 'WatchdogStatus"
  (cl:format cl:nil "string id~%# False if it's ok, True if fails~%bool timed_out~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WatchdogStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     1
     4 (cl:length (cl:slot-value msg 'description))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WatchdogStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'WatchdogStatus
    (cl:cons ':id (id msg))
    (cl:cons ':timed_out (timed_out msg))
    (cl:cons ':description (description msg))
))
