; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_ptz-request.msg.html

(cl:defclass <set_ptz-request> (roslisp-msg-protocol:ros-message)
  ((pan
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
    :initform cl:nil)
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass set_ptz-request (<set_ptz-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_ptz-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_ptz-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_ptz-request> is deprecated: use robotnik_msgs-srv:set_ptz-request instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:pan-val is deprecated.  Use robotnik_msgs-srv:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:tilt-val is deprecated.  Use robotnik_msgs-srv:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:zoom-val is deprecated.  Use robotnik_msgs-srv:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:relative-val is deprecated.  Use robotnik_msgs-srv:relative instead.")
  (relative m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:mode-val is deprecated.  Use robotnik_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_ptz-request>) ostream)
  "Serializes a message object of type '<set_ptz-request>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_ptz-request>) istream)
  "Deserializes a message object of type '<set_ptz-request>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_ptz-request>)))
  "Returns string type for a service object of type '<set_ptz-request>"
  "robotnik_msgs/set_ptzRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz-request)))
  "Returns string type for a service object of type 'set_ptz-request"
  "robotnik_msgs/set_ptzRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_ptz-request>)))
  "Returns md5sum for a message object of type '<set_ptz-request>"
  "647fede79ebbfd6acc8a04dc504f10b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_ptz-request)))
  "Returns md5sum for a message object of type 'set_ptz-request"
  "647fede79ebbfd6acc8a04dc504f10b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_ptz-request>)))
  "Returns full string definition for message of type '<set_ptz-request>"
  (cl:format cl:nil "# PAN value~%float32 pan~%# Tilt value~%float32 tilt~%# Zoom value~%float32 zoom~%# Flag for relative  movements~%bool relative~%# Position or speed mode~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_ptz-request)))
  "Returns full string definition for message of type 'set_ptz-request"
  (cl:format cl:nil "# PAN value~%float32 pan~%# Tilt value~%float32 tilt~%# Zoom value~%float32 zoom~%# Flag for relative  movements~%bool relative~%# Position or speed mode~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_ptz-request>))
  (cl:+ 0
     4
     4
     4
     1
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_ptz-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_ptz-request
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':relative (relative msg))
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude set_ptz-response.msg.html

(cl:defclass <set_ptz-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_ptz-response (<set_ptz-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_ptz-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_ptz-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_ptz-response> is deprecated: use robotnik_msgs-srv:set_ptz-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_ptz-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_ptz-response>) ostream)
  "Serializes a message object of type '<set_ptz-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_ptz-response>) istream)
  "Deserializes a message object of type '<set_ptz-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_ptz-response>)))
  "Returns string type for a service object of type '<set_ptz-response>"
  "robotnik_msgs/set_ptzResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz-response)))
  "Returns string type for a service object of type 'set_ptz-response"
  "robotnik_msgs/set_ptzResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_ptz-response>)))
  "Returns md5sum for a message object of type '<set_ptz-response>"
  "647fede79ebbfd6acc8a04dc504f10b2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_ptz-response)))
  "Returns md5sum for a message object of type 'set_ptz-response"
  "647fede79ebbfd6acc8a04dc504f10b2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_ptz-response>)))
  "Returns full string definition for message of type '<set_ptz-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_ptz-response)))
  "Returns full string definition for message of type 'set_ptz-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_ptz-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_ptz-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_ptz-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_ptz)))
  'set_ptz-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_ptz)))
  'set_ptz-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz)))
  "Returns string type for a service object of type '<set_ptz>"
  "robotnik_msgs/set_ptz")