; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Interfaces.msg.html

(cl:defclass <Interfaces> (roslisp-msg-protocol:ros-message)
  ((total
    :reader total
    :initarg :total
    :type robotnik_msgs-msg:Data
    :initform (cl:make-instance 'robotnik_msgs-msg:Data))
   (interfaces
    :reader interfaces
    :initarg :interfaces
    :type (cl:vector robotnik_msgs-msg:Data)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:Data :initial-element (cl:make-instance 'robotnik_msgs-msg:Data))))
)

(cl:defclass Interfaces (<Interfaces>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Interfaces>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Interfaces)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Interfaces> is deprecated: use robotnik_msgs-msg:Interfaces instead.")))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <Interfaces>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:total-val is deprecated.  Use robotnik_msgs-msg:total instead.")
  (total m))

(cl:ensure-generic-function 'interfaces-val :lambda-list '(m))
(cl:defmethod interfaces-val ((m <Interfaces>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:interfaces-val is deprecated.  Use robotnik_msgs-msg:interfaces instead.")
  (interfaces m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Interfaces>) ostream)
  "Serializes a message object of type '<Interfaces>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'total) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'interfaces))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'interfaces))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Interfaces>) istream)
  "Deserializes a message object of type '<Interfaces>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'total) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'interfaces) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'interfaces)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:Data))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Interfaces>)))
  "Returns string type for a message object of type '<Interfaces>"
  "robotnik_msgs/Interfaces")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Interfaces)))
  "Returns string type for a message object of type 'Interfaces"
  "robotnik_msgs/Interfaces")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Interfaces>)))
  "Returns md5sum for a message object of type '<Interfaces>"
  "2cae798f4cdadfdb2326b84ac55dc3ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Interfaces)))
  "Returns md5sum for a message object of type 'Interfaces"
  "2cae798f4cdadfdb2326b84ac55dc3ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Interfaces>)))
  "Returns full string definition for message of type '<Interfaces>"
  (cl:format cl:nil "# Contains the total number of bytes and pkts~%Data total~%# Contains information of every interface~%Data[] interfaces~%~%~%================================================================================~%MSG: robotnik_msgs/Data~%string interface~%float32 bytes_sent~%float32 bytes_received~%string units_sent~%string units_received~%int32 packages_sent~%int32 packages_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Interfaces)))
  "Returns full string definition for message of type 'Interfaces"
  (cl:format cl:nil "# Contains the total number of bytes and pkts~%Data total~%# Contains information of every interface~%Data[] interfaces~%~%~%================================================================================~%MSG: robotnik_msgs/Data~%string interface~%float32 bytes_sent~%float32 bytes_received~%string units_sent~%string units_received~%int32 packages_sent~%int32 packages_received~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Interfaces>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'total))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'interfaces) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Interfaces>))
  "Converts a ROS message object to a list"
  (cl:list 'Interfaces
    (cl:cons ':total (total msg))
    (cl:cons ':interfaces (interfaces msg))
))
