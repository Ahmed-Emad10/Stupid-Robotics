; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude alarmsmonitor.msg.html

(cl:defclass <alarmsmonitor> (roslisp-msg-protocol:ros-message)
  ((alarms
    :reader alarms
    :initarg :alarms
    :type (cl:vector robotnik_msgs-msg:alarmmonitor)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:alarmmonitor :initial-element (cl:make-instance 'robotnik_msgs-msg:alarmmonitor))))
)

(cl:defclass alarmsmonitor (<alarmsmonitor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <alarmsmonitor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'alarmsmonitor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<alarmsmonitor> is deprecated: use robotnik_msgs-msg:alarmsmonitor instead.")))

(cl:ensure-generic-function 'alarms-val :lambda-list '(m))
(cl:defmethod alarms-val ((m <alarmsmonitor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:alarms-val is deprecated.  Use robotnik_msgs-msg:alarms instead.")
  (alarms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <alarmsmonitor>) ostream)
  "Serializes a message object of type '<alarmsmonitor>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'alarms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'alarms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <alarmsmonitor>) istream)
  "Deserializes a message object of type '<alarmsmonitor>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'alarms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'alarms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:alarmmonitor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<alarmsmonitor>)))
  "Returns string type for a message object of type '<alarmsmonitor>"
  "robotnik_msgs/alarmsmonitor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'alarmsmonitor)))
  "Returns string type for a message object of type 'alarmsmonitor"
  "robotnik_msgs/alarmsmonitor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<alarmsmonitor>)))
  "Returns md5sum for a message object of type '<alarmsmonitor>"
  "e686c3a2b0932118650b57e91f9eee9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'alarmsmonitor)))
  "Returns md5sum for a message object of type 'alarmsmonitor"
  "e686c3a2b0932118650b57e91f9eee9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<alarmsmonitor>)))
  "Returns full string definition for message of type '<alarmsmonitor>"
  (cl:format cl:nil "alarmmonitor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/alarmmonitor~%# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'alarmsmonitor)))
  "Returns full string definition for message of type 'alarmsmonitor"
  (cl:format cl:nil "alarmmonitor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/alarmmonitor~%# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <alarmsmonitor>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'alarms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <alarmsmonitor>))
  "Converts a ROS message object to a list"
  (cl:list 'alarmsmonitor
    (cl:cons ':alarms (alarms msg))
))
