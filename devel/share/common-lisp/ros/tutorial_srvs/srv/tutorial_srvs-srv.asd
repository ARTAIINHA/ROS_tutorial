
(cl:in-package :asdf)

(defsystem "tutorial_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TutorialSrv" :depends-on ("_package_TutorialSrv"))
    (:file "_package_TutorialSrv" :depends-on ("_package"))
  ))