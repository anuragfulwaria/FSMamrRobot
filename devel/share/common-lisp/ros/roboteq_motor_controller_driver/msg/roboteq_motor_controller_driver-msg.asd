
(cl:in-package :asdf)

(defsystem "roboteq_motor_controller_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "channel_values" :depends-on ("_package_channel_values"))
    (:file "_package_channel_values" :depends-on ("_package"))
  ))