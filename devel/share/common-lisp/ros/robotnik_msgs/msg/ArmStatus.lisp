; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude ArmStatus.msg.html

(cl:defclass <ArmStatus> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type cl:string
    :initform ""))
)

(cl:defclass ArmStatus (<ArmStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArmStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArmStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<ArmStatus> is deprecated: use robotnik_msgs-msg:ArmStatus instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ArmStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:position-val is deprecated.  Use robotnik_msgs-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArmStatus>) ostream)
  "Serializes a message object of type '<ArmStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArmStatus>) istream)
  "Deserializes a message object of type '<ArmStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArmStatus>)))
  "Returns string type for a message object of type '<ArmStatus>"
  "robotnik_msgs/ArmStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArmStatus)))
  "Returns string type for a message object of type 'ArmStatus"
  "robotnik_msgs/ArmStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArmStatus>)))
  "Returns md5sum for a message object of type '<ArmStatus>"
  "d6afdd327a64a50f94a7d3a2de5435e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArmStatus)))
  "Returns md5sum for a message object of type 'ArmStatus"
  "d6afdd327a64a50f94a7d3a2de5435e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArmStatus>)))
  "Returns full string definition for message of type '<ArmStatus>"
  (cl:format cl:nil "# Current arm position~%string position~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArmStatus)))
  "Returns full string definition for message of type 'ArmStatus"
  (cl:format cl:nil "# Current arm position~%string position~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArmStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArmStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ArmStatus
    (cl:cons ':position (position msg))
))
