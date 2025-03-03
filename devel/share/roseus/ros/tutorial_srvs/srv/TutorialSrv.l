;; Auto-generated. Do not edit!


(when (boundp 'tutorial_srvs::TutorialSrv)
  (if (not (find-package "TUTORIAL_SRVS"))
    (make-package "TUTORIAL_SRVS"))
  (shadow 'TutorialSrv (find-package "TUTORIAL_SRVS")))
(unless (find-package "TUTORIAL_SRVS::TUTORIALSRV")
  (make-package "TUTORIAL_SRVS::TUTORIALSRV"))
(unless (find-package "TUTORIAL_SRVS::TUTORIALSRVREQUEST")
  (make-package "TUTORIAL_SRVS::TUTORIALSRVREQUEST"))
(unless (find-package "TUTORIAL_SRVS::TUTORIALSRVRESPONSE")
  (make-package "TUTORIAL_SRVS::TUTORIALSRVRESPONSE"))

(in-package "ROS")





(defclass tutorial_srvs::TutorialSrvRequest
  :super ros::object
  :slots (_command ))

(defmethod tutorial_srvs::TutorialSrvRequest
  (:init
   (&key
    ((:command __command) "")
    )
   (send-super :init)
   (setq _command (string __command))
   self)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; string _command
    4 (length _command)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _command
       (write-long (length _command) s) (princ _command s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _command
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _command (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tutorial_srvs::TutorialSrvResponse
  :super ros::object
  :slots (_result _message ))

(defmethod tutorial_srvs::TutorialSrvResponse
  (:init
   (&key
    ((:result __result) "")
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result (string __result))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass tutorial_srvs::TutorialSrv
  :super ros::object
  :slots ())

(setf (get tutorial_srvs::TutorialSrv :md5sum-) "647560fa96f1c71577ff713e57e5f997")
(setf (get tutorial_srvs::TutorialSrv :datatype-) "tutorial_srvs/TutorialSrv")
(setf (get tutorial_srvs::TutorialSrv :request) tutorial_srvs::TutorialSrvRequest)
(setf (get tutorial_srvs::TutorialSrv :response) tutorial_srvs::TutorialSrvResponse)

(defmethod tutorial_srvs::TutorialSrvRequest
  (:response () (instance tutorial_srvs::TutorialSrvResponse :init)))

(setf (get tutorial_srvs::TutorialSrvRequest :md5sum-) "647560fa96f1c71577ff713e57e5f997")
(setf (get tutorial_srvs::TutorialSrvRequest :datatype-) "tutorial_srvs/TutorialSrvRequest")
(setf (get tutorial_srvs::TutorialSrvRequest :definition-)
      "string command
---
string result
string message

")

(setf (get tutorial_srvs::TutorialSrvResponse :md5sum-) "647560fa96f1c71577ff713e57e5f997")
(setf (get tutorial_srvs::TutorialSrvResponse :datatype-) "tutorial_srvs/TutorialSrvResponse")
(setf (get tutorial_srvs::TutorialSrvResponse :definition-)
      "string command
---
string result
string message

")



(provide :tutorial_srvs/TutorialSrv "647560fa96f1c71577ff713e57e5f997")


