;; Auto-generated. Do not edit!


(when (boundp 'roboteq_motor_controller_driver::maintenance_srv)
  (if (not (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
    (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
  (shadow 'maintenance_srv (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER")))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRV")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRV"))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRVREQUEST")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRVREQUEST"))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRVRESPONSE")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::MAINTENANCE_SRVRESPONSE"))

(in-package "ROS")





(defclass roboteq_motor_controller_driver::maintenance_srvRequest
  :super ros::object
  :slots (_userInput ))

(defmethod roboteq_motor_controller_driver::maintenance_srvRequest
  (:init
   (&key
    ((:userInput __userInput) "")
    )
   (send-super :init)
   (setq _userInput (string __userInput))
   self)
  (:userInput
   (&optional __userInput)
   (if __userInput (setq _userInput __userInput)) _userInput)
  (:serialization-length
   ()
   (+
    ;; string _userInput
    4 (length _userInput)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _userInput
       (write-long (length _userInput) s) (princ _userInput s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _userInput
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _userInput (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboteq_motor_controller_driver::maintenance_srvResponse
  :super ros::object
  :slots (_result ))

(defmethod roboteq_motor_controller_driver::maintenance_srvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass roboteq_motor_controller_driver::maintenance_srv
  :super ros::object
  :slots ())

(setf (get roboteq_motor_controller_driver::maintenance_srv :md5sum-) "cf026a2baaf512cfffd561e78c18a0ec")
(setf (get roboteq_motor_controller_driver::maintenance_srv :datatype-) "roboteq_motor_controller_driver/maintenance_srv")
(setf (get roboteq_motor_controller_driver::maintenance_srv :request) roboteq_motor_controller_driver::maintenance_srvRequest)
(setf (get roboteq_motor_controller_driver::maintenance_srv :response) roboteq_motor_controller_driver::maintenance_srvResponse)

(defmethod roboteq_motor_controller_driver::maintenance_srvRequest
  (:response () (instance roboteq_motor_controller_driver::maintenance_srvResponse :init)))

(setf (get roboteq_motor_controller_driver::maintenance_srvRequest :md5sum-) "cf026a2baaf512cfffd561e78c18a0ec")
(setf (get roboteq_motor_controller_driver::maintenance_srvRequest :datatype-) "roboteq_motor_controller_driver/maintenance_srvRequest")
(setf (get roboteq_motor_controller_driver::maintenance_srvRequest :definition-)
      "string userInput
---
string result

")

(setf (get roboteq_motor_controller_driver::maintenance_srvResponse :md5sum-) "cf026a2baaf512cfffd561e78c18a0ec")
(setf (get roboteq_motor_controller_driver::maintenance_srvResponse :datatype-) "roboteq_motor_controller_driver/maintenance_srvResponse")
(setf (get roboteq_motor_controller_driver::maintenance_srvResponse :definition-)
      "string userInput
---
string result

")



(provide :roboteq_motor_controller_driver/maintenance_srv "cf026a2baaf512cfffd561e78c18a0ec")


