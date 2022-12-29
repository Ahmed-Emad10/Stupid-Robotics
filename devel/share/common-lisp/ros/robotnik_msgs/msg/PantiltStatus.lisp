; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude PantiltStatus.msg.html

(cl:defclass <PantiltStatus> (roslisp-msg-protocol:ros-message)
  ((pan_pos
    :reader pan_pos
    :initarg :pan_pos
    :type cl:float
    :initform 0.0)
   (tilt_pos
    :reader tilt_pos
    :initarg :tilt_pos
    :type cl:float
    :initform 0.0)
   (pan_speed
    :reader pan_speed
    :initarg :pan_speed
    :type cl:float
    :initform 0.0)
   (tilt_speed
    :reader tilt_speed
    :initarg :tilt_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass PantiltStatus (<PantiltStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PantiltStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PantiltStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<PantiltStatus> is deprecated: use robotnik_msgs-msg:PantiltStatus instead.")))

(cl:ensure-generic-function 'pan_pos-val :lambda-list '(m))
(cl:defmethod pan_pos-val ((m <PantiltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:pan_pos-val is deprecated.  Use robotnik_msgs-msg:pan_pos instead.")
  (pan_pos m))

(cl:ensure-generic-function 'tilt_pos-val :lambda-list '(m))
(cl:defmethod tilt_pos-val ((m <PantiltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:tilt_pos-val is deprecated.  Use robotnik_msgs-msg:tilt_pos instead.")
  (tilt_pos m))

(cl:ensure-generic-function 'pan_speed-val :lambda-list '(m))
(cl:defmethod pan_speed-val ((m <PantiltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:pan_speed-val is deprecated.  Use robotnik_msgs-msg:pan_speed instead.")
  (pan_speed m))

(cl:ensure-generic-function 'tilt_speed-val :lambda-list '(m))
(cl:defmethod tilt_speed-val ((m <PantiltStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:tilt_speed-val is deprecated.  Use robotnik_msgs-msg:tilt_speed instead.")
  (tilt_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PantiltStatus>) ostream)
  "Serializes a message object of type '<PantiltStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt_pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PantiltStatus>) istream)
  "Deserializes a message object of type '<PantiltStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt_pos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PantiltStatus>)))
  "Returns string type for a message object of type '<PantiltStatus>"
  "robotnik_msgs/PantiltStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PantiltStatus)))
  "Returns string type for a message object of type 'PantiltStatus"
  "robotnik_msgs/PantiltStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PantiltStatus>)))
  "Returns md5sum for a message object of type '<PantiltStatus>"
  "b9addaf9ff55168a01a8a6a9e689829f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PantiltStatus)))
  "Returns md5sum for a message object of type 'PantiltStatus"
  "b9addaf9ff55168a01a8a6a9e689829f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PantiltStatus>)))
  "Returns full string definition for message of type '<PantiltStatus>"
  (cl:format cl:nil "float32 pan_pos~%float32 tilt_pos~%float32 pan_speed~%float32 tilt_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PantiltStatus)))
  "Returns full string definition for message of type 'PantiltStatus"
  (cl:format cl:nil "float32 pan_pos~%float32 tilt_pos~%float32 pan_speed~%float32 tilt_speed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PantiltStatus>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PantiltStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PantiltStatus
    (cl:cons ':pan_pos (pan_pos msg))
    (cl:cons ':tilt_pos (tilt_pos msg))
    (cl:cons ':pan_speed (pan_speed msg))
    (cl:cons ':tilt_speed (tilt_speed msg))
))
