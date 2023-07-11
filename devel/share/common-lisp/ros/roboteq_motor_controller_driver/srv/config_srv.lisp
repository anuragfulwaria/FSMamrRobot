; Auto-generated. Do not edit!


(cl:in-package roboteq_motor_controller_driver-srv)


;//! \htmlinclude config_srv-request.msg.html

(cl:defclass <config_srv-request> (roslisp-msg-protocol:ros-message)
  ((userInput
    :reader userInput
    :initarg :userInput
    :type cl:string
    :initform "")
   (channel
    :reader channel
    :initarg :channel
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass config_srv-request (<config_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_motor_controller_driver-srv:<config_srv-request> is deprecated: use roboteq_motor_controller_driver-srv:config_srv-request instead.")))

(cl:ensure-generic-function 'userInput-val :lambda-list '(m))
(cl:defmethod userInput-val ((m <config_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:userInput-val is deprecated.  Use roboteq_motor_controller_driver-srv:userInput instead.")
  (userInput m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <config_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:channel-val is deprecated.  Use roboteq_motor_controller_driver-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <config_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:value-val is deprecated.  Use roboteq_motor_controller_driver-srv:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_srv-request>) ostream)
  "Serializes a message object of type '<config_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'userInput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'userInput))
  (cl:let* ((signed (cl:slot-value msg 'channel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_srv-request>) istream)
  "Deserializes a message object of type '<config_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'userInput) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'userInput) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'channel) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_srv-request>)))
  "Returns string type for a service object of type '<config_srv-request>"
  "roboteq_motor_controller_driver/config_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_srv-request)))
  "Returns string type for a service object of type 'config_srv-request"
  "roboteq_motor_controller_driver/config_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_srv-request>)))
  "Returns md5sum for a message object of type '<config_srv-request>"
  "c6a1a0e621254ff7bba438d5bd95fa58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_srv-request)))
  "Returns md5sum for a message object of type 'config_srv-request"
  "c6a1a0e621254ff7bba438d5bd95fa58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_srv-request>)))
  "Returns full string definition for message of type '<config_srv-request>"
  (cl:format cl:nil "string userInput~%int64 channel~%int64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_srv-request)))
  "Returns full string definition for message of type 'config_srv-request"
  (cl:format cl:nil "string userInput~%int64 channel~%int64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'userInput))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'config_srv-request
    (cl:cons ':userInput (userInput msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':value (value msg))
))
;//! \htmlinclude config_srv-response.msg.html

(cl:defclass <config_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass config_srv-response (<config_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <config_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'config_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_motor_controller_driver-srv:<config_srv-response> is deprecated: use roboteq_motor_controller_driver-srv:config_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <config_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:result-val is deprecated.  Use roboteq_motor_controller_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <config_srv-response>) ostream)
  "Serializes a message object of type '<config_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <config_srv-response>) istream)
  "Deserializes a message object of type '<config_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<config_srv-response>)))
  "Returns string type for a service object of type '<config_srv-response>"
  "roboteq_motor_controller_driver/config_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_srv-response)))
  "Returns string type for a service object of type 'config_srv-response"
  "roboteq_motor_controller_driver/config_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<config_srv-response>)))
  "Returns md5sum for a message object of type '<config_srv-response>"
  "c6a1a0e621254ff7bba438d5bd95fa58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'config_srv-response)))
  "Returns md5sum for a message object of type 'config_srv-response"
  "c6a1a0e621254ff7bba438d5bd95fa58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<config_srv-response>)))
  "Returns full string definition for message of type '<config_srv-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'config_srv-response)))
  "Returns full string definition for message of type 'config_srv-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <config_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <config_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'config_srv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'config_srv)))
  'config_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'config_srv)))
  'config_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'config_srv)))
  "Returns string type for a service object of type '<config_srv>"
  "roboteq_motor_controller_driver/config_srv")