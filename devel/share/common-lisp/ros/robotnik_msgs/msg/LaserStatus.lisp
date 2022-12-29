; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude LaserStatus.msg.html

(cl:defclass <LaserStatus> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (detecting_obstacles
    :reader detecting_obstacles
    :initarg :detecting_obstacles
    :type cl:boolean
    :initform cl:nil)
   (contaminated
    :reader contaminated
    :initarg :contaminated
    :type cl:boolean
    :initform cl:nil)
   (free_warning
    :reader free_warning
    :initarg :free_warning
    :type cl:boolean
    :initform cl:nil)
   (warning_zones
    :reader warning_zones
    :initarg :warning_zones
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass LaserStatus (<LaserStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<LaserStatus> is deprecated: use robotnik_msgs-msg:LaserStatus instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <LaserStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:name-val is deprecated.  Use robotnik_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'detecting_obstacles-val :lambda-list '(m))
(cl:defmethod detecting_obstacles-val ((m <LaserStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:detecting_obstacles-val is deprecated.  Use robotnik_msgs-msg:detecting_obstacles instead.")
  (detecting_obstacles m))

(cl:ensure-generic-function 'contaminated-val :lambda-list '(m))
(cl:defmethod contaminated-val ((m <LaserStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:contaminated-val is deprecated.  Use robotnik_msgs-msg:contaminated instead.")
  (contaminated m))

(cl:ensure-generic-function 'free_warning-val :lambda-list '(m))
(cl:defmethod free_warning-val ((m <LaserStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:free_warning-val is deprecated.  Use robotnik_msgs-msg:free_warning instead.")
  (free_warning m))

(cl:ensure-generic-function 'warning_zones-val :lambda-list '(m))
(cl:defmethod warning_zones-val ((m <LaserStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:warning_zones-val is deprecated.  Use robotnik_msgs-msg:warning_zones instead.")
  (warning_zones m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserStatus>) ostream)
  "Serializes a message object of type '<LaserStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detecting_obstacles) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'contaminated) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'free_warning) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'warning_zones))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'warning_zones))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserStatus>) istream)
  "Deserializes a message object of type '<LaserStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'detecting_obstacles) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'contaminated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'free_warning) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'warning_zones) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'warning_zones)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserStatus>)))
  "Returns string type for a message object of type '<LaserStatus>"
  "robotnik_msgs/LaserStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserStatus)))
  "Returns string type for a message object of type 'LaserStatus"
  "robotnik_msgs/LaserStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserStatus>)))
  "Returns md5sum for a message object of type '<LaserStatus>"
  "59f57d3a0c4aa9b97dcd8bd40152ebb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserStatus)))
  "Returns md5sum for a message object of type 'LaserStatus"
  "59f57d3a0c4aa9b97dcd8bd40152ebb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserStatus>)))
  "Returns full string definition for message of type '<LaserStatus>"
  (cl:format cl:nil "string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserStatus)))
  "Returns full string definition for message of type 'LaserStatus"
  (cl:format cl:nil "string name~%bool detecting_obstacles~%bool contaminated~%bool free_warning~%# one input per each warning zone.~%# first areas are closer to the robot (i.e. more restrictive)~%bool[] warning_zones ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'warning_zones) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserStatus
    (cl:cons ':name (name msg))
    (cl:cons ':detecting_obstacles (detecting_obstacles msg))
    (cl:cons ':contaminated (contaminated msg))
    (cl:cons ':free_warning (free_warning msg))
    (cl:cons ':warning_zones (warning_zones msg))
))
