(in-package :sleepy-escarpment)

;; Utils
(defun heroku-getenv (target)
  #+ccl (ccl:getenv target)
  
(defun heroku-slug-dir ()
  (heroku-getenv "HOME"))

;; Handlers

(push (hunchentoot:create-folder-dispatcher-and-handler "/static/" (concatenate 'string (heroku-slug-dir) "/public/")) hunchentoot:*dispatch-table*)

(hunchentoot:define-easy-handler (hello :uri "/") ()
  (cl-who:with-html-output-to-string (s)
    (:html
     (:head
      (:title "Heroku CL Example"))
     (:body
      (:h1 "Heroku CL Example")
      (:div
       (:a :href "static/lisp-glossy.jpg" (:img :src "static/lisp-glossy.jpg" :width 100)))))))
