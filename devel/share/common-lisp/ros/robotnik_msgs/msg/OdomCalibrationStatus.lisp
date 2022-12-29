; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude OdomCalibrationStatus.msg.html

(cl:defclass <OdomCalibrationStatus> (roslisp-msg-protocol:ros-message)
  ((is_calculating
    :reader is_calculating
    :initarg :is_calculating
    :type cl:boolean
    :initform cl:nil)
   (remaining_time
    :reader remaining_time
    :initarg :remaining_time
    :type cl:float
    :initform 0.0)
   (left_radius
    :reader left_radius
    :initarg :left_radius
    :type cl:float
    :initform 0.0)
   (right_radius
    :reader right_radius
    :initarg :right_radius
    :type cl:float
    :initform 0.0)
   (wheels_distance
    :reader wheels_distance
    :initarg :wheels_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass OdomCalibrationStatus (<OdomCalibrationStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OdomCalibrationStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OdomCalibrationStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<OdomCalibrationStatus> is deprecated: use robotnik_msgs-msg:OdomCalibrationStatus instead.")))

(cl:ensure-generic-function 'is_calculating-val :lambda-list '(m))
(cl:defmethod is_calculating-val ((m <OdomCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:is_calculating-val is deprecated.  Use robotnik_msgs-msg:is_calculating instead.")
  (is_calculating m))

(cl:ensure-generic-function 'remaining_time-val :lambda-list '(m))
(cl:defmethod remaining_time-val ((m <OdomCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:remaining_time-val is deprecated.  Use robotnik_msgs-msg:remaining_time instead.")
  (remaining_time m))

(cl:ensure-generic-function 'left_radius-val :lambda-list '(m))
(cl:defmethod left_radius-val ((m <OdomCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:left_radius-val is deprecated.  Use robotnik_msgs-msg:left_radius instead.")
  (left_radius m))

(cl:ensure-generic-function 'right_radius-val :lambda-list '(m))
(cl:defmethod right_radius-val ((m <OdomCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:right_radius-val is deprecated.  Use robotnik_msgs-msg:right_radius instead.")
  (right_radius m))

(cl:ensure-generic-function 'wheels_distance-val :lambda-list '(m))
(cl:defmethod wheels_distance-val ((m <OdomCalibrationStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:wheels_distance-val is deprecated.  Use robotnik_msgs-msg:wheels_distance instead.")
  (wheels_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OdomCalibrationStatus>) ostream)
  "Serializes a message object of type '<OdomCalibrationStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_calculating) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right_radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheels_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OdomCalibrationStatus>) istream)
  "Deserializes a message object of type '<OdomCalibrationStatus>"
    (cl:setf (cl:slot-value msg 'is_calculating) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_radius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheels_distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OdomCalibrationStatus>)))
  "Returns string type for a message object of type '<OdomCalibrationStatus>"
  "robotnik_msgs/OdomCalibrationStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OdomCalibrationStatus)))
  "Returns string type for a message object of type 'OdomCalibrationStatus"
  "robotnik_msgs/OdomCalibrationStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OdomCalibrationStatus>)))
  "Returns md5sum for a message object of type '<OdomCalibrationStatus>"
  "d03e7379e89cf43254443e594855bbde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OdomCalibrationStatus)))
  "Returns md5sum for a message object of type 'OdomCalibrationStatus"
  "d03e7379e89cf43254443e594855bbde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OdomCalibrationStatus>)))
  "Returns full string definition for message of type '<OdomCalibrationStatus>"
  (cl:format cl:nil "bool is_calculating             # true when node is calculating the odometry parameters~%float32 remaining_time          # remaining time in seconds for obtaining odometry values~%~%float32 left_radius             # radius of the left wheel in meters~%float32 right_radius            # radius of the right wheel in meters~%float32 wheels_distance         # distance between the two wheels of the robot in meters~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OdomCalibrationStatus)))
  "Returns full string definition for message of type 'OdomCalibrationStatus"
  (cl:format cl:nil "bool is_calculating             # true when node is calculating the odometry parameters~%float32 remaining_time          # remaining time in seconds for obtaining odometry values~%~%float32 left_radius             # radius of the left wheel in meters~%float32 right_radius            # radius of the right wheel in meters~%float32 wheels_distance         # distance between the two wheels of the robot in meters~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OdomCalibrationStatus>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OdomCalibrationStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'OdomCalibrationStatus
    (cl:cons ':is_calculating (is_calculating msg))
    (cl:cons ':remaining_time (remaining_time msg))
    (cl:cons ':left_radius (left_radius msg))
    (cl:cons ':right_radius (right_radius msg))
    (cl:cons ':wheels_distance (wheels_distance msg))
))
