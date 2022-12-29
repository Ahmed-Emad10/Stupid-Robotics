; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude MotorsStatusDifferential.msg.html

(cl:defclass <MotorsStatusDifferential> (roslisp-msg-protocol:ros-message)
  ((lwStatus
    :reader lwStatus
    :initarg :lwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus))
   (rwStatus
    :reader rwStatus
    :initarg :rwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus)))
)

(cl:defclass MotorsStatusDifferential (<MotorsStatusDifferential>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorsStatusDifferential>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorsStatusDifferential)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<MotorsStatusDifferential> is deprecated: use robotnik_msgs-msg:MotorsStatusDifferential instead.")))

(cl:ensure-generic-function 'lwStatus-val :lambda-list '(m))
(cl:defmethod lwStatus-val ((m <MotorsStatusDifferential>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:lwStatus-val is deprecated.  Use robotnik_msgs-msg:lwStatus instead.")
  (lwStatus m))

(cl:ensure-generic-function 'rwStatus-val :lambda-list '(m))
(cl:defmethod rwStatus-val ((m <MotorsStatusDifferential>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:rwStatus-val is deprecated.  Use robotnik_msgs-msg:rwStatus instead.")
  (rwStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorsStatusDifferential>) ostream)
  "Serializes a message object of type '<MotorsStatusDifferential>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lwStatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rwStatus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorsStatusDifferential>) istream)
  "Deserializes a message object of type '<MotorsStatusDifferential>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lwStatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rwStatus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorsStatusDifferential>)))
  "Returns string type for a message object of type '<MotorsStatusDifferential>"
  "robotnik_msgs/MotorsStatusDifferential")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorsStatusDifferential)))
  "Returns string type for a message object of type 'MotorsStatusDifferential"
  "robotnik_msgs/MotorsStatusDifferential")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorsStatusDifferential>)))
  "Returns md5sum for a message object of type '<MotorsStatusDifferential>"
  "54c939ea4e1227a032aeca24b67584ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorsStatusDifferential)))
  "Returns md5sum for a message object of type 'MotorsStatusDifferential"
  "54c939ea4e1227a032aeca24b67584ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorsStatusDifferential>)))
  "Returns full string definition for message of type '<MotorsStatusDifferential>"
  (cl:format cl:nil "MotorStatus lwStatus~%MotorStatus rwStatus~%~%~%================================================================================~%MSG: robotnik_msgs/MotorStatus~%uint8 can_id~%string joint~%string state~%string status~%string communicationstatus~%string mode_of_operation~%string[] activestatusword~%string[] activedriveflags~%bool[] digitaloutputs~%bool[] digitalinputs~%float32 current~%float32[] analoginputs~%string statusword~%string driveflags~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorsStatusDifferential)))
  "Returns full string definition for message of type 'MotorsStatusDifferential"
  (cl:format cl:nil "MotorStatus lwStatus~%MotorStatus rwStatus~%~%~%================================================================================~%MSG: robotnik_msgs/MotorStatus~%uint8 can_id~%string joint~%string state~%string status~%string communicationstatus~%string mode_of_operation~%string[] activestatusword~%string[] activedriveflags~%bool[] digitaloutputs~%bool[] digitalinputs~%float32 current~%float32[] analoginputs~%string statusword~%string driveflags~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorsStatusDifferential>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lwStatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rwStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorsStatusDifferential>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorsStatusDifferential
    (cl:cons ':lwStatus (lwStatus msg))
    (cl:cons ':rwStatus (rwStatus msg))
))
