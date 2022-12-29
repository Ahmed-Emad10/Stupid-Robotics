; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude WatchdogStatusArray.msg.html

(cl:defclass <WatchdogStatusArray> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type (cl:vector robotnik_msgs-msg:WatchdogStatus)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:WatchdogStatus :initial-element (cl:make-instance 'robotnik_msgs-msg:WatchdogStatus))))
)

(cl:defclass WatchdogStatusArray (<WatchdogStatusArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WatchdogStatusArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WatchdogStatusArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<WatchdogStatusArray> is deprecated: use robotnik_msgs-msg:WatchdogStatusArray instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <WatchdogStatusArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:status-val is deprecated.  Use robotnik_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WatchdogStatusArray>) ostream)
  "Serializes a message object of type '<WatchdogStatusArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WatchdogStatusArray>) istream)
  "Deserializes a message object of type '<WatchdogStatusArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:WatchdogStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WatchdogStatusArray>)))
  "Returns string type for a message object of type '<WatchdogStatusArray>"
  "robotnik_msgs/WatchdogStatusArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WatchdogStatusArray)))
  "Returns string type for a message object of type 'WatchdogStatusArray"
  "robotnik_msgs/WatchdogStatusArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WatchdogStatusArray>)))
  "Returns md5sum for a message object of type '<WatchdogStatusArray>"
  "1df2dbf9ebcb5eb8dc5708907e8cc240")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WatchdogStatusArray)))
  "Returns md5sum for a message object of type 'WatchdogStatusArray"
  "1df2dbf9ebcb5eb8dc5708907e8cc240")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WatchdogStatusArray>)))
  "Returns full string definition for message of type '<WatchdogStatusArray>"
  (cl:format cl:nil "WatchdogStatus[] status~%~%================================================================================~%MSG: robotnik_msgs/WatchdogStatus~%string id~%# False if it's ok, True if fails~%bool timed_out~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WatchdogStatusArray)))
  "Returns full string definition for message of type 'WatchdogStatusArray"
  (cl:format cl:nil "WatchdogStatus[] status~%~%================================================================================~%MSG: robotnik_msgs/WatchdogStatus~%string id~%# False if it's ok, True if fails~%bool timed_out~%string description~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WatchdogStatusArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WatchdogStatusArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WatchdogStatusArray
    (cl:cons ':status (status msg))
))
