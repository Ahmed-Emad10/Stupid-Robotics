; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude home-request.msg.html

(cl:defclass <home-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass home-request (<home-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <home-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'home-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<home-request> is deprecated: use robotnik_msgs-srv:home-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <home-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:request-val is deprecated.  Use robotnik_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <home-request>) ostream)
  "Serializes a message object of type '<home-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <home-request>) istream)
  "Deserializes a message object of type '<home-request>"
    (cl:setf (cl:slot-value msg 'request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<home-request>)))
  "Returns string type for a service object of type '<home-request>"
  "robotnik_msgs/homeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'home-request)))
  "Returns string type for a service object of type 'home-request"
  "robotnik_msgs/homeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<home-request>)))
  "Returns md5sum for a message object of type '<home-request>"
  "be1cffdc9b615c7812c8c2b842784922")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'home-request)))
  "Returns md5sum for a message object of type 'home-request"
  "be1cffdc9b615c7812c8c2b842784922")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<home-request>)))
  "Returns full string definition for message of type '<home-request>"
  (cl:format cl:nil "# Do home request~%bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'home-request)))
  "Returns full string definition for message of type 'home-request"
  (cl:format cl:nil "# Do home request~%bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <home-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <home-request>))
  "Converts a ROS message object to a list"
  (cl:list 'home-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude home-response.msg.html

(cl:defclass <home-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass home-response (<home-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <home-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'home-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<home-response> is deprecated: use robotnik_msgs-srv:home-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <home-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <home-response>) ostream)
  "Serializes a message object of type '<home-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <home-response>) istream)
  "Deserializes a message object of type '<home-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<home-response>)))
  "Returns string type for a service object of type '<home-response>"
  "robotnik_msgs/homeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'home-response)))
  "Returns string type for a service object of type 'home-response"
  "robotnik_msgs/homeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<home-response>)))
  "Returns md5sum for a message object of type '<home-response>"
  "be1cffdc9b615c7812c8c2b842784922")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'home-response)))
  "Returns md5sum for a message object of type 'home-response"
  "be1cffdc9b615c7812c8c2b842784922")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<home-response>)))
  "Returns full string definition for message of type '<home-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'home-response)))
  "Returns full string definition for message of type 'home-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <home-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <home-response>))
  "Converts a ROS message object to a list"
  (cl:list 'home-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'home)))
  'home-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'home)))
  'home-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'home)))
  "Returns string type for a service object of type '<home>"
  "robotnik_msgs/home")