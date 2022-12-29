; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude SafetyModuleStatus.msg.html

(cl:defclass <SafetyModuleStatus> (roslisp-msg-protocol:ros-message)
  ((operation_mode
    :reader operation_mode
    :initarg :operation_mode
    :type cl:string
    :initform "")
   (safety_mode
    :reader safety_mode
    :initarg :safety_mode
    :type cl:string
    :initform "")
   (emergency_stop
    :reader emergency_stop
    :initarg :emergency_stop
    :type cl:boolean
    :initform cl:nil)
   (safety_stop
    :reader safety_stop
    :initarg :safety_stop
    :type cl:boolean
    :initform cl:nil)
   (lasers_on_standby
    :reader lasers_on_standby
    :initarg :lasers_on_standby
    :type cl:boolean
    :initform cl:nil)
   (current_speed
    :reader current_speed
    :initarg :current_speed
    :type cl:float
    :initform 0.0)
   (lasers_mode
    :reader lasers_mode
    :initarg :lasers_mode
    :type robotnik_msgs-msg:LaserMode
    :initform (cl:make-instance 'robotnik_msgs-msg:LaserMode))
   (lasers_status
    :reader lasers_status
    :initarg :lasers_status
    :type (cl:vector robotnik_msgs-msg:LaserStatus)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:LaserStatus :initial-element (cl:make-instance 'robotnik_msgs-msg:LaserStatus))))
)

(cl:defclass SafetyModuleStatus (<SafetyModuleStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyModuleStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyModuleStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<SafetyModuleStatus> is deprecated: use robotnik_msgs-msg:SafetyModuleStatus instead.")))

(cl:ensure-generic-function 'operation_mode-val :lambda-list '(m))
(cl:defmethod operation_mode-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:operation_mode-val is deprecated.  Use robotnik_msgs-msg:operation_mode instead.")
  (operation_mode m))

(cl:ensure-generic-function 'safety_mode-val :lambda-list '(m))
(cl:defmethod safety_mode-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:safety_mode-val is deprecated.  Use robotnik_msgs-msg:safety_mode instead.")
  (safety_mode m))

(cl:ensure-generic-function 'emergency_stop-val :lambda-list '(m))
(cl:defmethod emergency_stop-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:emergency_stop-val is deprecated.  Use robotnik_msgs-msg:emergency_stop instead.")
  (emergency_stop m))

(cl:ensure-generic-function 'safety_stop-val :lambda-list '(m))
(cl:defmethod safety_stop-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:safety_stop-val is deprecated.  Use robotnik_msgs-msg:safety_stop instead.")
  (safety_stop m))

(cl:ensure-generic-function 'lasers_on_standby-val :lambda-list '(m))
(cl:defmethod lasers_on_standby-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:lasers_on_standby-val is deprecated.  Use robotnik_msgs-msg:lasers_on_standby instead.")
  (lasers_on_standby m))

(cl:ensure-generic-function 'current_speed-val :lambda-list '(m))
(cl:defmethod current_speed-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:current_speed-val is deprecated.  Use robotnik_msgs-msg:current_speed instead.")
  (current_speed m))

(cl:ensure-generic-function 'lasers_mode-val :lambda-list '(m))
(cl:defmethod lasers_mode-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:lasers_mode-val is deprecated.  Use robotnik_msgs-msg:lasers_mode instead.")
  (lasers_mode m))

(cl:ensure-generic-function 'lasers_status-val :lambda-list '(m))
(cl:defmethod lasers_status-val ((m <SafetyModuleStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:lasers_status-val is deprecated.  Use robotnik_msgs-msg:lasers_status instead.")
  (lasers_status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SafetyModuleStatus>)))
    "Constants for message type '<SafetyModuleStatus>"
  '((:SAFE . "safe")
    (:LASER_MUTE . "laser_mute")
    (:OM_AUTO . "auto")
    (:OM_MANUAL . "manual")
    (:OM_MAINTENANCE . "maintenance"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SafetyModuleStatus)))
    "Constants for message type 'SafetyModuleStatus"
  '((:SAFE . "safe")
    (:LASER_MUTE . "laser_mute")
    (:OM_AUTO . "auto")
    (:OM_MANUAL . "manual")
    (:OM_MAINTENANCE . "maintenance"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyModuleStatus>) ostream)
  "Serializes a message object of type '<SafetyModuleStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'operation_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'operation_mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'safety_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'safety_mode))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'emergency_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'safety_stop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'lasers_on_standby) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'current_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lasers_mode) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lasers_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lasers_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyModuleStatus>) istream)
  "Deserializes a message object of type '<SafetyModuleStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'operation_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'operation_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'safety_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'safety_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'emergency_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'safety_stop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'lasers_on_standby) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_speed) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lasers_mode) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lasers_status) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lasers_status)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:LaserStatus))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyModuleStatus>)))
  "Returns string type for a message object of type '<SafetyModuleStatus>"
  "robotnik_msgs/SafetyModuleStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyModuleStatus)))
  "Returns string type for a message object of type 'SafetyModuleStatus"
  "robotnik_msgs/SafetyModuleStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyModuleStatus>)))
  "Returns md5sum for a message object of type '<SafetyModuleStatus>"
  "301f2f2b06f84bb7bbe649c08f21a4ff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyModuleStatus)))
  "Returns md5sum for a message object of type 'SafetyModuleStatus"
  "301f2f2b06f84bb7bbe649c08f21a4ff")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyModuleStatus>)))
  "Returns full string definition for message of type '<SafetyModuleStatus>"
  (cl:format cl:nil "# robot safety mode~%string SAFE=safe~%#string OVERRIDABLE=overridable~%#string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string OM_AUTO=auto~%string OM_MANUAL=manual~%string OM_MAINTENANCE=maintenance~%~%~%string operation_mode~%string safety_mode~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyModuleStatus)))
  "Returns full string definition for message of type 'SafetyModuleStatus"
  (cl:format cl:nil "# robot safety mode~%string SAFE=safe~%#string OVERRIDABLE=overridable~%#string EMERGENCY=emergency~%string LASER_MUTE=laser_mute~%~%string OM_AUTO=auto~%string OM_MANUAL=manual~%string OM_MAINTENANCE=maintenance~%~%~%string operation_mode~%string safety_mode~%bool emergency_stop        # if e-stop is pressed~%bool safety_stop           # if system is stopped due to safety system~%bool lasers_on_standby     # if lasers don't have power~%float64 current_speed       # current speed measured by safety system~%~%robotnik_msgs/LaserMode lasers_mode~%robotnik_msgs/LaserStatus[] lasers_status~%~%================================================================================~%MSG: robotnik_msgs/LaserMode~%string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%================================================================================~%MSG: robotnik_msgs/LaserStatus~%string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyModuleStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'operation_mode))
     4 (cl:length (cl:slot-value msg 'safety_mode))
     1
     1
     1
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lasers_mode))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lasers_status) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyModuleStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyModuleStatus
    (cl:cons ':operation_mode (operation_mode msg))
    (cl:cons ':safety_mode (safety_mode msg))
    (cl:cons ':emergency_stop (emergency_stop msg))
    (cl:cons ':safety_stop (safety_stop msg))
    (cl:cons ':lasers_on_standby (lasers_on_standby msg))
    (cl:cons ':current_speed (current_speed msg))
    (cl:cons ':lasers_mode (lasers_mode msg))
    (cl:cons ':lasers_status (lasers_status msg))
))
