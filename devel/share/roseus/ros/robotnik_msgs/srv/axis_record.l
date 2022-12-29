;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::axis_record)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'axis_record (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::AXIS_RECORD")
  (make-package "ROBOTNIK_MSGS::AXIS_RECORD"))
(unless (find-package "ROBOTNIK_MSGS::AXIS_RECORDREQUEST")
  (make-package "ROBOTNIK_MSGS::AXIS_RECORDREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::AXIS_RECORDRESPONSE")
  (make-package "ROBOTNIK_MSGS::AXIS_RECORDRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::axis_recordRequest
  :super ros::object
  :slots (_action _directory _profile _id ))

(defmethod robotnik_msgs::axis_recordRequest
  (:init
   (&key
    ((:action __action) 0)
    ((:directory __directory) "")
    ((:profile __profile) "")
    ((:id __id) "")
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _directory (string __directory))
   (setq _profile (string __profile))
   (setq _id (string __id))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:directory
   (&optional __directory)
   (if __directory (setq _directory __directory)) _directory)
  (:profile
   (&optional __profile)
   (if __profile (setq _profile __profile)) _profile)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int8 _action
    1
    ;; string _directory
    4 (length _directory)
    ;; string _profile
    4 (length _profile)
    ;; string _id
    4 (length _id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _action
       (write-byte _action s)
     ;; string _directory
       (write-long (length _directory) s) (princ _directory s)
     ;; string _profile
       (write-long (length _profile) s) (princ _profile s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _action 127) (setq _action (- _action 256)))
   ;; string _directory
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _directory (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _profile
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _profile (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::axis_recordResponse
  :super ros::object
  :slots (_ret ))

(defmethod robotnik_msgs::axis_recordResponse
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

(defclass robotnik_msgs::axis_record
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::axis_record :md5sum-) "2c515c47879efbb7383294f44d5255c1")
(setf (get robotnik_msgs::axis_record :datatype-) "robotnik_msgs/axis_record")
(setf (get robotnik_msgs::axis_record :request) robotnik_msgs::axis_recordRequest)
(setf (get robotnik_msgs::axis_record :response) robotnik_msgs::axis_recordResponse)

(defmethod robotnik_msgs::axis_recordRequest
  (:response () (instance robotnik_msgs::axis_recordResponse :init)))

(setf (get robotnik_msgs::axis_recordRequest :md5sum-) "2c515c47879efbb7383294f44d5255c1")
(setf (get robotnik_msgs::axis_recordRequest :datatype-) "robotnik_msgs/axis_recordRequest")
(setf (get robotnik_msgs::axis_recordRequest :definition-)
      "# 
# RECORD = 1, STOP = 2
int8 action
# DIRECTORY TO SAVE THE VIDEO
string directory
# PROFILE TO USE DURING THE RECORDING
string profile
# id / name of the recording
string id
---
bool ret

")

(setf (get robotnik_msgs::axis_recordResponse :md5sum-) "2c515c47879efbb7383294f44d5255c1")
(setf (get robotnik_msgs::axis_recordResponse :datatype-) "robotnik_msgs/axis_recordResponse")
(setf (get robotnik_msgs::axis_recordResponse :definition-)
      "# 
# RECORD = 1, STOP = 2
int8 action
# DIRECTORY TO SAVE THE VIDEO
string directory
# PROFILE TO USE DURING THE RECORDING
string profile
# id / name of the recording
string id
---
bool ret

")



(provide :robotnik_msgs/axis_record "2c515c47879efbb7383294f44d5255c1")


