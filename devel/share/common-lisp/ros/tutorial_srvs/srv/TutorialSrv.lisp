; Auto-generated. Do not edit!


(cl:in-package tutorial_srvs-srv)


;//! \htmlinclude TutorialSrv-request.msg.html

(cl:defclass <TutorialSrv-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass TutorialSrv-request (<TutorialSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TutorialSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TutorialSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial_srvs-srv:<TutorialSrv-request> is deprecated: use tutorial_srvs-srv:TutorialSrv-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <TutorialSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_srvs-srv:command-val is deprecated.  Use tutorial_srvs-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TutorialSrv-request>) ostream)
  "Serializes a message object of type '<TutorialSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TutorialSrv-request>) istream)
  "Deserializes a message object of type '<TutorialSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TutorialSrv-request>)))
  "Returns string type for a service object of type '<TutorialSrv-request>"
  "tutorial_srvs/TutorialSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialSrv-request)))
  "Returns string type for a service object of type 'TutorialSrv-request"
  "tutorial_srvs/TutorialSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TutorialSrv-request>)))
  "Returns md5sum for a message object of type '<TutorialSrv-request>"
  "647560fa96f1c71577ff713e57e5f997")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TutorialSrv-request)))
  "Returns md5sum for a message object of type 'TutorialSrv-request"
  "647560fa96f1c71577ff713e57e5f997")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TutorialSrv-request>)))
  "Returns full string definition for message of type '<TutorialSrv-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TutorialSrv-request)))
  "Returns full string definition for message of type 'TutorialSrv-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TutorialSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TutorialSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TutorialSrv-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude TutorialSrv-response.msg.html

(cl:defclass <TutorialSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform "")
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass TutorialSrv-response (<TutorialSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TutorialSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TutorialSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tutorial_srvs-srv:<TutorialSrv-response> is deprecated: use tutorial_srvs-srv:TutorialSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <TutorialSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_srvs-srv:result-val is deprecated.  Use tutorial_srvs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <TutorialSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tutorial_srvs-srv:message-val is deprecated.  Use tutorial_srvs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TutorialSrv-response>) ostream)
  "Serializes a message object of type '<TutorialSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TutorialSrv-response>) istream)
  "Deserializes a message object of type '<TutorialSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TutorialSrv-response>)))
  "Returns string type for a service object of type '<TutorialSrv-response>"
  "tutorial_srvs/TutorialSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialSrv-response)))
  "Returns string type for a service object of type 'TutorialSrv-response"
  "tutorial_srvs/TutorialSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TutorialSrv-response>)))
  "Returns md5sum for a message object of type '<TutorialSrv-response>"
  "647560fa96f1c71577ff713e57e5f997")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TutorialSrv-response)))
  "Returns md5sum for a message object of type 'TutorialSrv-response"
  "647560fa96f1c71577ff713e57e5f997")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TutorialSrv-response>)))
  "Returns full string definition for message of type '<TutorialSrv-response>"
  (cl:format cl:nil "string result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TutorialSrv-response)))
  "Returns full string definition for message of type 'TutorialSrv-response"
  (cl:format cl:nil "string result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TutorialSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TutorialSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TutorialSrv-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TutorialSrv)))
  'TutorialSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TutorialSrv)))
  'TutorialSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TutorialSrv)))
  "Returns string type for a service object of type '<TutorialSrv>"
  "tutorial_srvs/TutorialSrv")