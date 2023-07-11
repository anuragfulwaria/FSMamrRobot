; Auto-generated. Do not edit!


(cl:in-package roboteq_motor_controller_driver-srv)


;//! \htmlinclude maintenance_srv-request.msg.html

(cl:defclass <maintenance_srv-request> (roslisp-msg-protocol:ros-message)
  ((userInput
    :reader userInput
    :initarg :userInput
    :type cl:string
    :initform ""))
)

(cl:defclass maintenance_srv-request (<maintenance_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maintenance_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maintenance_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_motor_controller_driver-srv:<maintenance_srv-request> is deprecated: use roboteq_motor_controller_driver-srv:maintenance_srv-request instead.")))

(cl:ensure-generic-function 'userInput-val :lambda-list '(m))
(cl:defmethod userInput-val ((m <maintenance_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:userInput-val is deprecated.  Use roboteq_motor_controller_driver-srv:userInput instead.")
  (userInput m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maintenance_srv-request>) ostream)
  "Serializes a message object of type '<maintenance_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'userInput))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'userInput))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maintenance_srv-request>) istream)
  "Deserializes a message object of type '<maintenance_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'userInput) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'userInput) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maintenance_srv-request>)))
  "Returns string type for a service object of type '<maintenance_srv-request>"
  "roboteq_motor_controller_driver/maintenance_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maintenance_srv-request)))
  "Returns string type for a service object of type 'maintenance_srv-request"
  "roboteq_motor_controller_driver/maintenance_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maintenance_srv-request>)))
  "Returns md5sum for a message object of type '<maintenance_srv-request>"
  "cf026a2baaf512cfffd561e78c18a0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maintenance_srv-request)))
  "Returns md5sum for a message object of type 'maintenance_srv-request"
  "cf026a2baaf512cfffd561e78c18a0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maintenance_srv-request>)))
  "Returns full string definition for message of type '<maintenance_srv-request>"
  (cl:format cl:nil "string userInput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maintenance_srv-request)))
  "Returns full string definition for message of type 'maintenance_srv-request"
  (cl:format cl:nil "string userInput~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maintenance_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'userInput))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maintenance_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'maintenance_srv-request
    (cl:cons ':userInput (userInput msg))
))
;//! \htmlinclude maintenance_srv-response.msg.html

(cl:defclass <maintenance_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass maintenance_srv-response (<maintenance_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <maintenance_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'maintenance_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name roboteq_motor_controller_driver-srv:<maintenance_srv-response> is deprecated: use roboteq_motor_controller_driver-srv:maintenance_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <maintenance_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader roboteq_motor_controller_driver-srv:result-val is deprecated.  Use roboteq_motor_controller_driver-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <maintenance_srv-response>) ostream)
  "Serializes a message object of type '<maintenance_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <maintenance_srv-response>) istream)
  "Deserializes a message object of type '<maintenance_srv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<maintenance_srv-response>)))
  "Returns string type for a service object of type '<maintenance_srv-response>"
  "roboteq_motor_controller_driver/maintenance_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maintenance_srv-response)))
  "Returns string type for a service object of type 'maintenance_srv-response"
  "roboteq_motor_controller_driver/maintenance_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<maintenance_srv-response>)))
  "Returns md5sum for a message object of type '<maintenance_srv-response>"
  "cf026a2baaf512cfffd561e78c18a0ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'maintenance_srv-response)))
  "Returns md5sum for a message object of type 'maintenance_srv-response"
  "cf026a2baaf512cfffd561e78c18a0ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<maintenance_srv-response>)))
  "Returns full string definition for message of type '<maintenance_srv-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'maintenance_srv-response)))
  "Returns full string definition for message of type 'maintenance_srv-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <maintenance_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <maintenance_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'maintenance_srv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'maintenance_srv)))
  'maintenance_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'maintenance_srv)))
  'maintenance_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'maintenance_srv)))
  "Returns string type for a service object of type '<maintenance_srv>"
  "roboteq_motor_controller_driver/maintenance_srv")