
(cl:in-package :asdf)

(defsystem "project_reqs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "CustomMsg" :depends-on ("_package_CustomMsg"))
    (:file "_package_CustomMsg" :depends-on ("_package"))
  ))