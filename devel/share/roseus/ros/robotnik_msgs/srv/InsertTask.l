;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::InsertTask)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'InsertTask (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::INSERTTASK")
  (make-package "ROBOTNIK_MSGS::INSERTTASK"))
(unless (find-package "ROBOTNIK_MSGS::INSERTTASKREQUEST")
  (make-package "ROBOTNIK_MSGS::INSERTTASKREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::INSERTTASKRESPONSE")
  (make-package "ROBOTNIK_MSGS::INSERTTASKRESPONSE"))

(in-package "ROS")





(defclass robotnik_msgs::InsertTaskRequest
  :super ros::object
  :slots (_id_submission _description_task _datatime_start ))

(defmethod robotnik_msgs::InsertTaskRequest
  (:init
   (&key
    ((:id_submission __id_submission) 0)
    ((:description_task __description_task) "")
    ((:datatime_start __datatime_start) "")
    )
   (send-super :init)
   (setq _id_submission (round __id_submission))
   (setq _description_task (string __description_task))
   (setq _datatime_start (string __datatime_start))
   self)
  (:id_submission
   (&optional __id_submission)
   (if __id_submission (setq _id_submission __id_submission)) _id_submission)
  (:description_task
   (&optional __description_task)
   (if __description_task (setq _description_task __description_task)) _description_task)
  (:datatime_start
   (&optional __datatime_start)
   (if __datatime_start (setq _datatime_start __datatime_start)) _datatime_start)
  (:serialization-length
   ()
   (+
    ;; int32 _id_submission
    4
    ;; string _description_task
    4 (length _description_task)
    ;; string _datatime_start
    4 (length _datatime_start)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id_submission
       (write-long _id_submission s)
     ;; string _description_task
       (write-long (length _description_task) s) (princ _description_task s)
     ;; string _datatime_start
       (write-long (length _datatime_start) s) (princ _datatime_start s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id_submission
     (setq _id_submission (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description_task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description_task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _datatime_start
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _datatime_start (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::InsertTaskResponse
  :super ros::object
  :slots (_success _msg ))

(defmethod robotnik_msgs::InsertTaskResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::InsertTask
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::InsertTask :md5sum-) "36ad6270fb0855e3101179d36268dd90")
(setf (get robotnik_msgs::InsertTask :datatype-) "robotnik_msgs/InsertTask")
(setf (get robotnik_msgs::InsertTask :request) robotnik_msgs::InsertTaskRequest)
(setf (get robotnik_msgs::InsertTask :response) robotnik_msgs::InsertTaskResponse)

(defmethod robotnik_msgs::InsertTaskRequest
  (:response () (instance robotnik_msgs::InsertTaskResponse :init)))

(setf (get robotnik_msgs::InsertTaskRequest :md5sum-) "36ad6270fb0855e3101179d36268dd90")
(setf (get robotnik_msgs::InsertTaskRequest :datatype-) "robotnik_msgs/InsertTaskRequest")
(setf (get robotnik_msgs::InsertTaskRequest :definition-)
      "int32 id_submission
string description_task
string datatime_start
---
bool success
string msg

")

(setf (get robotnik_msgs::InsertTaskResponse :md5sum-) "36ad6270fb0855e3101179d36268dd90")
(setf (get robotnik_msgs::InsertTaskResponse :datatype-) "robotnik_msgs/InsertTaskResponse")
(setf (get robotnik_msgs::InsertTaskResponse :definition-)
      "int32 id_submission
string description_task
string datatime_start
---
bool success
string msg

")



(provide :robotnik_msgs/InsertTask "36ad6270fb0855e3101179d36268dd90")


