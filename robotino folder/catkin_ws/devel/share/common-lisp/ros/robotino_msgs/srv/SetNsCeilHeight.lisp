; Auto-generated. Do not edit!


(cl:in-package robotino_msgs-srv)


;//! \htmlinclude SetNsCeilHeight-request.msg.html

(cl:defclass <SetNsCeilHeight-request> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetNsCeilHeight-request (<SetNsCeilHeight-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNsCeilHeight-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNsCeilHeight-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-srv:<SetNsCeilHeight-request> is deprecated: use robotino_msgs-srv:SetNsCeilHeight-request instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <SetNsCeilHeight-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-srv:height-val is deprecated.  Use robotino_msgs-srv:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNsCeilHeight-request>) ostream)
  "Serializes a message object of type '<SetNsCeilHeight-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNsCeilHeight-request>) istream)
  "Deserializes a message object of type '<SetNsCeilHeight-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNsCeilHeight-request>)))
  "Returns string type for a service object of type '<SetNsCeilHeight-request>"
  "robotino_msgs/SetNsCeilHeightRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNsCeilHeight-request)))
  "Returns string type for a service object of type 'SetNsCeilHeight-request"
  "robotino_msgs/SetNsCeilHeightRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNsCeilHeight-request>)))
  "Returns md5sum for a message object of type '<SetNsCeilHeight-request>"
  "a9048e8c46aa7a86c2a91424f7423dad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNsCeilHeight-request)))
  "Returns md5sum for a message object of type 'SetNsCeilHeight-request"
  "a9048e8c46aa7a86c2a91424f7423dad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNsCeilHeight-request>)))
  "Returns full string definition for message of type '<SetNsCeilHeight-request>"
  (cl:format cl:nil "float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNsCeilHeight-request)))
  "Returns full string definition for message of type 'SetNsCeilHeight-request"
  (cl:format cl:nil "float32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNsCeilHeight-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNsCeilHeight-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNsCeilHeight-request
    (cl:cons ':height (height msg))
))
;//! \htmlinclude SetNsCeilHeight-response.msg.html

(cl:defclass <SetNsCeilHeight-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetNsCeilHeight-response (<SetNsCeilHeight-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNsCeilHeight-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNsCeilHeight-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotino_msgs-srv:<SetNsCeilHeight-response> is deprecated: use robotino_msgs-srv:SetNsCeilHeight-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetNsCeilHeight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-srv:success-val is deprecated.  Use robotino_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetNsCeilHeight-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotino_msgs-srv:message-val is deprecated.  Use robotino_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNsCeilHeight-response>) ostream)
  "Serializes a message object of type '<SetNsCeilHeight-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNsCeilHeight-response>) istream)
  "Deserializes a message object of type '<SetNsCeilHeight-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNsCeilHeight-response>)))
  "Returns string type for a service object of type '<SetNsCeilHeight-response>"
  "robotino_msgs/SetNsCeilHeightResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNsCeilHeight-response)))
  "Returns string type for a service object of type 'SetNsCeilHeight-response"
  "robotino_msgs/SetNsCeilHeightResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNsCeilHeight-response>)))
  "Returns md5sum for a message object of type '<SetNsCeilHeight-response>"
  "a9048e8c46aa7a86c2a91424f7423dad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNsCeilHeight-response)))
  "Returns md5sum for a message object of type 'SetNsCeilHeight-response"
  "a9048e8c46aa7a86c2a91424f7423dad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNsCeilHeight-response>)))
  "Returns full string definition for message of type '<SetNsCeilHeight-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNsCeilHeight-response)))
  "Returns full string definition for message of type 'SetNsCeilHeight-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNsCeilHeight-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNsCeilHeight-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNsCeilHeight-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNsCeilHeight)))
  'SetNsCeilHeight-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNsCeilHeight)))
  'SetNsCeilHeight-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNsCeilHeight)))
  "Returns string type for a service object of type '<SetNsCeilHeight>"
  "robotino_msgs/SetNsCeilHeight")