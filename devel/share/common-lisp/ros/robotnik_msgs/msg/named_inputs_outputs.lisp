; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude named_inputs_outputs.msg.html

(cl:defclass <named_inputs_outputs> (roslisp-msg-protocol:ros-message)
  ((digital_inputs
    :reader digital_inputs
    :initarg :digital_inputs
    :type (cl:vector robotnik_msgs-msg:named_input_output)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:named_input_output :initial-element (cl:make-instance 'robotnik_msgs-msg:named_input_output)))
   (digital_outputs
    :reader digital_outputs
    :initarg :digital_outputs
    :type (cl:vector robotnik_msgs-msg:named_input_output)
   :initform (cl:make-array 0 :element-type 'robotnik_msgs-msg:named_input_output :initial-element (cl:make-instance 'robotnik_msgs-msg:named_input_output))))
)

(cl:defclass named_inputs_outputs (<named_inputs_outputs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <named_inputs_outputs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'named_inputs_outputs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<named_inputs_outputs> is deprecated: use robotnik_msgs-msg:named_inputs_outputs instead.")))

(cl:ensure-generic-function 'digital_inputs-val :lambda-list '(m))
(cl:defmethod digital_inputs-val ((m <named_inputs_outputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:digital_inputs-val is deprecated.  Use robotnik_msgs-msg:digital_inputs instead.")
  (digital_inputs m))

(cl:ensure-generic-function 'digital_outputs-val :lambda-list '(m))
(cl:defmethod digital_outputs-val ((m <named_inputs_outputs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:digital_outputs-val is deprecated.  Use robotnik_msgs-msg:digital_outputs instead.")
  (digital_outputs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <named_inputs_outputs>) ostream)
  "Serializes a message object of type '<named_inputs_outputs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_inputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_inputs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'digital_outputs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'digital_outputs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <named_inputs_outputs>) istream)
  "Deserializes a message object of type '<named_inputs_outputs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_inputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_inputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:named_input_output))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'digital_outputs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'digital_outputs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'robotnik_msgs-msg:named_input_output))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<named_inputs_outputs>)))
  "Returns string type for a message object of type '<named_inputs_outputs>"
  "robotnik_msgs/named_inputs_outputs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'named_inputs_outputs)))
  "Returns string type for a message object of type 'named_inputs_outputs"
  "robotnik_msgs/named_inputs_outputs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<named_inputs_outputs>)))
  "Returns md5sum for a message object of type '<named_inputs_outputs>"
  "e3301c19a16019595490fc28259868bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'named_inputs_outputs)))
  "Returns md5sum for a message object of type 'named_inputs_outputs"
  "e3301c19a16019595490fc28259868bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<named_inputs_outputs>)))
  "Returns full string definition for message of type '<named_inputs_outputs>"
  (cl:format cl:nil "robotnik_msgs/named_input_output[] digital_inputs~%robotnik_msgs/named_input_output[] digital_outputs~%================================================================================~%MSG: robotnik_msgs/named_input_output~%string name~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'named_inputs_outputs)))
  "Returns full string definition for message of type 'named_inputs_outputs"
  (cl:format cl:nil "robotnik_msgs/named_input_output[] digital_inputs~%robotnik_msgs/named_input_output[] digital_outputs~%================================================================================~%MSG: robotnik_msgs/named_input_output~%string name~%bool value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <named_inputs_outputs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_inputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'digital_outputs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <named_inputs_outputs>))
  "Converts a ROS message object to a list"
  (cl:list 'named_inputs_outputs
    (cl:cons ':digital_inputs (digital_inputs msg))
    (cl:cons ':digital_outputs (digital_outputs msg))
))
