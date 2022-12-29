; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude SetTransform-request.msg.html

(cl:defclass <SetTransform-request> (roslisp-msg-protocol:ros-message)
  ((tf
    :reader tf
    :initarg :tf
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform)))
)

(cl:defclass SetTransform-request (<SetTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetTransform-request> is deprecated: use robotnik_msgs-srv:SetTransform-request instead.")))

(cl:ensure-generic-function 'tf-val :lambda-list '(m))
(cl:defmethod tf-val ((m <SetTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:tf-val is deprecated.  Use robotnik_msgs-srv:tf instead.")
  (tf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransform-request>) ostream)
  "Serializes a message object of type '<SetTransform-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tf) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransform-request>) istream)
  "Deserializes a message object of type '<SetTransform-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tf) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransform-request>)))
  "Returns string type for a service object of type '<SetTransform-request>"
  "robotnik_msgs/SetTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransform-request)))
  "Returns string type for a service object of type 'SetTransform-request"
  "robotnik_msgs/SetTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransform-request>)))
  "Returns md5sum for a message object of type '<SetTransform-request>"
  "61ad79feddff9614e02792c4bf4f26a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransform-request)))
  "Returns md5sum for a message object of type 'SetTransform-request"
  "61ad79feddff9614e02792c4bf4f26a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransform-request>)))
  "Returns full string definition for message of type '<SetTransform-request>"
  (cl:format cl:nil "geometry_msgs/Transform tf~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransform-request)))
  "Returns full string definition for message of type 'SetTransform-request"
  (cl:format cl:nil "geometry_msgs/Transform tf~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransform-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tf))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransform-request
    (cl:cons ':tf (tf msg))
))
;//! \htmlinclude SetTransform-response.msg.html

(cl:defclass <SetTransform-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type robotnik_msgs-msg:ReturnMessage
    :initform (cl:make-instance 'robotnik_msgs-msg:ReturnMessage)))
)

(cl:defclass SetTransform-response (<SetTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<SetTransform-response> is deprecated: use robotnik_msgs-srv:SetTransform-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <SetTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:ret-val is deprecated.  Use robotnik_msgs-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTransform-response>) ostream)
  "Serializes a message object of type '<SetTransform-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ret) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTransform-response>) istream)
  "Deserializes a message object of type '<SetTransform-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ret) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTransform-response>)))
  "Returns string type for a service object of type '<SetTransform-response>"
  "robotnik_msgs/SetTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransform-response)))
  "Returns string type for a service object of type 'SetTransform-response"
  "robotnik_msgs/SetTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTransform-response>)))
  "Returns md5sum for a message object of type '<SetTransform-response>"
  "61ad79feddff9614e02792c4bf4f26a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTransform-response)))
  "Returns md5sum for a message object of type 'SetTransform-response"
  "61ad79feddff9614e02792c4bf4f26a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTransform-response>)))
  "Returns full string definition for message of type '<SetTransform-response>"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTransform-response)))
  "Returns full string definition for message of type 'SetTransform-response"
  (cl:format cl:nil "robotnik_msgs/ReturnMessage ret~%~%================================================================================~%MSG: robotnik_msgs/ReturnMessage~%bool success~%string message~%int16 code~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTransform-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ret))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTransform-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTransform)))
  'SetTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTransform)))
  'SetTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTransform)))
  "Returns string type for a service object of type '<SetTransform>"
  "robotnik_msgs/SetTransform")