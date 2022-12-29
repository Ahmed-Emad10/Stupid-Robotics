; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude BoolArray.msg.html

(cl:defclass <BoolArray> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass BoolArray (<BoolArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoolArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoolArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<BoolArray> is deprecated: use robotnik_msgs-msg:BoolArray instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <BoolArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:data-val is deprecated.  Use robotnik_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoolArray>) ostream)
  "Serializes a message object of type '<BoolArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoolArray>) istream)
  "Deserializes a message object of type '<BoolArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoolArray>)))
  "Returns string type for a message object of type '<BoolArray>"
  "robotnik_msgs/BoolArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoolArray)))
  "Returns string type for a message object of type 'BoolArray"
  "robotnik_msgs/BoolArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoolArray>)))
  "Returns md5sum for a message object of type '<BoolArray>"
  "403a16d9294b908e45c67a6f3c3a5b27")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoolArray)))
  "Returns md5sum for a message object of type 'BoolArray"
  "403a16d9294b908e45c67a6f3c3a5b27")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoolArray>)))
  "Returns full string definition for message of type '<BoolArray>"
  (cl:format cl:nil "bool[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoolArray)))
  "Returns full string definition for message of type 'BoolArray"
  (cl:format cl:nil "bool[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoolArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoolArray>))
  "Converts a ROS message object to a list"
  (cl:list 'BoolArray
    (cl:cons ':data (data msg))
))
