; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude GetMotorsHeadingOffset-request.msg.html

(cl:defclass <GetMotorsHeadingOffset-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass GetMotorsHeadingOffset-request (<GetMotorsHeadingOffset-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMotorsHeadingOffset-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMotorsHeadingOffset-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetMotorsHeadingOffset-request> is deprecated: use robotnik_msgs-srv:GetMotorsHeadingOffset-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <GetMotorsHeadingOffset-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:request-val is deprecated.  Use robotnik_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMotorsHeadingOffset-request>) ostream)
  "Serializes a message object of type '<GetMotorsHeadingOffset-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMotorsHeadingOffset-request>) istream)
  "Deserializes a message object of type '<GetMotorsHeadingOffset-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMotorsHeadingOffset-request>)))
  "Returns string type for a service object of type '<GetMotorsHeadingOffset-request>"
  "robotnik_msgs/GetMotorsHeadingOffsetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotorsHeadingOffset-request)))
  "Returns string type for a service object of type 'GetMotorsHeadingOffset-request"
  "robotnik_msgs/GetMotorsHeadingOffsetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMotorsHeadingOffset-request>)))
  "Returns md5sum for a message object of type '<GetMotorsHeadingOffset-request>"
  "cdf947b0b6f5aca552a9fd0b8e9d235b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMotorsHeadingOffset-request)))
  "Returns md5sum for a message object of type 'GetMotorsHeadingOffset-request"
  "cdf947b0b6f5aca552a9fd0b8e9d235b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMotorsHeadingOffset-request>)))
  "Returns full string definition for message of type '<GetMotorsHeadingOffset-request>"
  (cl:format cl:nil "std_msgs/Empty request~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMotorsHeadingOffset-request)))
  "Returns full string definition for message of type 'GetMotorsHeadingOffset-request"
  (cl:format cl:nil "std_msgs/Empty request~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMotorsHeadingOffset-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMotorsHeadingOffset-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMotorsHeadingOffset-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude GetMotorsHeadingOffset-response.msg.html

(cl:defclass <GetMotorsHeadingOffset-response> (roslisp-msg-protocol:ros-message)
  ((offsets
    :reader offsets
    :initarg :offsets
    :type (cl:vector robotnik_msgs-msg:MotorHeadingOffset)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:MotorHeadingOffset :initial-element (cl:make-instance 'robotnik_msgs-msg:MotorHeadingOffset))))
)

(cl:defclass GetMotorsHeadingOffset-response (<GetMotorsHeadingOffset-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMotorsHeadingOffset-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMotorsHeadingOffset-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetMotorsHeadingOffset-response> is deprecated: use robotnik_msgs-srv:GetMotorsHeadingOffset-response instead.")))

(cl:ensure-generic-function 'offsets-val :lambda-list '(m))
(cl:defmethod offsets-val ((m <GetMotorsHeadingOffset-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:offsets-val is deprecated.  Use robotnik_msgs-srv:offsets instead.")
  (offsets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMotorsHeadingOffset-response>) ostream)
  "Serializes a message object of type '<GetMotorsHeadingOffset-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'offsets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'offsets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMotorsHeadingOffset-response>) istream)
  "Deserializes a message object of type '<GetMotorsHeadingOffset-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'offsets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'offsets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:MotorHeadingOffset))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMotorsHeadingOffset-response>)))
  "Returns string type for a service object of type '<GetMotorsHeadingOffset-response>"
  "robotnik_msgs/GetMotorsHeadingOffsetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotorsHeadingOffset-response)))
  "Returns string type for a service object of type 'GetMotorsHeadingOffset-response"
  "robotnik_msgs/GetMotorsHeadingOffsetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMotorsHeadingOffset-response>)))
  "Returns md5sum for a message object of type '<GetMotorsHeadingOffset-response>"
  "cdf947b0b6f5aca552a9fd0b8e9d235b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMotorsHeadingOffset-response)))
  "Returns md5sum for a message object of type 'GetMotorsHeadingOffset-response"
  "cdf947b0b6f5aca552a9fd0b8e9d235b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMotorsHeadingOffset-response>)))
  "Returns full string definition for message of type '<GetMotorsHeadingOffset-response>"
  (cl:format cl:nil "robotnik_msgs/MotorHeadingOffset[] offsets~%~%~%================================================================================~%MSG: robotnik_msgs/MotorHeadingOffset~%int32 motor~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMotorsHeadingOffset-response)))
  "Returns full string definition for message of type 'GetMotorsHeadingOffset-response"
  (cl:format cl:nil "robotnik_msgs/MotorHeadingOffset[] offsets~%~%~%================================================================================~%MSG: robotnik_msgs/MotorHeadingOffset~%int32 motor~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMotorsHeadingOffset-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'offsets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMotorsHeadingOffset-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMotorsHeadingOffset-response
    (cl:cons ':offsets (offsets msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMotorsHeadingOffset)))
  'GetMotorsHeadingOffset-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMotorsHeadingOffset)))
  'GetMotorsHeadingOffset-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMotorsHeadingOffset)))
  "Returns string type for a service object of type '<GetMotorsHeadingOffset>"
  "robotnik_msgs/GetMotorsHeadingOffset")