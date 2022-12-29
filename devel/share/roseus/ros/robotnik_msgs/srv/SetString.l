;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::SetString)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'SetString (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::SETSTRING")
  (make-package "ROBOTNIK_MSGS::SETSTRING"))
(unless (find-package "ROBOTNIK_MSGS::SETSTRINGREQUEST")
  (make-package "ROBOTNIK_MSGS::SETSTRINGREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::SETSTRINGRESPONSE")
  (make-package "ROBOTNIK_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod robotnik_msgs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::SetStringResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::SetStringResponse
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

(defclass robotnik_msgs::SetString
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::SetString :md5sum-) "81258a4411ea59b38c629347b85bc302")
(setf (get robotnik_msgs::SetString :datatype-) "robotnik_msgs/SetString")
(setf (get robotnik_msgs::SetString :request) robotnik_msgs::SetStringRequest)
(setf (get robotnik_msgs::SetString :response) robotnik_msgs::SetStringResponse)

(defmethod robotnik_msgs::SetStringRequest
  (:response () (instance robotnik_msgs::SetStringResponse :init)))

(setf (get robotnik_msgs::SetStringRequest :md5sum-) "81258a4411ea59b38c629347b85bc302")
(setf (get robotnik_msgs::SetStringRequest :datatype-) "robotnik_msgs/SetStringRequest")
(setf (get robotnik_msgs::SetStringRequest :definition-)
      "string data
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")

(setf (get robotnik_msgs::SetStringResponse :md5sum-) "81258a4411ea59b38c629347b85bc302")
(setf (get robotnik_msgs::SetStringResponse :datatype-) "robotnik_msgs/SetStringResponse")
(setf (get robotnik_msgs::SetStringResponse :definition-)
      "string data
---
robotnik_msgs/ReturnMessage ret

================================================================================
MSG: robotnik_msgs/ReturnMessage
bool success
string message
")



(provide :robotnik_msgs/SetString "81258a4411ea59b38c629347b85bc302")


