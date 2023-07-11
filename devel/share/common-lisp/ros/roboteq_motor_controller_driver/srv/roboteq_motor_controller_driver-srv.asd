
(cl:in-package :asdf)

(defsystem "roboteq_motor_controller_driver-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "command_srv" :depends-on ("_package_command_srv"))
    (:file "_package_command_srv" :depends-on ("_package"))
    (:file "config_srv" :depends-on ("_package_config_srv"))
    (:file "_package_config_srv" :depends-on ("_package"))
    (:file "maintenance_srv" :depends-on ("_package_maintenance_srv"))
    (:file "_package_maintenance_srv" :depends-on ("_package"))
  ))