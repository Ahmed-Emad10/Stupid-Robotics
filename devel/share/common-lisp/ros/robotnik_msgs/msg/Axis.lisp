; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Axis.msg.html

(cl:defclass <Axis> (roslisp-msg-protocol:ros-message)
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
   (focus
    :reader focus
    :initarg :focus
    :type cl:float
    :initform 0.0)
   (brightness
    :reader brightness
    :initarg :brightness
    :type cl:float
    :initform 0.0)
   (iris
    :reader iris
    :initarg :iris
    :type cl:float
    :initform 0.0)
   (autofocus
    :reader autofocus
    :initarg :autofocus
    :type cl:boolean
    :initform cl:nil)
   (autoiris
    :reader autoiris
    :initarg :autoiris
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Axis (<Axis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Axis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Axis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Axis> is deprecated: use robotnik_msgs-msg:Axis instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:pan-val is deprecated.  Use robotnik_msgs-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:tilt-val is deprecated.  Use robotnik_msgs-msg:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:zoom-val is deprecated.  Use robotnik_msgs-msg:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'focus-val :lambda-list '(m))
(cl:defmethod focus-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:focus-val is deprecated.  Use robotnik_msgs-msg:focus instead.")
  (focus m))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:brightness-val is deprecated.  Use robotnik_msgs-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'iris-val :lambda-list '(m))
(cl:defmethod iris-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:iris-val is deprecated.  Use robotnik_msgs-msg:iris instead.")
  (iris m))

(cl:ensure-generic-function 'autofocus-val :lambda-list '(m))
(cl:defmethod autofocus-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:autofocus-val is deprecated.  Use robotnik_msgs-msg:autofocus instead.")
  (autofocus m))

(cl:ensure-generic-function 'autoiris-val :lambda-list '(m))
(cl:defmethod autoiris-val ((m <Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:autoiris-val is deprecated.  Use robotnik_msgs-msg:autoiris instead.")
  (autoiris m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Axis>) ostream)
  "Serializes a message object of type '<Axis>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'focus))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brightness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'iris))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autofocus) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autoiris) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Axis>) istream)
  "Deserializes a message object of type '<Axis>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'focus) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brightness) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'iris) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'autofocus) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'autoiris) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Axis>)))
  "Returns string type for a message object of type '<Axis>"
  "robotnik_msgs/Axis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Axis)))
  "Returns string type for a message object of type 'Axis"
  "robotnik_msgs/Axis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Axis>)))
  "Returns md5sum for a message object of type '<Axis>"
  "e5a99fe291a5635d3f85f17b629d8088")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Axis)))
  "Returns md5sum for a message object of type 'Axis"
  "e5a99fe291a5635d3f85f17b629d8088")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Axis>)))
  "Returns full string definition for message of type '<Axis>"
  (cl:format cl:nil "float32 pan~%float32 tilt~%float32 zoom~%float32 focus~%float32 brightness~%float32 iris~%bool autofocus~%bool autoiris~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Axis)))
  "Returns full string definition for message of type 'Axis"
  (cl:format cl:nil "float32 pan~%float32 tilt~%float32 zoom~%float32 focus~%float32 brightness~%float32 iris~%bool autofocus~%bool autoiris~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Axis>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Axis>))
  "Converts a ROS message object to a list"
  (cl:list 'Axis
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':focus (focus msg))
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':iris (iris msg))
    (cl:cons ':autofocus (autofocus msg))
    (cl:cons ':autoiris (autoiris msg))
))
