;; Auto-generated. Do not edit!


(when (boundp 'robotino_msgs::SetNsCeilHeight)
  (if (not (find-package "ROBOTINO_MSGS"))
    (make-package "ROBOTINO_MSGS"))
  (shadow 'SetNsCeilHeight (find-package "ROBOTINO_MSGS")))
(unless (find-package "ROBOTINO_MSGS::SETNSCEILHEIGHT")
  (make-package "ROBOTINO_MSGS::SETNSCEILHEIGHT"))
(unless (find-package "ROBOTINO_MSGS::SETNSCEILHEIGHTREQUEST")
  (make-package "ROBOTINO_MSGS::SETNSCEILHEIGHTREQUEST"))
(unless (find-package "ROBOTINO_MSGS::SETNSCEILHEIGHTRESPONSE")
  (make-package "ROBOTINO_MSGS::SETNSCEILHEIGHTRESPONSE"))

(in-package "ROS")





(defclass robotino_msgs::SetNsCeilHeightRequest
  :super ros::object
  :slots (_height ))

(defmethod robotino_msgs::SetNsCeilHeightRequest
  (:init
   (&key
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass robotino_msgs::SetNsCeilHeightResponse
  :super ros::object
  :slots (_success _message ))

(defmethod robotino_msgs::SetNsCeilHeightResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass robotino_msgs::SetNsCeilHeight
  :super ros::object
  :slots ())

(setf (get robotino_msgs::SetNsCeilHeight :md5sum-) "a9048e8c46aa7a86c2a91424f7423dad")
(setf (get robotino_msgs::SetNsCeilHeight :datatype-) "robotino_msgs/SetNsCeilHeight")
(setf (get robotino_msgs::SetNsCeilHeight :request) robotino_msgs::SetNsCeilHeightRequest)
(setf (get robotino_msgs::SetNsCeilHeight :response) robotino_msgs::SetNsCeilHeightResponse)

(defmethod robotino_msgs::SetNsCeilHeightRequest
  (:response () (instance robotino_msgs::SetNsCeilHeightResponse :init)))

(setf (get robotino_msgs::SetNsCeilHeightRequest :md5sum-) "a9048e8c46aa7a86c2a91424f7423dad")
(setf (get robotino_msgs::SetNsCeilHeightRequest :datatype-) "robotino_msgs/SetNsCeilHeightRequest")
(setf (get robotino_msgs::SetNsCeilHeightRequest :definition-)
      "float32 height
---
bool success
string message
")

(setf (get robotino_msgs::SetNsCeilHeightResponse :md5sum-) "a9048e8c46aa7a86c2a91424f7423dad")
(setf (get robotino_msgs::SetNsCeilHeightResponse :datatype-) "robotino_msgs/SetNsCeilHeightResponse")
(setf (get robotino_msgs::SetNsCeilHeightResponse :definition-)
      "float32 height
---
bool success
string message
")



(provide :robotino_msgs/SetNsCeilHeight "a9048e8c46aa7a86c2a91424f7423dad")


