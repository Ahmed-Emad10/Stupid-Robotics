; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude Alarms.msg.html

(cl:defclass <Alarms> (roslisp-msg-protocol:ros-message)
  ((alarms
    :reader alarms
    :initarg :alarms
    :type (cl:vector robotnik_msgs-msg:AlarmSensor)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:AlarmSensor :initial-element (cl:make-instance 'robotnik_msgs-msg:AlarmSensor))))
)

(cl:defclass Alarms (<Alarms>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Alarms>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Alarms)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<Alarms> is deprecated: use robotnik_msgs-msg:Alarms instead.")))

(cl:ensure-generic-function 'alarms-val :lambda-list '(m))
(cl:defmethod alarms-val ((m <Alarms>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alarms-val is deprecated.  Use robotnik_msgs-msg:alarms instead.")
  (alarms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Alarms>) ostream)
  "Serializes a message object of type '<Alarms>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alarms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'alarms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Alarms>) istream)
  "Deserializes a message object of type '<Alarms>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alarms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alarms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:AlarmSensor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Alarms>)))
  "Returns string type for a message object of type '<Alarms>"
  "robotnik_msgs/Alarms")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Alarms)))
  "Returns string type for a message object of type 'Alarms"
  "robotnik_msgs/Alarms")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Alarms>)))
  "Returns md5sum for a message object of type '<Alarms>"
  "83113d787282f31e7cff7eb72a2096c0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Alarms)))
  "Returns md5sum for a message object of type 'Alarms"
  "83113d787282f31e7cff7eb72a2096c0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Alarms>)))
  "Returns full string definition for message of type '<Alarms>"
  (cl:format cl:nil "AlarmSensor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/AlarmSensor~%int8 id~%string description~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Alarms)))
  "Returns full string definition for message of type 'Alarms"
  (cl:format cl:nil "AlarmSensor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/AlarmSensor~%int8 id~%string description~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Alarms>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alarms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Alarms>))
  "Converts a ROS message object to a list"
  (cl:list 'Alarms
    (cl:cons ':alarms (alarms msg))
))
