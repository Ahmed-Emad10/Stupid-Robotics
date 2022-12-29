; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetElevator-request.msg.html

(cl:defclass <SetElevator-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type robotnik_msgs-msg:ElevatorAction
    :initform (cl:make-instance 'robotnik_msgs-msg:ElevatorAction)))
)

(cl:defclass SetElevator-request (<SetElevator-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetElevator-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetElevator-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetElevator-request> is deprecated: use robotnik_msgs-srv:SetElevator-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <SetElevator-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:action-val is deprecated.  Use robotnik_msgs-srv:action instead.")
  (action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetElevator-request>) ostream)
  "Serializes a message object of type '<SetElevator-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetElevator-request>) istream)
  "Deserializes a message object of type '<SetElevator-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetElevator-request>)))
  "Returns string type for a service object of type '<SetElevator-request>"
  "robotnik_msgs/SetElevatorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevator-request)))
  "Returns string type for a service object of type 'SetElevator-request"
  "robotnik_msgs/SetElevatorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetElevator-request>)))
  "Returns md5sum for a message object of type '<SetElevator-request>"
  "b0ce8ab263ff08692a79c34185b69763")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetElevator-request)))
  "Returns md5sum for a message object of type 'SetElevator-request"
  "b0ce8ab263ff08692a79c34185b69763")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetElevator-request>)))
  "Returns full string definition for message of type '<SetElevator-request>"
  (cl:format cl:nil "robotnik_msgs/ElevatorAction action~%~%================================================================================~%MSG: robotnik_msgs/ElevatorAction~%int32 RAISE=1~%int32 LOWER=-1~%int32 STOP=0~%int32 NO_ACTION=1000~%~%int32 action~%# speed, height for future applications~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetElevator-request)))
  "Returns full string definition for message of type 'SetElevator-request"
  (cl:format cl:nil "robotnik_msgs/ElevatorAction action~%~%================================================================================~%MSG: robotnik_msgs/ElevatorAction~%int32 RAISE=1~%int32 LOWER=-1~%int32 STOP=0~%int32 NO_ACTION=1000~%~%int32 action~%# speed, height for future applications~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetElevator-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetElevator-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetElevator-request
    (cl:cons ':action (action msg))
))
;//! \htmlinclude SetElevator-response.msg.html

(cl:defclass <SetElevator-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetElevator-response (<SetElevator-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetElevator-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetElevator-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetElevator-response> is deprecated: use robotnik_msgs-srv:SetElevator-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetElevator-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetElevator-response>) ostream)
  "Serializes a message object of type '<SetElevator-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetElevator-response>) istream)
  "Deserializes a message object of type '<SetElevator-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetElevator-response>)))
  "Returns string type for a service object of type '<SetElevator-response>"
  "robotnik_msgs/SetElevatorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevator-response)))
  "Returns string type for a service object of type 'SetElevator-response"
  "robotnik_msgs/SetElevatorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetElevator-response>)))
  "Returns md5sum for a message object of type '<SetElevator-response>"
  "b0ce8ab263ff08692a79c34185b69763")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetElevator-response)))
  "Returns md5sum for a message object of type 'SetElevator-response"
  "b0ce8ab263ff08692a79c34185b69763")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetElevator-response>)))
  "Returns full string definition for message of type '<SetElevator-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetElevator-response)))
  "Returns full string definition for message of type 'SetElevator-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetElevator-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetElevator-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetElevator-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetElevator)))
  'SetElevator-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetElevator)))
  'SetElevator-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetElevator)))
  "Returns string type for a service object of type '<SetElevator>"
  "robotnik_msgs/SetElevator")