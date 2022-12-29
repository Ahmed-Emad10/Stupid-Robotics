; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude MotorsStatus.msg.html

(cl:defclass <MotorsStatus> (roslisp-msg-protocol:ros-message)
  ((flwStatus
    :reader flwStatus
    :initarg :flwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus))
   (blwStatus
    :reader blwStatus
    :initarg :blwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus))
   (frwStatus
    :reader frwStatus
    :initarg :frwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus))
   (brwStatus
    :reader brwStatus
    :initarg :brwStatus
    :type robotnik_msgs-msg:MotorStatus
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorStatus)))
)

(cl:defclass MotorsStatus (<MotorsStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorsStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorsStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<MotorsStatus> is deprecated: use robotnik_msgs-msg:MotorsStatus instead.")))

(cl:ensure-generic-function 'flwStatus-val :lambda-list '(m))
(cl:defmethod flwStatus-val ((m <MotorsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:flwStatus-val is deprecated.  Use robotnik_msgs-msg:flwStatus instead.")
  (flwStatus m))

(cl:ensure-generic-function 'blwStatus-val :lambda-list '(m))
(cl:defmethod blwStatus-val ((m <MotorsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:blwStatus-val is deprecated.  Use robotnik_msgs-msg:blwStatus instead.")
  (blwStatus m))

(cl:ensure-generic-function 'frwStatus-val :lambda-list '(m))
(cl:defmethod frwStatus-val ((m <MotorsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:frwStatus-val is deprecated.  Use robotnik_msgs-msg:frwStatus instead.")
  (frwStatus m))

(cl:ensure-generic-function 'brwStatus-val :lambda-list '(m))
(cl:defmethod brwStatus-val ((m <MotorsStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:brwStatus-val is deprecated.  Use robotnik_msgs-msg:brwStatus instead.")
  (brwStatus m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorsStatus>) ostream)
  "Serializes a message object of type '<MotorsStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flwStatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'blwStatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frwStatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'brwStatus) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorsStatus>) istream)
  "Deserializes a message object of type '<MotorsStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flwStatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'blwStatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frwStatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'brwStatus) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorsStatus>)))
  "Returns string type for a message object of type '<MotorsStatus>"
  "robotnik_msgs/MotorsStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorsStatus)))
  "Returns string type for a message object of type 'MotorsStatus"
  "robotnik_msgs/MotorsStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorsStatus>)))
  "Returns md5sum for a message object of type '<MotorsStatus>"
  "8737e2a027c7f183f76ac545960670cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorsStatus)))
  "Returns md5sum for a message object of type 'MotorsStatus"
  "8737e2a027c7f183f76ac545960670cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorsStatus>)))
  "Returns full string definition for message of type '<MotorsStatus>"
  (cl:format cl:nil "MotorStatus flwStatus~%MotorStatus blwStatus~%MotorStatus frwStatus~%MotorStatus brwStatus~%~%~%================================================================================~%MSG: robotnik_msgs/MotorStatus~%uint8 can_id~%string joint~%string state~%string status~%string communicationstatus~%string mode_of_operation~%string[] activestatusword~%string[] activedriveflags~%bool[] digitaloutputs~%bool[] digitalinputs~%float32 current~%float32[] analoginputs~%string statusword~%string driveflags~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorsStatus)))
  "Returns full string definition for message of type 'MotorsStatus"
  (cl:format cl:nil "MotorStatus flwStatus~%MotorStatus blwStatus~%MotorStatus frwStatus~%MotorStatus brwStatus~%~%~%================================================================================~%MSG: robotnik_msgs/MotorStatus~%uint8 can_id~%string joint~%string state~%string status~%string communicationstatus~%string mode_of_operation~%string[] activestatusword~%string[] activedriveflags~%bool[] digitaloutputs~%bool[] digitalinputs~%float32 current~%float32[] analoginputs~%string statusword~%string driveflags~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorsStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flwStatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'blwStatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frwStatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'brwStatus))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorsStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorsStatus
    (cl:cons ':flwStatus (flwStatus msg))
    (cl:cons ':blwStatus (blwStatus msg))
    (cl:cons ':frwStatus (frwStatus msg))
    (cl:cons ':brwStatus (brwStatus msg))
))
