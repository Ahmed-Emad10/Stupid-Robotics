;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::alarmmonitor)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'alarmmonitor (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::ALARMMONITOR")
  (make-package "ROBOTNIK_MSGS::ALARMMONITOR"))

(in-package "ROS")
;;//! \htmlinclude alarmmonitor.msg.html


(defclass robotnik_msgs::alarmmonitor
  :super ros::object
  :slots (_type _display _component _hmi _group _text _seconds_active ))

(defmethod robotnik_msgs::alarmmonitor
  (:init
   (&key
    ((:type __type) "")
    ((:display __display) 0)
    ((:component __component) "")
    ((:hmi __hmi) nil)
    ((:group __group) "")
    ((:text __text) "")
    ((:seconds_active __seconds_active) 0)
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _display (round __display))
   (setq _component (string __component))
   (setq _hmi __hmi)
   (setq _group (string __group))
   (setq _text (string __text))
   (setq _seconds_active (round __seconds_active))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:display
   (&optional __display)
   (if __display (setq _display __display)) _display)
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:hmi
   (&optional (__hmi :null))
   (if (not (eq __hmi :null)) (setq _hmi __hmi)) _hmi)
  (:group
   (&optional __group)
   (if __group (setq _group __group)) _group)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:seconds_active
   (&optional __seconds_active)
   (if __seconds_active (setq _seconds_active __seconds_active)) _seconds_active)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; int32 _display
    4
    ;; string _component
    4 (length _component)
    ;; bool _hmi
    1
    ;; string _group
    4 (length _group)
    ;; string _text
    4 (length _text)
    ;; uint64 _seconds_active
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _display
       (write-long _display s)
     ;; string _component
       (write-long (length _component) s) (princ _component s)
     ;; bool _hmi
       (if _hmi (write-byte -1 s) (write-byte 0 s))
     ;; string _group
       (write-long (length _group) s) (princ _group s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; uint64 _seconds_active
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seconds_active (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seconds_active) (= (length (_seconds_active . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seconds_active . bv) 0) 0) s)
              (write-long (ash (elt (_seconds_active . bv) 1) -1) s))
             ((and (class _seconds_active) (= (length (_seconds_active . bv)) 1)) ;; big1
              (write-long (elt (_seconds_active . bv) 0) s)
              (write-long (if (>= _seconds_active 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seconds_active s)(write-long (if (>= _seconds_active 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _display
     (setq _display (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _component
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _component (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _hmi
     (setq _hmi (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _group
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _seconds_active
     
#+(or :alpha :irix6 :x86_64)
      (setf _seconds_active (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seconds_active (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get robotnik_msgs::alarmmonitor :md5sum-) "bb3d91213f2300b7fc9bb9063b1a7b1e")
(setf (get robotnik_msgs::alarmmonitor :datatype-) "robotnik_msgs/alarmmonitor")
(setf (get robotnik_msgs::alarmmonitor :definition-)
      "# type: error, warning, event
string type
# displaing number for monitoring
int32 display
# component
string component
# To be shown in HMI
bool hmi
# group: alarm group all alarms of same group will be reset at same time
string group
# text: more explained information about alarm, should include group, time, conditions, etc
string text
# seconds active
uint64 seconds_active

")



(provide :robotnik_msgs/alarmmonitor "bb3d91213f2300b7fc9bb9063b1a7b1e")


