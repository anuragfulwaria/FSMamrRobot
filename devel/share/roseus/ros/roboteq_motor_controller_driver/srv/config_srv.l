;; Auto-generated. Do not edit!


(when (boundp 'roboteq_motor_controller_driver::config_srv)
  (if (not (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
    (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
  (shadow 'config_srv (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER")))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRV")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRV"))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRVREQUEST")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRVREQUEST"))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRVRESPONSE")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CONFIG_SRVRESPONSE"))

(in-package "ROS")





(defclass roboteq_motor_controller_driver::config_srvRequest
  :super ros::object
  :slots (_userInput _channel _value ))

(defmethod roboteq_motor_controller_driver::config_srvRequest
  (:init
   (&key
    ((:userInput __userInput) "")
    ((:channel __channel) 0)
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _userInput (string __userInput))
   (setq _channel (round __channel))
   (setq _value (round __value))
   self)
  (:userInput
   (&optional __userInput)
   (if __userInput (setq _userInput __userInput)) _userInput)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _userInput
    4 (length _userInput)
    ;; int64 _channel
    8
    ;; int64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _userInput
       (write-long (length _userInput) s) (princ _userInput s)
     ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _channel (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _channel) (= (length (_channel . bv)) 2)) ;; bignum
              (write-long (ash (elt (_channel . bv) 0) 0) s)
              (write-long (ash (elt (_channel . bv) 1) -1) s))
             ((and (class _channel) (= (length (_channel . bv)) 1)) ;; big1
              (write-long (elt (_channel . bv) 0) s)
              (write-long (if (>= _channel 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _channel s)(write-long (if (>= _channel 0) 0 #xffffffff) s)))
     ;; int64 _value
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _value (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _value) (= (length (_value . bv)) 2)) ;; bignum
              (write-long (ash (elt (_value . bv) 0) 0) s)
              (write-long (ash (elt (_value . bv) 1) -1) s))
             ((and (class _value) (= (length (_value . bv)) 1)) ;; big1
              (write-long (elt (_value . bv) 0) s)
              (write-long (if (>= _value 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _value s)(write-long (if (>= _value 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _userInput
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _userInput (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _channel
#+(or :alpha :irix6 :x86_64)
      (setf _channel (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _channel (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _value
#+(or :alpha :irix6 :x86_64)
      (setf _value (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _value (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(defclass roboteq_motor_controller_driver::config_srvResponse
  :super ros::object
  :slots (_result ))

(defmethod roboteq_motor_controller_driver::config_srvResponse
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

(defclass roboteq_motor_controller_driver::config_srv
  :super ros::object
  :slots ())

(setf (get roboteq_motor_controller_driver::config_srv :md5sum-) "c6a1a0e621254ff7bba438d5bd95fa58")
(setf (get roboteq_motor_controller_driver::config_srv :datatype-) "roboteq_motor_controller_driver/config_srv")
(setf (get roboteq_motor_controller_driver::config_srv :request) roboteq_motor_controller_driver::config_srvRequest)
(setf (get roboteq_motor_controller_driver::config_srv :response) roboteq_motor_controller_driver::config_srvResponse)

(defmethod roboteq_motor_controller_driver::config_srvRequest
  (:response () (instance roboteq_motor_controller_driver::config_srvResponse :init)))

(setf (get roboteq_motor_controller_driver::config_srvRequest :md5sum-) "c6a1a0e621254ff7bba438d5bd95fa58")
(setf (get roboteq_motor_controller_driver::config_srvRequest :datatype-) "roboteq_motor_controller_driver/config_srvRequest")
(setf (get roboteq_motor_controller_driver::config_srvRequest :definition-)
      "string userInput
int64 channel
int64 value
---
string result

")

(setf (get roboteq_motor_controller_driver::config_srvResponse :md5sum-) "c6a1a0e621254ff7bba438d5bd95fa58")
(setf (get roboteq_motor_controller_driver::config_srvResponse :datatype-) "roboteq_motor_controller_driver/config_srvResponse")
(setf (get roboteq_motor_controller_driver::config_srvResponse :definition-)
      "string userInput
int64 channel
int64 value
---
string result

")



(provide :roboteq_motor_controller_driver/config_srv "c6a1a0e621254ff7bba438d5bd95fa58")


