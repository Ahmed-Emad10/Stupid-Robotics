; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetCurrent-request.msg.html

(cl:defclass <SetCurrent-request> (roslisp-msg-protocol:ros-message)
  ((current
    :reader current
    :initarg :current
    :type robotnik_msgs-msg:MotorCurrent
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorCurrent)))
)

(cl:defclass SetCurrent-request (<SetCurrent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCurrent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCurrent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetCurrent-request> is deprecated: use robotnik_msgs-srv:SetCurrent-request instead.")))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <SetCurrent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:current-val is deprecated.  Use robotnik_msgs-srv:current instead.")
  (current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCurrent-request>) ostream)
  "Serializes a message object of type '<SetCurrent-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'current) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCurrent-request>) istream)
  "Deserializes a message object of type '<SetCurrent-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'current) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCurrent-request>)))
  "Returns string type for a service object of type '<SetCurrent-request>"
  "robotnik_msgs/SetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrent-request)))
  "Returns string type for a service object of type 'SetCurrent-request"
  "robotnik_msgs/SetCurrentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCurrent-request>)))
  "Returns md5sum for a message object of type '<SetCurrent-request>"
  "220c889cf443b9b34fafe3d24798e477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCurrent-request)))
  "Returns md5sum for a message object of type 'SetCurrent-request"
  "220c889cf443b9b34fafe3d24798e477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCurrent-request>)))
  "Returns full string definition for message of type '<SetCurrent-request>"
  (cl:format cl:nil "MotorCurrent current~%~%================================================================================~%MSG: robotnik_msgs/MotorCurrent~%# either can_id or name are set~%# if can_id is -1, then this refers to all motors.~%int32[] can_id~%string[] name~%float32[] continuous_current_limit # Amperes~%float32[] current_peak_time # Seconds~%float32[] current_peak_limit # Amperes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCurrent-request)))
  "Returns full string definition for message of type 'SetCurrent-request"
  (cl:format cl:nil "MotorCurrent current~%~%================================================================================~%MSG: robotnik_msgs/MotorCurrent~%# either can_id or name are set~%# if can_id is -1, then this refers to all motors.~%int32[] can_id~%string[] name~%float32[] continuous_current_limit # Amperes~%float32[] current_peak_time # Seconds~%float32[] current_peak_limit # Amperes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCurrent-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'current))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCurrent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCurrent-request
    (cl:cons ':current (current msg))
))
;//! \htmlinclude SetCurrent-response.msg.html

(cl:defclass <SetCurrent-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetCurrent-response (<SetCurrent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCurrent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCurrent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetCurrent-response> is deprecated: use robotnik_msgs-srv:SetCurrent-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetCurrent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:message-val is deprecated.  Use robotnik_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCurrent-response>) ostream)
  "Serializes a message object of type '<SetCurrent-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCurrent-response>) istream)
  "Deserializes a message object of type '<SetCurrent-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCurrent-response>)))
  "Returns string type for a service object of type '<SetCurrent-response>"
  "robotnik_msgs/SetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrent-response)))
  "Returns string type for a service object of type 'SetCurrent-response"
  "robotnik_msgs/SetCurrentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCurrent-response>)))
  "Returns md5sum for a message object of type '<SetCurrent-response>"
  "220c889cf443b9b34fafe3d24798e477")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCurrent-response)))
  "Returns md5sum for a message object of type 'SetCurrent-response"
  "220c889cf443b9b34fafe3d24798e477")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCurrent-response>)))
  "Returns full string definition for message of type '<SetCurrent-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCurrent-response)))
  "Returns full string definition for message of type 'SetCurrent-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCurrent-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCurrent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCurrent-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCurrent)))
  'SetCurrent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCurrent)))
  'SetCurrent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrent)))
  "Returns string type for a service object of type '<SetCurrent>"
  "robotnik_msgs/SetCurrent")