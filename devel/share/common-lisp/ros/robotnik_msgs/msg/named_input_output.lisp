; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude named_input_output.msg.html

(cl:defclass <named_input_output> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass named_input_output (<named_input_output>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <named_input_output>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'named_input_output)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<named_input_output> is deprecated: use robotnik_msgs-msg:named_input_output instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <named_input_output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:name-val is deprecated.  Use robotnik_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <named_input_output>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:value-val is deprecated.  Use robotnik_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <named_input_output>) ostream)
  "Serializes a message object of type '<named_input_output>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'value) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <named_input_output>) istream)
  "Deserializes a message object of type '<named_input_output>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'value) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<named_input_output>)))
  "Returns string type for a message object of type '<named_input_output>"
  "robotnik_msgs/named_input_output")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'named_input_output)))
  "Returns string type for a message object of type 'named_input_output"
  "robotnik_msgs/named_input_output")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<named_input_output>)))
  "Returns md5sum for a message object of type '<named_input_output>"
  "23f05028c1a699fb83e22401228c3a9e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'named_input_output)))
  "Returns md5sum for a message object of type 'named_input_output"
  "23f05028c1a699fb83e22401228c3a9e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<named_input_output>)))
  "Returns full string definition for message of type '<named_input_output>"
  (cl:format cl:nil "string name~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'named_input_output)))
  "Returns full string definition for message of type 'named_input_output"
  (cl:format cl:nil "string name~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <named_input_output>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <named_input_output>))
  "Converts a ROS message object to a list"
  (cl:list 'named_input_output
    (cl:cons ':name (name msg))
    (cl:cons ':value (value msg))
))
