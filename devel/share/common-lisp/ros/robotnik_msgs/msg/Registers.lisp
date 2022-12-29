; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Registers.msg.html

(cl:defclass <Registers> (roslisp-msg-protocol:ros-message)
  ((registers
    :reader registers
    :initarg :registers
    :type (cl:vector robotnik_msgs-msg:Register)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:Register :initial-element (cl:make-instance 'robotnik_msgs-msg:Register))))
)

(cl:defclass Registers (<Registers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Registers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Registers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Registers> is deprecated: use robotnik_msgs-msg:Registers instead.")))

(cl:ensure-generic-function 'registers-val :lambda-list '(m))
(cl:defmethod registers-val ((m <Registers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:registers-val is deprecated.  Use robotnik_msgs-msg:registers instead.")
  (registers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Registers>) ostream)
  "Serializes a message object of type '<Registers>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'registers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'registers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Registers>) istream)
  "Deserializes a message object of type '<Registers>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'registers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'registers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:Register))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Registers>)))
  "Returns string type for a message object of type '<Registers>"
  "robotnik_msgs/Registers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Registers)))
  "Returns string type for a message object of type 'Registers"
  "robotnik_msgs/Registers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Registers>)))
  "Returns md5sum for a message object of type '<Registers>"
  "12d8645a7a01078095f8477105240cef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Registers)))
  "Returns md5sum for a message object of type 'Registers"
  "12d8645a7a01078095f8477105240cef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Registers>)))
  "Returns full string definition for message of type '<Registers>"
  (cl:format cl:nil "robotnik_msgs/Register[] registers~%================================================================================~%MSG: robotnik_msgs/Register~%int32 id~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Registers)))
  "Returns full string definition for message of type 'Registers"
  (cl:format cl:nil "robotnik_msgs/Register[] registers~%================================================================================~%MSG: robotnik_msgs/Register~%int32 id~%int32 value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Registers>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'registers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Registers>))
  "Converts a ROS message object to a list"
  (cl:list 'Registers
    (cl:cons ':registers (registers msg))
))
