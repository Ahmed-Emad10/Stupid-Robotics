
(cl:in-package :asdf)

(defsystem "summit_xl_pad-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "enable_disable_pad" :depends-on ("_package_enable_disable_pad"))
    (:file "_package_enable_disable_pad" :depends-on ("_package"))
  ))