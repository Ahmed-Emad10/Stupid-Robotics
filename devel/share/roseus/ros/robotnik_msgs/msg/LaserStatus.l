;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::LaserStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'LaserStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::LASERSTATUS")
  (make-package "ROBOTNIK_MSGS::LASERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude LaserStatus.msg.html


(defclass robotnik_msgs::LaserStatus
  :super ros::object
  :slots (_name _detecting_obstacles _contaminated _free_warning _warning_zones ))

(defmethod robotnik_msgs::LaserStatus
  (:init
   (&key
    ((:name __name) "")
    ((:detecting_obstacles __detecting_obstacles) nil)
    ((:contaminated __contaminated) nil)
    ((:free_warning __free_warning) nil)
    ((:warning_zones __warning_zones) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _detecting_obstacles __detecting_obstacles)
   (setq _contaminated __contaminated)
   (setq _free_warning __free_warning)
   (setq _warning_zones __warning_zones)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:detecting_obstacles
   (&optional (__detecting_obstacles :null))
   (if (not (eq __detecting_obstacles :null)) (setq _detecting_obstacles __detecting_obstacles)) _detecting_obstacles)
  (:contaminated
   (&optional (__contaminated :null))
   (if (not (eq __contaminated :null)) (setq _contaminated __contaminated)) _contaminated)
  (:free_warning
   (&optional (__free_warning :null))
   (if (not (eq __free_warning :null)) (setq _free_warning __free_warning)) _free_warning)
  (:warning_zones
   (&optional __warning_zones)
   (if __warning_zones (setq _warning_zones __warning_zones)) _warning_zones)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _detecting_obstacles
    1
    ;; bool _contaminated
    1
    ;; bool _free_warning
    1
    ;; bool[] _warning_zones
    (* 1    (length _warning_zones)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _detecting_obstacles
       (if _detecting_obstacles (write-byte -1 s) (write-byte 0 s))
     ;; bool _contaminated
       (if _contaminated (write-byte -1 s) (write-byte 0 s))
     ;; bool _free_warning
       (if _free_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool[] _warning_zones
     (write-long (length _warning_zones) s)
     (dotimes (i (length _warning_zones))
       (if (elt _warning_zones i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _detecting_obstacles
     (setq _detecting_obstacles (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _contaminated
     (setq _contaminated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _free_warning
     (setq _free_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool[] _warning_zones
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _warning_zones (make-list n))
     (dotimes (i n)
     (setf (elt _warning_zones i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get robotnik_msgs::LaserStatus :md5sum-) "59f57d3a0c4aa9b97dcd8bd40152ebb4")
(setf (get robotnik_msgs::LaserStatus :datatype-) "robotnik_msgs/LaserStatus")
(setf (get robotnik_msgs::LaserStatus :definition-)
      "string name
bool detecting_obstacles
bool contaminated
bool free_warning
# one input per each warning zone.
# first areas are closer to the robot (i.e. more restrictive)
bool[] warning_zones 

")



(provide :robotnik_msgs/LaserStatus "59f57d3a0c4aa9b97dcd8bd40152ebb4")


