;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::QueryAlarm)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'QueryAlarm (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::QUERYALARM")
  (make-package "ROBOTNIK_MSGS::QUERYALARM"))

(in-package "ROS")
;;//! \htmlinclude QueryAlarm.msg.html


(defclass robotnik_msgs::QueryAlarm
  :super ros::object
  :slots (_alm_id _alm_component _alm_type _alm_group _alm_description _alm_start_time _alm_end_time ))

(defmethod robotnik_msgs::QueryAlarm
  (:init
   (&key
    ((:alm_id __alm_id) 0)
    ((:alm_component __alm_component) "")
    ((:alm_type __alm_type) "")
    ((:alm_group __alm_group) "")
    ((:alm_description __alm_description) "")
    ((:alm_start_time __alm_start_time) "")
    ((:alm_end_time __alm_end_time) "")
    )
   (send-super :init)
   (setq _alm_id (round __alm_id))
   (setq _alm_component (string __alm_component))
   (setq _alm_type (string __alm_type))
   (setq _alm_group (string __alm_group))
   (setq _alm_description (string __alm_description))
   (setq _alm_start_time (string __alm_start_time))
   (setq _alm_end_time (string __alm_end_time))
   self)
  (:alm_id
   (&optional __alm_id)
   (if __alm_id (setq _alm_id __alm_id)) _alm_id)
  (:alm_component
   (&optional __alm_component)
   (if __alm_component (setq _alm_component __alm_component)) _alm_component)
  (:alm_type
   (&optional __alm_type)
   (if __alm_type (setq _alm_type __alm_type)) _alm_type)
  (:alm_group
   (&optional __alm_group)
   (if __alm_group (setq _alm_group __alm_group)) _alm_group)
  (:alm_description
   (&optional __alm_description)
   (if __alm_description (setq _alm_description __alm_description)) _alm_description)
  (:alm_start_time
   (&optional __alm_start_time)
   (if __alm_start_time (setq _alm_start_time __alm_start_time)) _alm_start_time)
  (:alm_end_time
   (&optional __alm_end_time)
   (if __alm_end_time (setq _alm_end_time __alm_end_time)) _alm_end_time)
  (:serialization-length
   ()
   (+
    ;; int32 _alm_id
    4
    ;; string _alm_component
    4 (length _alm_component)
    ;; string _alm_type
    4 (length _alm_type)
    ;; string _alm_group
    4 (length _alm_group)
    ;; string _alm_description
    4 (length _alm_description)
    ;; string _alm_start_time
    4 (length _alm_start_time)
    ;; string _alm_end_time
    4 (length _alm_end_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _alm_id
       (write-long _alm_id s)
     ;; string _alm_component
       (write-long (length _alm_component) s) (princ _alm_component s)
     ;; string _alm_type
       (write-long (length _alm_type) s) (princ _alm_type s)
     ;; string _alm_group
       (write-long (length _alm_group) s) (princ _alm_group s)
     ;; string _alm_description
       (write-long (length _alm_description) s) (princ _alm_description s)
     ;; string _alm_start_time
       (write-long (length _alm_start_time) s) (princ _alm_start_time s)
     ;; string _alm_end_time
       (write-long (length _alm_end_time) s) (princ _alm_end_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _alm_id
     (setq _alm_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _alm_component
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_component (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alm_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alm_group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alm_description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alm_start_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_start_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _alm_end_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _alm_end_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get robotnik_msgs::QueryAlarm :md5sum-) "f3c7e9979cb91a050b98067ffb98adff")
(setf (get robotnik_msgs::QueryAlarm :datatype-) "robotnik_msgs/QueryAlarm")
(setf (get robotnik_msgs::QueryAlarm :definition-)
      "int32 alm_id
string alm_component
string alm_type
string alm_group
string alm_description
string alm_start_time
string alm_end_time

")



(provide :robotnik_msgs/QueryAlarm "f3c7e9979cb91a050b98067ffb98adff")


