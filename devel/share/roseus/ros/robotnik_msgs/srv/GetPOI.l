;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::GetPOI)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'GetPOI (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::GETPOI")
  (make-package "ROBOTNIK_MSGS::GETPOI"))
(unless (find-package "ROBOTNIK_MSGS::GETPOIREQUEST")
  (make-package "ROBOTNIK_MSGS::GETPOIREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::GETPOIRESPONSE")
  (make-package "ROBOTNIK_MSGS::GETPOIRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass robotnik_msgs::GetPOIRequest
  :super ros::object
  :slots (_name ))

(defmethod robotnik_msgs::GetPOIRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::GetPOIResponse
  :super ros::object
  :slots (_success _pose ))

(defmethod robotnik_msgs::GetPOIResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _pose __pose)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass robotnik_msgs::GetPOI
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::GetPOI :md5sum-) "c5032edb76b04b9d8b131adfe4028b48")
(setf (get robotnik_msgs::GetPOI :datatype-) "robotnik_msgs/GetPOI")
(setf (get robotnik_msgs::GetPOI :request) robotnik_msgs::GetPOIRequest)
(setf (get robotnik_msgs::GetPOI :response) robotnik_msgs::GetPOIResponse)

(defmethod robotnik_msgs::GetPOIRequest
  (:response () (instance robotnik_msgs::GetPOIResponse :init)))

(setf (get robotnik_msgs::GetPOIRequest :md5sum-) "c5032edb76b04b9d8b131adfe4028b48")
(setf (get robotnik_msgs::GetPOIRequest :datatype-) "robotnik_msgs/GetPOIRequest")
(setf (get robotnik_msgs::GetPOIRequest :definition-)
      "string name
---
bool success
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get robotnik_msgs::GetPOIResponse :md5sum-) "c5032edb76b04b9d8b131adfe4028b48")
(setf (get robotnik_msgs::GetPOIResponse :datatype-) "robotnik_msgs/GetPOIResponse")
(setf (get robotnik_msgs::GetPOIResponse :definition-)
      "string name
---
bool success
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :robotnik_msgs/GetPOI "c5032edb76b04b9d8b131adfe4028b48")


