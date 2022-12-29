; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude BatteryStatus.msg.html

(cl:defclass <BatteryStatus> (roslisp-msg-protocol:ros-message)
  ((voltage
    :reader voltage
    :initarg :voltage
    :type cl:float
    :initform 0.0)
   (current
    :reader current
    :initarg :current
    :type cl:float
    :initform 0.0)
   (level
    :reader level
    :initarg :level
    :type cl:float
    :initform 0.0)
   (time_remaining
    :reader time_remaining
    :initarg :time_remaining
    :type cl:integer
    :initform 0)
   (time_charging
    :reader time_charging
    :initarg :time_charging
    :type cl:integer
    :initform 0)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil)
   (cell_voltages
    :reader cell_voltages
    :initarg :cell_voltages
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BatteryStatus (<BatteryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<BatteryStatus> is deprecated: use robotnik_msgs-msg:BatteryStatus instead.")))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:voltage-val is deprecated.  Use robotnik_msgs-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current-val :lambda-list '(m))
(cl:defmethod current-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:current-val is deprecated.  Use robotnik_msgs-msg:current instead.")
  (current m))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:level-val is deprecated.  Use robotnik_msgs-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'time_remaining-val :lambda-list '(m))
(cl:defmethod time_remaining-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:time_remaining-val is deprecated.  Use robotnik_msgs-msg:time_remaining instead.")
  (time_remaining m))

(cl:ensure-generic-function 'time_charging-val :lambda-list '(m))
(cl:defmethod time_charging-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:time_charging-val is deprecated.  Use robotnik_msgs-msg:time_charging instead.")
  (time_charging m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:is_charging-val is deprecated.  Use robotnik_msgs-msg:is_charging instead.")
  (is_charging m))

(cl:ensure-generic-function 'cell_voltages-val :lambda-list '(m))
(cl:defmethod cell_voltages-val ((m <BatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:cell_voltages-val is deprecated.  Use robotnik_msgs-msg:cell_voltages instead.")
  (cell_voltages m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryStatus>) ostream)
  "Serializes a message object of type '<BatteryStatus>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voltage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_remaining)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_charging)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cell_voltages))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cell_voltages))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryStatus>) istream)
  "Deserializes a message object of type '<BatteryStatus>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voltage) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'level) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_remaining)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_charging)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_charging)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cell_voltages) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cell_voltages)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryStatus>)))
  "Returns string type for a message object of type '<BatteryStatus>"
  "robotnik_msgs/BatteryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryStatus)))
  "Returns string type for a message object of type 'BatteryStatus"
  "robotnik_msgs/BatteryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryStatus>)))
  "Returns md5sum for a message object of type '<BatteryStatus>"
  "8730315e1ea11d6ba3e264e6efe816c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryStatus)))
  "Returns md5sum for a message object of type 'BatteryStatus"
  "8730315e1ea11d6ba3e264e6efe816c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryStatus>)))
  "Returns full string definition for message of type '<BatteryStatus>"
  (cl:format cl:nil "float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%float32[] cell_voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryStatus)))
  "Returns full string definition for message of type 'BatteryStatus"
  (cl:format cl:nil "float32 voltage			# in volts~%float32 current			# in amperes~%float32 level			# in %~%uint32 time_remaining		# in minutes~%uint32 time_charging            # in minutes ~%bool is_charging                # true when connected~%float32[] cell_voltages~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryStatus>))
  (cl:+ 0
     4
     4
     4
     4
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cell_voltages) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryStatus
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current (current msg))
    (cl:cons ':level (level msg))
    (cl:cons ':time_remaining (time_remaining msg))
    (cl:cons ':time_charging (time_charging msg))
    (cl:cons ':is_charging (is_charging msg))
    (cl:cons ':cell_voltages (cell_voltages msg))
))
