; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude LaserMode.msg.html

(cl:defclass <LaserMode> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass LaserMode (<LaserMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<LaserMode> is deprecated: use robotnik_msgs-msg:LaserMode instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LaserMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:name-val is deprecated.  Use robotnik_msgs-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LaserMode>)))
    "Constants for message type '<LaserMode>"
  '((:STANDARD . "standard")
    (:DOCKING_STATION . "docking_station")
    (:CART . "cart")
    (:CART_DOCKING_CART . "cart_docking_cart")
    (:DOCKING_CART . "docking_cart")
    (:REDUCED . "reduced")
    (:INVALID . "invalid"))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LaserMode)))
    "Constants for message type 'LaserMode"
  '((:STANDARD . "standard")
    (:DOCKING_STATION . "docking_station")
    (:CART . "cart")
    (:CART_DOCKING_CART . "cart_docking_cart")
    (:DOCKING_CART . "docking_cart")
    (:REDUCED . "reduced")
    (:INVALID . "invalid"))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserMode>) ostream)
  "Serializes a message object of type '<LaserMode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserMode>) istream)
  "Deserializes a message object of type '<LaserMode>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserMode>)))
  "Returns string type for a message object of type '<LaserMode>"
  "robotnik_msgs/LaserMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserMode)))
  "Returns string type for a message object of type 'LaserMode"
  "robotnik_msgs/LaserMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserMode>)))
  "Returns md5sum for a message object of type '<LaserMode>"
  "04d69d26faf3f5fdd3d172ee0e35f8ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserMode)))
  "Returns md5sum for a message object of type 'LaserMode"
  "04d69d26faf3f5fdd3d172ee0e35f8ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserMode>)))
  "Returns full string definition for message of type '<LaserMode>"
  (cl:format cl:nil "string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserMode)))
  "Returns full string definition for message of type 'LaserMode"
  (cl:format cl:nil "string STANDARD=standard~%string DOCKING_STATION=docking_station~%string CART=cart~%string CART_DOCKING_CART=cart_docking_cart~%string DOCKING_CART=docking_cart~%string REDUCED=reduced~%string INVALID=invalid~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserMode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserMode>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserMode
    (cl:cons ':name (name msg))
))
