(asdf:defsystem #:sleepy-escarpment
  :serial t
  :description "Example cl-heroku application"
  :depends-on (#:hunchentoot
	       #:cl-who
	       #:postmodern)
  :components ((:file "package")
	       (:module :src
			:serial t      
			:components ((:file "main")))))

