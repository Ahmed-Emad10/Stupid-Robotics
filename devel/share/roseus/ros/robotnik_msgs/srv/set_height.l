;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::set_height)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'set_height (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SET_HEIGHT")
  (make-package "ROBOTNIK_MSGS::SET_HEIGHT"))
(unless (find-package "ROBOTNIK_MSGS::SET_HEIGHTREQUEST")
  (make-package "ROBOTNIK_MSGS::SET_HEIGHTREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SET_HEIGHTRESPONSE")
  (make-package "ROBOTNIK_MSGS::SET_HEIGHTRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::set_heightRequest
  :super ros::object
  :slots (_height ))

(defmethod robotnik_msgs::set_heightRequest
  (:init
   (&key
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotnik_msgs::set_heightResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::set_heightResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robotnik_msgs::set_height
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::set_height :md5sum-) "30c54779fb893ca6d32239f321774b5f")
(setf (get robotnik_msgs::set_height :datatype-) "robotnik_msgs/set_height")
(setf (get robotnik_msgs::set_height :request) robotnik_msgs::set_heightRequest)
(setf (get robotnik_msgs::set_height :response) robotnik_msgs::set_heightResponse)

(defmethod robotnik_msgs::set_heightRequest
  (:response () (instance robotnik_msgs::set_heightResponse :init)))

(setf (get robotnik_msgs::set_heightRequest :md5sum-) "30c54779fb893ca6d32239f321774b5f")
(setf (get robotnik_msgs::set_heightRequest :datatype-) "robotnik_msgs/set_heightRequest")
(setf (get robotnik_msgs::set_heightRequest :definition-)
      "# New reference position (m)
float32 height
---
bool ret 

")

(setf (get robotnik_msgs::set_heightResponse :md5sum-) "30c54779fb893ca6d32239f321774b5f")
(setf (get robotnik_msgs::set_heightResponse :datatype-) "robotnik_msgs/set_heightResponse")
(setf (get robotnik_msgs::set_heightResponse :definition-)
      "# New reference position (m)
float32 height
---
bool ret 

")



(provide :robotnik_msgs/set_height "30c54779fb893ca6d32239f321774b5f")


