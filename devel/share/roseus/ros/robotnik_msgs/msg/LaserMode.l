;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::LaserMode)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'LaserMode (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::LASERMODE")
  (make-package "ROBOTNIK_MSGS::LASERMODE"))

(in-package "ROS")
;;//! \htmlinclude LaserMode.msg.html


(intern "*STANDARD*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*STANDARD* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*STANDARD* "standard")
(intern "*DOCKING_STATION*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*DOCKING_STATION* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*DOCKING_STATION* "docking_station")
(intern "*CART*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*CART* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*CART* "cart")
(intern "*CART_DOCKING_CART*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*CART_DOCKING_CART* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*CART_DOCKING_CART* "cart_docking_cart")
(intern "*DOCKING_CART*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*DOCKING_CART* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*DOCKING_CART* "docking_cart")
(intern "*REDUCED*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*REDUCED* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*REDUCED* "reduced")
(intern "*INVALID*" (find-package "ROBOTNIK_MSGS::LASERMODE"))
(shadow '*INVALID* (find-package "ROBOTNIK_MSGS::LASERMODE"))
(defconstant robotnik_msgs::LaserMode::*INVALID* "invalid")

(defun robotnik_msgs::LaserMode-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::LaserMode
  :super ros::object
  :slots (_name ))

(defmethod robotnik_msgs::LaserMode
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

(setf (get robotnik_msgs::LaserMode :md5sum-) "04d69d26faf3f5fdd3d172ee0e35f8ea")
(setf (get robotnik_msgs::LaserMode :datatype-) "robotnik_msgs/LaserMode")
(setf (get robotnik_msgs::LaserMode :definition-)
      "string STANDARD=standard
string DOCKING_STATION=docking_station
string CART=cart
string CART_DOCKING_CART=cart_docking_cart
string DOCKING_CART=docking_cart
string REDUCED=reduced
string INVALID=invalid

string name

")



(provide :robotnik_msgs/LaserMode "04d69d26faf3f5fdd3d172ee0e35f8ea")


