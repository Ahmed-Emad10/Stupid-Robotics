; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude ElevatorStatus.msg.html

(cl:defclass <ElevatorStatus> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type cl:string
    :initform "")
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass ElevatorStatus (<ElevatorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElevatorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElevatorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<ElevatorStatus> is deprecated: use robotnik_msgs-msg:ElevatorStatus instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:state-val is deprecated.  Use robotnik_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:position-val is deprecated.  Use robotnik_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ElevatorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:height-val is deprecated.  Use robotnik_msgs-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ElevatorStatus>)))
    "Constants for message type '<ElevatorStatus>"
  '((:RAISING . "raising")
    (:LOWERING . "lowering")
    (:IDLE . "idle")
    (:ERROR_G_IO . "error_getting_io")
    (:ERROR_S_IO . "error_setting_io")
    (:ERROR_TIMEOUT . "error_timeout_in_action")
    (:UP . "up")
    (:DOWN . "down")
    (:UNKNOWN . "unknown"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ElevatorStatus)))
    "Constants for message type 'ElevatorStatus"
  '((:RAISING . "raising")
    (:LOWERING . "lowering")
    (:IDLE . "idle")
    (:ERROR_G_IO . "error_getting_io")
    (:ERROR_S_IO . "error_setting_io")
    (:ERROR_TIMEOUT . "error_timeout_in_action")
    (:UP . "up")
    (:DOWN . "down")
    (:UNKNOWN . "unknown"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElevatorStatus>) ostream)
  "Serializes a message object of type '<ElevatorStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'position))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElevatorStatus>) istream)
  "Deserializes a message object of type '<ElevatorStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'position) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElevatorStatus>)))
  "Returns string type for a message object of type '<ElevatorStatus>"
  "robotnik_msgs/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElevatorStatus)))
  "Returns string type for a message object of type 'ElevatorStatus"
  "robotnik_msgs/ElevatorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElevatorStatus>)))
  "Returns md5sum for a message object of type '<ElevatorStatus>"
  "4718bff9866c729031e595e6565fdb82")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElevatorStatus)))
  "Returns md5sum for a message object of type 'ElevatorStatus"
  "4718bff9866c729031e595e6565fdb82")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElevatorStatus>)))
  "Returns full string definition for message of type '<ElevatorStatus>"
  (cl:format cl:nil "# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElevatorStatus)))
  "Returns full string definition for message of type 'ElevatorStatus"
  (cl:format cl:nil "# state~%string RAISING=raising~%string LOWERING=lowering~%string IDLE=idle~%string ERROR_G_IO=error_getting_io~%string ERROR_S_IO=error_setting_io~%string ERROR_TIMEOUT=error_timeout_in_action~%# position~%string UP=up~%string DOWN=down~%string UNKNOWN=unknown~%# IDLE, RAISING, LOWERING~%string state~%# UP, DOWN, UNKNOWN~%string position~%float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElevatorStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'position))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElevatorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ElevatorStatus
    (cl:cons ':state (state msg))
    (cl:cons ':position (position msg))
    (cl:cons ':height (height msg))
))
