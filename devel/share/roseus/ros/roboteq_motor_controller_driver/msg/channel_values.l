;; Auto-generated. Do not edit!


(when (boundp 'roboteq_motor_controller_driver::channel_values)
  (if (not (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
    (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER"))
  (shadow 'channel_values (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER")))
(unless (find-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CHANNEL_VALUES")
  (make-package "ROBOTEQ_MOTOR_CONTROLLER_DRIVER::CHANNEL_VALUES"))

(in-package "ROS")
;;//! \htmlinclude channel_values.msg.html


(defclass roboteq_motor_controller_driver::channel_values
  :super ros::object
  :slots (_value ))

(defmethod roboteq_motor_controller_driver::channel_values
  (:init
   (&key
    ((:value __value) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _value __value)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int64[] _value
    (* 8    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _value
     (write-long (length _value) s)
     (dotimes (i (length _value))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _value i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _value i)) (= (length ((elt _value i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _value i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _value i) . bv) 1) -1) s))
             ((and (class (elt _value i)) (= (length ((elt _value i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _value i) . bv) 0) s)
              (write-long (if (>= (elt _value i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _value i) s)(write-long (if (>= (elt _value i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _value i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _value i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get roboteq_motor_controller_driver::channel_values :md5sum-) "67631b021b5d5374cfd8a5bd8b56428a")
(setf (get roboteq_motor_controller_driver::channel_values :datatype-) "roboteq_motor_controller_driver/channel_values")
(setf (get roboteq_motor_controller_driver::channel_values :definition-)
      "int64[] value

")



(provide :roboteq_motor_controller_driver/channel_values "67631b021b5d5374cfd8a5bd8b56428a")


