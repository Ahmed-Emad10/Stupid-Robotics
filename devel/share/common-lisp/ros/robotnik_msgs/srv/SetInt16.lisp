; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetInt16-request.msg.html

(cl:defclass <SetInt16-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16)))
)

(cl:defclass SetInt16-request (<SetInt16-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetInt16-request> is deprecated: use robotnik_msgs-srv:SetInt16-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetInt16-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:data-val is deprecated.  Use robotnik_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-request>) ostream)
  "Serializes a message object of type '<SetInt16-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-request>) istream)
  "Deserializes a message object of type '<SetInt16-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-request>)))
  "Returns string type for a service object of type '<SetInt16-request>"
  "robotnik_msgs/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-request)))
  "Returns string type for a service object of type 'SetInt16-request"
  "robotnik_msgs/SetInt16Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-request>)))
  "Returns md5sum for a message object of type '<SetInt16-request>"
  "8f054c32edfcf21f89433b2b24f041c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-request)))
  "Returns md5sum for a message object of type 'SetInt16-request"
  "8f054c32edfcf21f89433b2b24f041c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-request>)))
  "Returns full string definition for message of type '<SetInt16-request>"
  (cl:format cl:nil "std_msgs/Int16 data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-request)))
  "Returns full string definition for message of type 'SetInt16-request"
  (cl:format cl:nil "std_msgs/Int16 data~%~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetInt16-response.msg.html

(cl:defclass <SetInt16-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robotnik_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robotnik_msgs-msg:ReturnMessage)))
)

(cl:defclass SetInt16-response (<SetInt16-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInt16-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInt16-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetInt16-response> is deprecated: use robotnik_msgs-srv:SetInt16-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetInt16-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInt16-response>) ostream)
  "Serializes a message object of type '<SetInt16-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInt16-response>) istream)
  "Deserializes a message object of type '<SetInt16-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInt16-response>)))
  "Returns string type for a service object of type '<SetInt16-response>"
  "robotnik_msgs/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16-response)))
  "Returns string type for a service object of type 'SetInt16-response"
  "robotnik_msgs/SetInt16Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInt16-response>)))
  "Returns md5sum for a message object of type '<SetInt16-response>"
  "8f054c32edfcf21f89433b2b24f041c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInt16-response)))
  "Returns md5sum for a message object of type 'SetInt16-response"
  "8f054c32edfcf21f89433b2b24f041c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInt16-response>)))
  "Returns full string definition for message of type '<SetInt16-response>"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInt16-response)))
  "Returns full string definition for message of type 'SetInt16-response"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInt16-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInt16-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInt16-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInt16)))
  'SetInt16-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInt16)))
  "Returns string type for a service object of type '<SetInt16>"
  "robotnik_msgs/SetInt16")