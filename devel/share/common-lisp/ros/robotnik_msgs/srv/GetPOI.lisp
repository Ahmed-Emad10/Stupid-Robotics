; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-srv)


;//! \htmlinclude GetPOI-request.msg.html

(cl:defclass <GetPOI-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetPOI-request (<GetPOI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetPOI-request> is deprecated: use robotnik_msgs-srv:GetPOI-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetPOI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:name-val is deprecated.  Use robotnik_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-request>) ostream)
  "Serializes a message object of type '<GetPOI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-request>) istream)
  "Deserializes a message object of type '<GetPOI-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-request>)))
  "Returns string type for a service object of type '<GetPOI-request>"
  "robotnik_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-request)))
  "Returns string type for a service object of type 'GetPOI-request"
  "robotnik_msgs/GetPOIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-request>)))
  "Returns md5sum for a message object of type '<GetPOI-request>"
  "c5032edb76b04b9d8b131adfe4028b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-request)))
  "Returns md5sum for a message object of type 'GetPOI-request"
  "c5032edb76b04b9d8b131adfe4028b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-request>)))
  "Returns full string definition for message of type '<GetPOI-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-request)))
  "Returns full string definition for message of type 'GetPOI-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetPOI-response.msg.html

(cl:defclass <GetPOI-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass GetPOI-response (<GetPOI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPOI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPOI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-srv:<GetPOI-response> is deprecated: use robotnik_msgs-srv:GetPOI-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:success-val is deprecated.  Use robotnik_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetPOI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-srv:pose-val is deprecated.  Use robotnik_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPOI-response>) ostream)
  "Serializes a message object of type '<GetPOI-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPOI-response>) istream)
  "Deserializes a message object of type '<GetPOI-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPOI-response>)))
  "Returns string type for a service object of type '<GetPOI-response>"
  "robotnik_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI-response)))
  "Returns string type for a service object of type 'GetPOI-response"
  "robotnik_msgs/GetPOIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPOI-response>)))
  "Returns md5sum for a message object of type '<GetPOI-response>"
  "c5032edb76b04b9d8b131adfe4028b48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPOI-response)))
  "Returns md5sum for a message object of type 'GetPOI-response"
  "c5032edb76b04b9d8b131adfe4028b48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPOI-response>)))
  "Returns full string definition for message of type '<GetPOI-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPOI-response)))
  "Returns full string definition for message of type 'GetPOI-response"
  (cl:format cl:nil "bool success~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPOI-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPOI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPOI-response
    (cl:cons ':success (success msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPOI)))
  'GetPOI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPOI)))
  "Returns string type for a service object of type '<GetPOI>"
  "robotnik_msgs/GetPOI")