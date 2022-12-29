;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::QueryAlarms)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'QueryAlarms (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::QUERYALARMS")
  (make-package "ROBOTNIK_MSGS::QUERYALARMS"))
(unless (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST")
  (make-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(unless (find-package "ROBOTNIK_MSGS::QUERYALARMSRESPONSE")
  (make-package "ROBOTNIK_MSGS::QUERYALARMSRESPONSE"))

(in-package "ROS")





(intern "*TYPE_QUERY_ALL*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*TYPE_QUERY_ALL* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*TYPE_QUERY_ALL* "ALL")
(intern "*TYPE_QUERY_TOP*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*TYPE_QUERY_TOP* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*TYPE_QUERY_TOP* "TOP")
(intern "*TYPE_BETWEEN_DATE*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*TYPE_BETWEEN_DATE* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*TYPE_BETWEEN_DATE* "BETWEEN_DATE")
(intern "*TYPE_TOP_BETWEEN_DATE*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*TYPE_TOP_BETWEEN_DATE* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*TYPE_TOP_BETWEEN_DATE* "TOP_BETWEEN_DATE")
(intern "*FILTER_TYPE_NOTHING*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*FILTER_TYPE_NOTHING* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*FILTER_TYPE_NOTHING* "NOTHING")
(intern "*FILTER_TYPE_EVENT*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*FILTER_TYPE_EVENT* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*FILTER_TYPE_EVENT* "EVENT")
(intern "*FILTER_TYPE_ALARM*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*FILTER_TYPE_ALARM* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*FILTER_TYPE_ALARM* "ALARM")
(intern "*FILTER_TYPE_ERROR*" (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(shadow '*FILTER_TYPE_ERROR* (find-package "ROBOTNIK_MSGS::QUERYALARMSREQUEST"))
(defconstant robotnik_msgs::QueryAlarmsRequest::*FILTER_TYPE_ERROR* "ERROR")

(defun robotnik_msgs::QueryAlarmsRequest-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::QueryAlarmsRequest
  :super ros::object
  :slots (_type_query _start_date _end_date _top _filter_type ))

(defmethod robotnik_msgs::QueryAlarmsRequest
  (:init
   (&key
    ((:type_query __type_query) "")
    ((:start_date __start_date) "")
    ((:end_date __end_date) "")
    ((:top __top) 0)
    ((:filter_type __filter_type) "")
    )
   (send-super :init)
   (setq _type_query (string __type_query))
   (setq _start_date (string __start_date))
   (setq _end_date (string __end_date))
   (setq _top (round __top))
   (setq _filter_type (string __filter_type))
   self)
  (:type_query
   (&optional __type_query)
   (if __type_query (setq _type_query __type_query)) _type_query)
  (:start_date
   (&optional __start_date)
   (if __start_date (setq _start_date __start_date)) _start_date)
  (:end_date
   (&optional __end_date)
   (if __end_date (setq _end_date __end_date)) _end_date)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:filter_type
   (&optional __filter_type)
   (if __filter_type (setq _filter_type __filter_type)) _filter_type)
  (:serialization-length
   ()
   (+
    ;; string _type_query
    4 (length _type_query)
    ;; string _start_date
    4 (length _start_date)
    ;; string _end_date
    4 (length _end_date)
    ;; int32 _top
    4
    ;; string _filter_type
    4 (length _filter_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type_query
       (write-long (length _type_query) s) (princ _type_query s)
     ;; string _start_date
       (write-long (length _start_date) s) (princ _start_date s)
     ;; string _end_date
       (write-long (length _end_date) s) (princ _end_date s)
     ;; int32 _top
       (write-long _top s)
     ;; string _filter_type
       (write-long (length _filter_type) s) (princ _filter_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type_query
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type_query (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _start_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_date
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_date (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _top
     (setq _top (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _filter_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filter_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::QueryAlarmsResponse
  :super ros::object
  :slots (_alarms _success _msg ))

(defmethod robotnik_msgs::QueryAlarmsResponse
  (:init
   (&key
    ((:alarms __alarms) ())
    ((:success __success) nil)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _alarms __alarms)
   (setq _success __success)
   (setq _msg (string __msg))
   self)
  (:alarms
   (&rest __alarms)
   (if (keywordp (car __alarms))
       (send* _alarms __alarms)
     (progn
       (if __alarms (setq _alarms (car __alarms)))
       _alarms)))
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; robotnik_msgs/QueryAlarm[] _alarms
    (apply #'+ (send-all _alarms :serialization-length)) 4
    ;; bool _success
    1
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; robotnik_msgs/QueryAlarm[] _alarms
     (write-long (length _alarms) s)
     (dolist (elem _alarms)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; robotnik_msgs/QueryAlarm[] _alarms
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _alarms (let (r) (dotimes (i n) (push (instance robotnik_msgs::QueryAlarm :init) r)) r))
     (dolist (elem- _alarms)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotnik_msgs::QueryAlarms
  :super ros::object
  :slots ())

(setf (get robotnik_msgs::QueryAlarms :md5sum-) "a3f95993dac9d6abc16a8e0ab77695c5")
(setf (get robotnik_msgs::QueryAlarms :datatype-) "robotnik_msgs/QueryAlarms")
(setf (get robotnik_msgs::QueryAlarms :request) robotnik_msgs::QueryAlarmsRequest)
(setf (get robotnik_msgs::QueryAlarms :response) robotnik_msgs::QueryAlarmsResponse)

(defmethod robotnik_msgs::QueryAlarmsRequest
  (:response () (instance robotnik_msgs::QueryAlarmsResponse :init)))

(setf (get robotnik_msgs::QueryAlarmsRequest :md5sum-) "a3f95993dac9d6abc16a8e0ab77695c5")
(setf (get robotnik_msgs::QueryAlarmsRequest :datatype-) "robotnik_msgs/QueryAlarmsRequest")
(setf (get robotnik_msgs::QueryAlarmsRequest :definition-)
      "string TYPE_QUERY_ALL=ALL
string TYPE_QUERY_TOP=TOP
string TYPE_BETWEEN_DATE=BETWEEN_DATE
string TYPE_TOP_BETWEEN_DATE=TOP_BETWEEN_DATE
string FILTER_TYPE_NOTHING=NOTHING
string FILTER_TYPE_EVENT=EVENT
string FILTER_TYPE_ALARM=ALARM
string FILTER_TYPE_ERROR=ERROR
string type_query
string start_date
string end_date
int32 top
string filter_type
---
QueryAlarm[] alarms
bool success
string msg


================================================================================
MSG: robotnik_msgs/QueryAlarm
int32 alm_id
string alm_component
string alm_type
string alm_group
string alm_description
string alm_start_time
string alm_end_time
")

(setf (get robotnik_msgs::QueryAlarmsResponse :md5sum-) "a3f95993dac9d6abc16a8e0ab77695c5")
(setf (get robotnik_msgs::QueryAlarmsResponse :datatype-) "robotnik_msgs/QueryAlarmsResponse")
(setf (get robotnik_msgs::QueryAlarmsResponse :definition-)
      "string TYPE_QUERY_ALL=ALL
string TYPE_QUERY_TOP=TOP
string TYPE_BETWEEN_DATE=BETWEEN_DATE
string TYPE_TOP_BETWEEN_DATE=TOP_BETWEEN_DATE
string FILTER_TYPE_NOTHING=NOTHING
string FILTER_TYPE_EVENT=EVENT
string FILTER_TYPE_ALARM=ALARM
string FILTER_TYPE_ERROR=ERROR
string type_query
string start_date
string end_date
int32 top
string filter_type
---
QueryAlarm[] alarms
bool success
string msg


================================================================================
MSG: robotnik_msgs/QueryAlarm
int32 alm_id
string alm_component
string alm_type
string alm_group
string alm_description
string alm_start_time
string alm_end_time
")



(provide :robotnik_msgs/QueryAlarms "a3f95993dac9d6abc16a8e0ab77695c5")


