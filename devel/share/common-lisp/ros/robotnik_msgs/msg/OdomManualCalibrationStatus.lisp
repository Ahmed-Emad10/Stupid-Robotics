; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude OdomManualCalibrationStatus.msg.html

(cl:defclass <OdomManualCalibrationStatus> (roslisp-msg-protocol:ros-message)
  ((odom_increment
    :reader odom_increment
    :initarg :odom_increment
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (real_increment
    :reader real_increment
    :initarg :real_increment
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (linear_error
    :reader linear_error
    :initarg :linear_error
    :type cl:float
    :initform 0.0)
   (angular_error
    :reader angular_error
    :initarg :angular_error
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdomManualCalibrationStatus (<OdomManualCalibrationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomManualCalibrationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomManualCalibrationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<OdomManualCalibrationStatus> is deprecated: use robotnik_msgs-msg:OdomManualCalibrationStatus instead.")))

(cl:ensure-generic-function 'odom_increment-val :lambda-list '(m))
(cl:defmethod odom_increment-val ((m <OdomManualCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:odom_increment-val is deprecated.  Use robotnik_msgs-msg:odom_increment instead.")
  (odom_increment m))

(cl:ensure-generic-function 'real_increment-val :lambda-list '(m))
(cl:defmethod real_increment-val ((m <OdomManualCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:real_increment-val is deprecated.  Use robotnik_msgs-msg:real_increment instead.")
  (real_increment m))

(cl:ensure-generic-function 'linear_error-val :lambda-list '(m))
(cl:defmethod linear_error-val ((m <OdomManualCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:linear_error-val is deprecated.  Use robotnik_msgs-msg:linear_error instead.")
  (linear_error m))

(cl:ensure-generic-function 'angular_error-val :lambda-list '(m))
(cl:defmethod angular_error-val ((m <OdomManualCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:angular_error-val is deprecated.  Use robotnik_msgs-msg:angular_error instead.")
  (angular_error m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomManualCalibrationStatus>) ostream)
  "Serializes a message object of type '<OdomManualCalibrationStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom_increment) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real_increment) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'linear_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angular_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomManualCalibrationStatus>) istream)
  "Deserializes a message object of type '<OdomManualCalibrationStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom_increment) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real_increment) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_error) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomManualCalibrationStatus>)))
  "Returns string type for a message object of type '<OdomManualCalibrationStatus>"
  "robotnik_msgs/OdomManualCalibrationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomManualCalibrationStatus)))
  "Returns string type for a message object of type 'OdomManualCalibrationStatus"
  "robotnik_msgs/OdomManualCalibrationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomManualCalibrationStatus>)))
  "Returns md5sum for a message object of type '<OdomManualCalibrationStatus>"
  "f77436bc07e4185538807c200cd1cc07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomManualCalibrationStatus)))
  "Returns md5sum for a message object of type 'OdomManualCalibrationStatus"
  "f77436bc07e4185538807c200cd1cc07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomManualCalibrationStatus>)))
  "Returns full string definition for message of type '<OdomManualCalibrationStatus>"
  (cl:format cl:nil "geometry_msgs/Pose odom_increment             # odometry increment since last reset~%geometry_msgs/Pose real_increment             # real increment since last reset~%~%float32 linear_error            # linear error between odom and real since last reset~%float32 angular_error           # angular error between odom and real since last reset~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomManualCalibrationStatus)))
  "Returns full string definition for message of type 'OdomManualCalibrationStatus"
  (cl:format cl:nil "geometry_msgs/Pose odom_increment             # odometry increment since last reset~%geometry_msgs/Pose real_increment             # real increment since last reset~%~%float32 linear_error            # linear error between odom and real since last reset~%float32 angular_error           # angular error between odom and real since last reset~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomManualCalibrationStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom_increment))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real_increment))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomManualCalibrationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomManualCalibrationStatus
    (cl:cons ':odom_increment (odom_increment msg))
    (cl:cons ':real_increment (real_increment msg))
    (cl:cons ':linear_error (linear_error msg))
    (cl:cons ':angular_error (angular_error msg))
))
