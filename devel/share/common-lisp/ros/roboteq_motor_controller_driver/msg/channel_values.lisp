; Auto-generated. Do not edit!


(cl:in-package roboteq_motor_controller_driver-msg)


;//! \htmlinclude channel_values.msg.html

(cl:defclass <channel_values> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass channel_values (<channel_values>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <channel_values>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'channel_values)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_motor_controller_driver-msg:<channel_values> is deprecated: use roboteq_motor_controller_driver-msg:channel_values instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <channel_values>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-msg:value-val is deprecated.  Use roboteq_motor_controller_driver-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <channel_values>) ostream)
  "Serializes a message object of type '<channel_values>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    ))
   (cl:slot-value msg 'value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <channel_values>) istream)
  "Deserializes a message object of type '<channel_values>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<channel_values>)))
  "Returns string type for a message object of type '<channel_values>"
  "roboteq_motor_controller_driver/channel_values")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'channel_values)))
  "Returns string type for a message object of type 'channel_values"
  "roboteq_motor_controller_driver/channel_values")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<channel_values>)))
  "Returns md5sum for a message object of type '<channel_values>"
  "67631b021b5d5374cfd8a5bd8b56428a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'channel_values)))
  "Returns md5sum for a message object of type 'channel_values"
  "67631b021b5d5374cfd8a5bd8b56428a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<channel_values>)))
  "Returns full string definition for message of type '<channel_values>"
  (cl:format cl:nil "int64[] value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'channel_values)))
  "Returns full string definition for message of type 'channel_values"
  (cl:format cl:nil "int64[] value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <channel_values>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <channel_values>))
  "Converts a ROS message object to a list"
  (cl:list 'channel_values
    (cl:cons ':value (value msg))
))
