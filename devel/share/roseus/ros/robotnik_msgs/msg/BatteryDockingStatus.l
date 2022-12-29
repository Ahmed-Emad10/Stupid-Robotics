;; Auto-generated. Do not edit!


(when (boundp 'robotnik_msgs::BatteryDockingStatus)
  (if (not (find-package "ROBOTNIK_MSGS"))
    (make-package "ROBOTNIK_MSGS"))
  (shadow 'BatteryDockingStatus (find-package "ROBOTNIK_MSGS")))
(unless (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS")
  (make-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BatteryDockingStatus.msg.html


(intern "*MODE_DISABLED*" (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(shadow '*MODE_DISABLED* (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(defconstant robotnik_msgs::BatteryDockingStatus::*MODE_DISABLED* "disabled")
(intern "*MODE_AUTO_HW*" (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(shadow '*MODE_AUTO_HW* (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(defconstant robotnik_msgs::BatteryDockingStatus::*MODE_AUTO_HW* "automatic_hw")
(intern "*MODE_AUTO_SW*" (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(shadow '*MODE_AUTO_SW* (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(defconstant robotnik_msgs::BatteryDockingStatus::*MODE_AUTO_SW* "automatic_sw")
(intern "*MODE_MANUAL_SW*" (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(shadow '*MODE_MANUAL_SW* (find-package "ROBOTNIK_MSGS::BATTERYDOCKINGSTATUS"))
(defconstant robotnik_msgs::BatteryDockingStatus::*MODE_MANUAL_SW* "manual_sw")

(defun robotnik_msgs::BatteryDockingStatus-to-symbol (const)
  (cond
        (t nil)))

(defclass robotnik_msgs::BatteryDockingStatus
  :super ros::object
  :slots (_operation_mode _contact_relay_status _charger_relay_status ))

(defmethod robotnik_msgs::BatteryDockingStatus
  (:init
   (&key
    ((:operation_mode __operation_mode) "")
    ((:contact_relay_status __contact_relay_status) nil)
    ((:charger_relay_status __charger_relay_status) nil)
    )
   (send-super :init)
   (setq _operation_mode (string __operation_mode))
   (setq _contact_relay_status __contact_relay_status)
   (setq _charger_relay_status __charger_relay_status)
   self)
  (:operation_mode
   (&optional __operation_mode)
   (if __operation_mode (setq _operation_mode __operation_mode)) _operation_mode)
  (:contact_relay_status
   (&optional (__contact_relay_status :null))
   (if (not (eq __contact_relay_status :null)) (setq _contact_relay_status __contact_relay_status)) _contact_relay_status)
  (:charger_relay_status
   (&optional (__charger_relay_status :null))
   (if (not (eq __charger_relay_status :null)) (setq _charger_relay_status __charger_relay_status)) _charger_relay_status)
  (:serialization-length
   ()
   (+
    ;; string _operation_mode
    4 (length _operation_mode)
    ;; bool _contact_relay_status
    1
    ;; bool _charger_relay_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _operation_mode
       (write-long (length _operation_mode) s) (princ _operation_mode s)
     ;; bool _contact_relay_status
       (if _contact_relay_status (write-byte -1 s) (write-byte 0 s))
     ;; bool _charger_relay_status
       (if _charger_relay_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _operation_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _operation_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _contact_relay_status
     (setq _contact_relay_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _charger_relay_status
     (setq _charger_relay_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robotnik_msgs::BatteryDockingStatus :md5sum-) "d7c3a4e25e4a4a665c4a1dd0862edfc2")
(setf (get robotnik_msgs::BatteryDockingStatus :datatype-) "robotnik_msgs/BatteryDockingStatus")
(setf (get robotnik_msgs::BatteryDockingStatus :definition-)
      "# Modes of operation:
# no docking station contacts
string MODE_DISABLED=disabled
# Unattended relay detection & activation with no inputs/outputs feedback. Done by the hw
string MODE_AUTO_HW=automatic_hw
# Unattended relay detection & activation with inputs/outputs feedback. Done by the sw
string MODE_AUTO_SW=automatic_sw
# Unattended relay detection & and manual activation of the charging relay
string MODE_MANUAL_SW=manual_sw

string operation_mode
	
bool contact_relay_status	# shows if there's contact with the charger
bool charger_relay_status   # shows if the relay for the charge is active or not

")



(provide :robotnik_msgs/BatteryDockingStatus "d7c3a4e25e4a4a665c4a1dd0862edfc2")


