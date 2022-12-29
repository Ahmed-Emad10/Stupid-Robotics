; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude GetPTZ-request.msg.html

(cl:defclass <GetPTZ-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetPTZ-request (<GetPTZ-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTZ-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTZ-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetPTZ-request> is deprecated: use robotnik_msgs-srv:GetPTZ-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetPTZ-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:name-val is deprecated.  Use robotnik_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTZ-request>) ostream)
  "Serializes a message object of type '<GetPTZ-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTZ-request>) istream)
  "Deserializes a message object of type '<GetPTZ-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTZ-request>)))
  "Returns string type for a service object of type '<GetPTZ-request>"
  "robotnik_msgs/GetPTZRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTZ-request)))
  "Returns string type for a service object of type 'GetPTZ-request"
  "robotnik_msgs/GetPTZRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTZ-request>)))
  "Returns md5sum for a message object of type '<GetPTZ-request>"
  "593cec5c2082b3b9a1de4fe76a27b17d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTZ-request)))
  "Returns md5sum for a message object of type 'GetPTZ-request"
  "593cec5c2082b3b9a1de4fe76a27b17d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTZ-request>)))
  "Returns full string definition for message of type '<GetPTZ-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTZ-request)))
  "Returns full string definition for message of type 'GetPTZ-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTZ-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTZ-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTZ-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetPTZ-response.msg.html

(cl:defclass <GetPTZ-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0)
   (zoom
    :reader zoom
    :initarg :zoom
    :type cl:float
    :initform 0.0)
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetPTZ-response (<GetPTZ-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPTZ-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPTZ-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetPTZ-response> is deprecated: use robotnik_msgs-srv:GetPTZ-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPTZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <GetPTZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:pan-val is deprecated.  Use robotnik_msgs-srv:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <GetPTZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:tilt-val is deprecated.  Use robotnik_msgs-srv:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <GetPTZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:zoom-val is deprecated.  Use robotnik_msgs-srv:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <GetPTZ-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:relative-val is deprecated.  Use robotnik_msgs-srv:relative instead.")
  (relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPTZ-response>) ostream)
  "Serializes a message object of type '<GetPTZ-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zoom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPTZ-response>) istream)
  "Deserializes a message object of type '<GetPTZ-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zoom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPTZ-response>)))
  "Returns string type for a service object of type '<GetPTZ-response>"
  "robotnik_msgs/GetPTZResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTZ-response)))
  "Returns string type for a service object of type 'GetPTZ-response"
  "robotnik_msgs/GetPTZResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPTZ-response>)))
  "Returns md5sum for a message object of type '<GetPTZ-response>"
  "593cec5c2082b3b9a1de4fe76a27b17d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPTZ-response)))
  "Returns md5sum for a message object of type 'GetPTZ-response"
  "593cec5c2082b3b9a1de4fe76a27b17d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPTZ-response>)))
  "Returns full string definition for message of type '<GetPTZ-response>"
  (cl:format cl:nil "bool success~%float32 pan~%float32 tilt~%float32 zoom~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPTZ-response)))
  "Returns full string definition for message of type 'GetPTZ-response"
  (cl:format cl:nil "bool success~%float32 pan~%float32 tilt~%float32 zoom~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPTZ-response>))
  (cl:+ 0
     1
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPTZ-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPTZ-response
    (cl:cons ':success (success msg))
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':relative (relative msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPTZ)))
  'GetPTZ-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPTZ)))
  'GetPTZ-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPTZ)))
  "Returns string type for a service object of type '<GetPTZ>"
  "robotnik_msgs/GetPTZ")