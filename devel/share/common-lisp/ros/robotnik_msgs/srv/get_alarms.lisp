; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude get_alarms-request.msg.html

(cl:defclass <get_alarms-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass get_alarms-request (<get_alarms-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_alarms-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_alarms-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_alarms-request> is deprecated: use robotnik_msgs-srv:get_alarms-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_alarms-request>) ostream)
  "Serializes a message object of type '<get_alarms-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_alarms-request>) istream)
  "Deserializes a message object of type '<get_alarms-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_alarms-request>)))
  "Returns string type for a service object of type '<get_alarms-request>"
  "robotnik_msgs/get_alarmsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_alarms-request)))
  "Returns string type for a service object of type 'get_alarms-request"
  "robotnik_msgs/get_alarmsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_alarms-request>)))
  "Returns md5sum for a message object of type '<get_alarms-request>"
  "4550354b6bec7529a93833858063eaed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_alarms-request)))
  "Returns md5sum for a message object of type 'get_alarms-request"
  "4550354b6bec7529a93833858063eaed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_alarms-request>)))
  "Returns full string definition for message of type '<get_alarms-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_alarms-request)))
  "Returns full string definition for message of type 'get_alarms-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_alarms-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_alarms-request>))
  "Converts a ROS message object to a list"
  (cl:list 'get_alarms-request
))
;//! \htmlinclude get_alarms-response.msg.html

(cl:defclass <get_alarms-response> (roslisp-msg-protocol:ros-message)
  ((alarms
    :reader alarms
    :initarg :alarms
    :type robotnik_msgs-msg:alarmsmonitor
    :initform (cl:make-instance 'robotnik_msgs-msg:alarmsmonitor)))
)

(cl:defclass get_alarms-response (<get_alarms-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <get_alarms-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'get_alarms-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<get_alarms-response> is deprecated: use robotnik_msgs-srv:get_alarms-response instead.")))

(cl:ensure-generic-function 'alarms-val :lambda-list '(m))
(cl:defmethod alarms-val ((m <get_alarms-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:alarms-val is deprecated.  Use robotnik_msgs-srv:alarms instead.")
  (alarms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <get_alarms-response>) ostream)
  "Serializes a message object of type '<get_alarms-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'alarms) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <get_alarms-response>) istream)
  "Deserializes a message object of type '<get_alarms-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'alarms) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<get_alarms-response>)))
  "Returns string type for a service object of type '<get_alarms-response>"
  "robotnik_msgs/get_alarmsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_alarms-response)))
  "Returns string type for a service object of type 'get_alarms-response"
  "robotnik_msgs/get_alarmsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<get_alarms-response>)))
  "Returns md5sum for a message object of type '<get_alarms-response>"
  "4550354b6bec7529a93833858063eaed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'get_alarms-response)))
  "Returns md5sum for a message object of type 'get_alarms-response"
  "4550354b6bec7529a93833858063eaed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<get_alarms-response>)))
  "Returns full string definition for message of type '<get_alarms-response>"
  (cl:format cl:nil "alarmsmonitor alarms~%~%~%================================================================================~%MSG: robotnik_msgs/alarmsmonitor~%alarmmonitor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/alarmmonitor~%# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'get_alarms-response)))
  "Returns full string definition for message of type 'get_alarms-response"
  (cl:format cl:nil "alarmsmonitor alarms~%~%~%================================================================================~%MSG: robotnik_msgs/alarmsmonitor~%alarmmonitor[] alarms~%~%================================================================================~%MSG: robotnik_msgs/alarmmonitor~%# type: error, warning, event~%string type~%# displaing number for monitoring~%int32 display~%# component~%string component~%# To be shown in HMI~%bool hmi~%# group: alarm group all alarms of same group will be reset at same time~%string group~%# text: more explained information about alarm, should include group, time, conditions, etc~%string text~%# seconds active~%uint64 seconds_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <get_alarms-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'alarms))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <get_alarms-response>))
  "Converts a ROS message object to a list"
  (cl:list 'get_alarms-response
    (cl:cons ':alarms (alarms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'get_alarms)))
  'get_alarms-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'get_alarms)))
  'get_alarms-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'get_alarms)))
  "Returns string type for a service object of type '<get_alarms>"
  "robotnik_msgs/get_alarms")