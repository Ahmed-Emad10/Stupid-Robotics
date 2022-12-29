; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude MotorReferenceValueArray.msg.html

(cl:defclass <MotorReferenceValueArray> (roslisp-msg-protocol:ros-message)
  ((velocity
    :reader velocity
    :initarg :velocity
    :type robotnik_msgs-msg:MotorReferenceValue
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorReferenceValue))
   (position
    :reader position
    :initarg :position
    :type robotnik_msgs-msg:MotorReferenceValue
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorReferenceValue))
   (torque
    :reader torque
    :initarg :torque
    :type robotnik_msgs-msg:MotorReferenceValue
    :initform (cl:make-instance 'robotnik_msgs-msg:MotorReferenceValue)))
)

(cl:defclass MotorReferenceValueArray (<MotorReferenceValueArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorReferenceValueArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorReferenceValueArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<MotorReferenceValueArray> is deprecated: use robotnik_msgs-msg:MotorReferenceValueArray instead.")))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <MotorReferenceValueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:velocity-val is deprecated.  Use robotnik_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MotorReferenceValueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:position-val is deprecated.  Use robotnik_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <MotorReferenceValueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:torque-val is deprecated.  Use robotnik_msgs-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorReferenceValueArray>) ostream)
  "Serializes a message object of type '<MotorReferenceValueArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorReferenceValueArray>) istream)
  "Deserializes a message object of type '<MotorReferenceValueArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorReferenceValueArray>)))
  "Returns string type for a message object of type '<MotorReferenceValueArray>"
  "robotnik_msgs/MotorReferenceValueArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorReferenceValueArray)))
  "Returns string type for a message object of type 'MotorReferenceValueArray"
  "robotnik_msgs/MotorReferenceValueArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorReferenceValueArray>)))
  "Returns md5sum for a message object of type '<MotorReferenceValueArray>"
  "8397e49dd79671c43ebd06b3be44fa96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorReferenceValueArray)))
  "Returns md5sum for a message object of type 'MotorReferenceValueArray"
  "8397e49dd79671c43ebd06b3be44fa96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorReferenceValueArray>)))
  "Returns full string definition for message of type '<MotorReferenceValueArray>"
  (cl:format cl:nil "MotorReferenceValue velocity~%MotorReferenceValue position~%MotorReferenceValue torque~%~%================================================================================~%MSG: robotnik_msgs/MotorReferenceValue~%float32 target_value~%int32 target_ref~%float32 actual_value~%int32 actual_ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorReferenceValueArray)))
  "Returns full string definition for message of type 'MotorReferenceValueArray"
  (cl:format cl:nil "MotorReferenceValue velocity~%MotorReferenceValue position~%MotorReferenceValue torque~%~%================================================================================~%MSG: robotnik_msgs/MotorReferenceValue~%float32 target_value~%int32 target_ref~%float32 actual_value~%int32 actual_ref~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorReferenceValueArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorReferenceValueArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorReferenceValueArray
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':position (position msg))
    (cl:cons ':torque (torque msg))
))
