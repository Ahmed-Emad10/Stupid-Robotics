; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude BatteryDockingStatus.msg.html

(cl:defclass <BatteryDockingStatus> (roslisp-msg-protocol:ros-message)
  ((operation_mode
    :reader operation_mode
    :initarg :operation_mode
    :type cl:string
    :initform "")
   (contact_relay_status
    :reader contact_relay_status
    :initarg :contact_relay_status
    :type cl:boolean
    :initform cl:nil)
   (charger_relay_status
    :reader charger_relay_status
    :initarg :charger_relay_status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BatteryDockingStatus (<BatteryDockingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryDockingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryDockingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<BatteryDockingStatus> is deprecated: use robotnik_msgs-msg:BatteryDockingStatus instead.")))

(cl:ensure-generic-function 'operation_mode-val :lambda-list '(m))
(cl:defmethod operation_mode-val ((m <BatteryDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:operation_mode-val is deprecated.  Use robotnik_msgs-msg:operation_mode instead.")
  (operation_mode m))

(cl:ensure-generic-function 'contact_relay_status-val :lambda-list '(m))
(cl:defmethod contact_relay_status-val ((m <BatteryDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:contact_relay_status-val is deprecated.  Use robotnik_msgs-msg:contact_relay_status instead.")
  (contact_relay_status m))

(cl:ensure-generic-function 'charger_relay_status-val :lambda-list '(m))
(cl:defmethod charger_relay_status-val ((m <BatteryDockingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:charger_relay_status-val is deprecated.  Use robotnik_msgs-msg:charger_relay_status instead.")
  (charger_relay_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<BatteryDockingStatus>)))
    "Constants for message type '<BatteryDockingStatus>"
  '((:MODE_DISABLED . "disabled")
    (:MODE_AUTO_HW . "automatic_hw")
    (:MODE_AUTO_SW . "automatic_sw")
    (:MODE_MANUAL_SW . "manual_sw"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'BatteryDockingStatus)))
    "Constants for message type 'BatteryDockingStatus"
  '((:MODE_DISABLED . "disabled")
    (:MODE_AUTO_HW . "automatic_hw")
    (:MODE_AUTO_SW . "automatic_sw")
    (:MODE_MANUAL_SW . "manual_sw"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryDockingStatus>) ostream)
  "Serializes a message object of type '<BatteryDockingStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contact_relay_status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'charger_relay_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryDockingStatus>) istream)
  "Deserializes a message object of type '<BatteryDockingStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'contact_relay_status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'charger_relay_status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryDockingStatus>)))
  "Returns string type for a message object of type '<BatteryDockingStatus>"
  "robotnik_msgs/BatteryDockingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryDockingStatus)))
  "Returns string type for a message object of type 'BatteryDockingStatus"
  "robotnik_msgs/BatteryDockingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryDockingStatus>)))
  "Returns md5sum for a message object of type '<BatteryDockingStatus>"
  "d7c3a4e25e4a4a665c4a1dd0862edfc2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryDockingStatus)))
  "Returns md5sum for a message object of type 'BatteryDockingStatus"
  "d7c3a4e25e4a4a665c4a1dd0862edfc2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryDockingStatus>)))
  "Returns full string definition for message of type '<BatteryDockingStatus>"
  (cl:format cl:nil "# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryDockingStatus)))
  "Returns full string definition for message of type 'BatteryDockingStatus"
  (cl:format cl:nil "# Modes of operation:~%# no docking station contacts~%string MODE_DISABLED=disabled~%# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw~%string MODE_AUTO_HW=automatic_hw~%# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw~%string MODE_AUTO_SW=automatic_sw~%# Unattended relay detection & and manual activation of the charging relay~%string MODE_MANUAL_SW=manual_sw~%~%string operation_mode~%	~%bool contact_relay_status	# shows if there's contact with the charger~%bool charger_relay_status   # shows if the relay for the charge is active or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryDockingStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'operation_mode))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryDockingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryDockingStatus
    (cl:cons ':operation_mode (operation_mode msg))
    (cl:cons ':contact_relay_status (contact_relay_status msg))
    (cl:cons ':charger_relay_status (charger_relay_status msg))
))
