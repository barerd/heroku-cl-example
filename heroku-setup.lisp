(in-package :cl-user)

(print ">>> Building system....")

(load (merge-pathnames "main.asd" *build-dir*))

(ql:quickload :sleepy-escarpment)

;;; Redefine / extend heroku-toplevel here if necessary.

(print ">>> Done building system")
