; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude set_CartesianEuler_pose-request.msg.html

(cl:defclass <set_CartesianEuler_pose-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (A
    :reader A
    :initarg :A
    :type cl:float
    :initform 0.0)
   (B
    :reader B
    :initarg :B
    :type cl:float
    :initform 0.0)
   (C
    :reader C
    :initarg :C
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_CartesianEuler_pose-request (<set_CartesianEuler_pose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_CartesianEuler_pose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_CartesianEuler_pose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_CartesianEuler_pose-request> is deprecated: use robotnik_msgs-srv:set_CartesianEuler_pose-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:x-val is deprecated.  Use robotnik_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:y-val is deprecated.  Use robotnik_msgs-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:z-val is deprecated.  Use robotnik_msgs-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:A-val is deprecated.  Use robotnik_msgs-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:B-val is deprecated.  Use robotnik_msgs-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <set_CartesianEuler_pose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:C-val is deprecated.  Use robotnik_msgs-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_CartesianEuler_pose-request>) ostream)
  "Serializes a message object of type '<set_CartesianEuler_pose-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'A))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'B))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'C))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_CartesianEuler_pose-request>) istream)
  "Deserializes a message object of type '<set_CartesianEuler_pose-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'A) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'B) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'C) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_CartesianEuler_pose-request>)))
  "Returns string type for a service object of type '<set_CartesianEuler_pose-request>"
  "robotnik_msgs/set_CartesianEuler_poseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_CartesianEuler_pose-request)))
  "Returns string type for a service object of type 'set_CartesianEuler_pose-request"
  "robotnik_msgs/set_CartesianEuler_poseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_CartesianEuler_pose-request>)))
  "Returns md5sum for a message object of type '<set_CartesianEuler_pose-request>"
  "2519f4d60ca7104c2905597455df82b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_CartesianEuler_pose-request)))
  "Returns md5sum for a message object of type 'set_CartesianEuler_pose-request"
  "2519f4d60ca7104c2905597455df82b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_CartesianEuler_pose-request>)))
  "Returns full string definition for message of type '<set_CartesianEuler_pose-request>"
  (cl:format cl:nil "# New robot X position (mm)~%float32 x~%# New robot Y position (mm)~%float32 y~%# New robot Z position (mm)~%float32 z~%# New robot Orientation (grad)~%float32 A~%# New robot Orientation (grad)~%float32 B~%# New robot Orientation (grad)~%float32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_CartesianEuler_pose-request)))
  "Returns full string definition for message of type 'set_CartesianEuler_pose-request"
  (cl:format cl:nil "# New robot X position (mm)~%float32 x~%# New robot Y position (mm)~%float32 y~%# New robot Z position (mm)~%float32 z~%# New robot Orientation (grad)~%float32 A~%# New robot Orientation (grad)~%float32 B~%# New robot Orientation (grad)~%float32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_CartesianEuler_pose-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_CartesianEuler_pose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_CartesianEuler_pose-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude set_CartesianEuler_pose-response.msg.html

(cl:defclass <set_CartesianEuler_pose-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_CartesianEuler_pose-response (<set_CartesianEuler_pose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_CartesianEuler_pose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_CartesianEuler_pose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<set_CartesianEuler_pose-response> is deprecated: use robotnik_msgs-srv:set_CartesianEuler_pose-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_CartesianEuler_pose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_CartesianEuler_pose-response>) ostream)
  "Serializes a message object of type '<set_CartesianEuler_pose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_CartesianEuler_pose-response>) istream)
  "Deserializes a message object of type '<set_CartesianEuler_pose-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_CartesianEuler_pose-response>)))
  "Returns string type for a service object of type '<set_CartesianEuler_pose-response>"
  "robotnik_msgs/set_CartesianEuler_poseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_CartesianEuler_pose-response)))
  "Returns string type for a service object of type 'set_CartesianEuler_pose-response"
  "robotnik_msgs/set_CartesianEuler_poseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_CartesianEuler_pose-response>)))
  "Returns md5sum for a message object of type '<set_CartesianEuler_pose-response>"
  "2519f4d60ca7104c2905597455df82b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_CartesianEuler_pose-response)))
  "Returns md5sum for a message object of type 'set_CartesianEuler_pose-response"
  "2519f4d60ca7104c2905597455df82b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_CartesianEuler_pose-response>)))
  "Returns full string definition for message of type '<set_CartesianEuler_pose-response>"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_CartesianEuler_pose-response)))
  "Returns full string definition for message of type 'set_CartesianEuler_pose-response"
  (cl:format cl:nil "bool ret ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_CartesianEuler_pose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_CartesianEuler_pose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_CartesianEuler_pose-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_CartesianEuler_pose)))
  'set_CartesianEuler_pose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_CartesianEuler_pose)))
  'set_CartesianEuler_pose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_CartesianEuler_pose)))
  "Returns string type for a service object of type '<set_CartesianEuler_pose>"
  "robotnik_msgs/set_CartesianEuler_pose")