;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::StringArray)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'StringArray (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::STRINGARRAY")
  (make-package "ROBOTNIK_MSGS::STRINGARRAY"))

(in-package "ROS")
;;//! \htmlinclude StringArray.msg.html


(defclass robotnik_msgs::StringArray
  :super ros::object
  :slots (_text ))

(defmethod robotnik_msgs::StringArray
  (:init
   (&key
    ((:text __text) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _text __text)
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; string[] _text
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _text)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _text
     (write-long (length _text) s)
     (dolist (elem _text)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _text
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _text (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _text i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::StringArray :md5sum-) "da62ad767a4dbff3a3ce44939e6c55e8")
(setf (get robotnik_msgs::StringArray :datatype-) "robotnik_msgs/StringArray")
(setf (get robotnik_msgs::StringArray :definition-)
      "string[] text

")



(provide :robotnik_msgs/StringArray "da62ad767a4dbff3a3ce44939e6c55e8")


