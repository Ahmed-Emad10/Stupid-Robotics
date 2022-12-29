; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetMotorPID-request.msg.html

(cl:defclass <SetMotorPID-request> (roslisp-msg-protocol:ros-message)
  ((pid
    :reader pid
    :initarg :pid
    :type robotnik_msgs-msg:MotorPID
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorPID)))
)

(cl:defclass SetMotorPID-request (<SetMotorPID-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorPID-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorPID-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorPID-request> is deprecated: use robotnik_msgs-srv:SetMotorPID-request instead.")))

(cl:ensure-generic-function 'pid-val :lambda-list '(m))
(cl:defmethod pid-val ((m <SetMotorPID-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:pid-val is deprecated.  Use robotnik_msgs-srv:pid instead.")
  (pid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorPID-request>) ostream)
  "Serializes a message object of type '<SetMotorPID-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorPID-request>) istream)
  "Deserializes a message object of type '<SetMotorPID-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorPID-request>)))
  "Returns string type for a service object of type '<SetMotorPID-request>"
  "robotnik_msgs/SetMotorPIDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorPID-request)))
  "Returns string type for a service object of type 'SetMotorPID-request"
  "robotnik_msgs/SetMotorPIDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorPID-request>)))
  "Returns md5sum for a message object of type '<SetMotorPID-request>"
  "b471f23ed4110be72a67eb0fa77abae1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorPID-request)))
  "Returns md5sum for a message object of type 'SetMotorPID-request"
  "b471f23ed4110be72a67eb0fa77abae1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorPID-request>)))
  "Returns full string definition for message of type '<SetMotorPID-request>"
  (cl:format cl:nil "MotorPID pid~%~%================================================================================~%MSG: robotnik_msgs/MotorPID~%# either can_id or name are set~%# if can_id is -1, then this refers to all motors.~%int32[] can_id~%string[] name~%float32[] kp~%float32[] ki~%float32[] kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorPID-request)))
  "Returns full string definition for message of type 'SetMotorPID-request"
  (cl:format cl:nil "MotorPID pid~%~%================================================================================~%MSG: robotnik_msgs/MotorPID~%# either can_id or name are set~%# if can_id is -1, then this refers to all motors.~%int32[] can_id~%string[] name~%float32[] kp~%float32[] ki~%float32[] kd~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorPID-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorPID-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorPID-request
    (cl:cons ':pid (pid msg))
))
;//! \htmlinclude SetMotorPID-response.msg.html

(cl:defclass <SetMotorPID-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetMotorPID-response (<SetMotorPID-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMotorPID-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMotorPID-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetMotorPID-response> is deprecated: use robotnik_msgs-srv:SetMotorPID-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMotorPID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetMotorPID-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMotorPID-response>) ostream)
  "Serializes a message object of type '<SetMotorPID-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMotorPID-response>) istream)
  "Deserializes a message object of type '<SetMotorPID-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMotorPID-response>)))
  "Returns string type for a service object of type '<SetMotorPID-response>"
  "robotnik_msgs/SetMotorPIDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorPID-response)))
  "Returns string type for a service object of type 'SetMotorPID-response"
  "robotnik_msgs/SetMotorPIDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMotorPID-response>)))
  "Returns md5sum for a message object of type '<SetMotorPID-response>"
  "b471f23ed4110be72a67eb0fa77abae1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMotorPID-response)))
  "Returns md5sum for a message object of type 'SetMotorPID-response"
  "b471f23ed4110be72a67eb0fa77abae1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMotorPID-response>)))
  "Returns full string definition for message of type '<SetMotorPID-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMotorPID-response)))
  "Returns full string definition for message of type 'SetMotorPID-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMotorPID-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMotorPID-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMotorPID-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMotorPID)))
  'SetMotorPID-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMotorPID)))
  'SetMotorPID-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMotorPID)))
  "Returns string type for a service object of type '<SetMotorPID>"
  "robotnik_msgs/SetMotorPID")