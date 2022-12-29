;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetTransform)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetTransform (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETTRANSFORM")
  (make-package "ROBOTNIK_MSGS::SETTRANSFORM"))
(unless (find-package "ROBOTNIK_MSGS::SETTRANSFORMREQUEST")
  (make-package "ROBOTNIK_MSGS::SETTRANSFORMREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETTRANSFORMRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETTRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass robotnik_msgs::SetTransformRequest
  :super ros::object
  :slots (_tf ))

(defmethod robotnik_msgs::SetTransformRequest
  (:init
   (&key
    ((:tf __tf) (instance geometry_msgs::Transform :init))
    )
   (send-super :init)
   (setq _tf __tf)
   self)
  (:tf
   (&rest __tf)
   (if (keywordp (car __tf))
       (send* _tf __tf)
     (progn
       (if __tf (setq _tf (car __tf)))
       _tf)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _tf
    (send _tf :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _tf
       (send _tf :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _tf
     (send _tf :deserialize buf ptr-) (incf ptr- (send _tf :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetTransformResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetTransformResponse
  (:init
   (&key
    ((:ret __ret) (instance robotnik_msgs::ReturnMessage :init))
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&rest __ret)
   (if (keywordp (car __ret))
       (send* _ret __ret)
     (progn
       (if __ret (setq _ret (car __ret)))
       _ret)))
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/ReturnMessage _ret
    (send _ret :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/ReturnMessage _ret
       (send _ret :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/ReturnMessage _ret
     (send _ret :deserialize buf ptr-) (incf ptr- (send _ret :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::SetTransform
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetTransform :md5sum-) "61ad79feddff9614e02792c4bf4f26a4")
(setf (get robotnik_msgs::SetTransform :datatype-) "robotnik_msgs/SetTransform")
(setf (get robotnik_msgs::SetTransform :request) robotnik_msgs::SetTransformRequest)
(setf (get robotnik_msgs::SetTransform :response) robotnik_msgs::SetTransformResponse)

(defmethod robotnik_msgs::SetTransformRequest
  (:response () (instance robotnik_msgs::SetTransformResponse :init)))

(setf (get robotnik_msgs::SetTransformRequest :md5sum-) "61ad79feddff9614e02792c4bf4f26a4")
(setf (get robotnik_msgs::SetTransformRequest :datatype-) "robotnik_msgs/SetTransformRequest")
(setf (get robotnik_msgs::SetTransformRequest :definition-)
      "geometry_msgs/Transform tf

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")

(setf (get robotnik_msgs::SetTransformResponse :md5sum-) "61ad79feddff9614e02792c4bf4f26a4")
(setf (get robotnik_msgs::SetTransformResponse :datatype-) "robotnik_msgs/SetTransformResponse")
(setf (get robotnik_msgs::SetTransformResponse :definition-)
      "geometry_msgs/Transform tf

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")



(provide :robotnik_msgs/SetTransform "61ad79feddff9614e02792c4bf4f26a4")


