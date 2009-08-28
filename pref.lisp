
;;; pref.lisp

(defpackage :rulisp.preferences
  (:use :cl)
  (:export #:*rulisp-path*
           #:*skindir*
           #:*rulisp-db*
           #:*host*
           #:*cookie-cipher-key*
           #:*noreply-mail-account*
           #:*vardir*
           #:*reCAPTCHA.publick-key*
           #:*reCAPTCHA.privake-key*
           #:*default-skin*
           #:*pcl-dir*
           #:*wiki-dir*
           #:*pcl-snapshot-url*
           #:*pcl-snapshot-dir*
           #:*pcl-load-snapshot-p*))

(in-package :rulisp.preferences)

(defparameter *vardir* #P"/var/rulisp/")

(defparameter *rulisp-path* (asdf:component-pathname (asdf:find-system  :rulisp)))

(defparameter *skindir* (merge-pathnames "static/skins/" *rulisp-path*))

(defparameter *default-theme* "archimag")

(defparameter *rulisp-db* '("rulisp" "lisp" "123" "localhost"))

(defparameter *host* "localhost:8080")

(defparameter *cookie-cipher-key* (ironclad:ascii-string-to-byte-array "Specify the secure key"))

(defparameter *noreply-mail-account* "noreply@lisper.ru")

(defvar *reCAPTCHA.publick-key* "6LdZjAcAAAAAAGh_MzHcHfJWp6rpI0XUNghGQB1f")
(defvar *reCAPTCHA.privake-key* "6LdZjAcAAAAAAKJ2GPWTHPh1H1Foc0kyfbwgrFgO")

(defparameter *default-skin* "fine")

(defparameter *pcl-dir* #P"/var/www/localhost/htdocs/dokuwiki/data/pages/pcl/")

(defparameter *pcl-snapshot-url* #u"http://pcl.catap.ru/snapshot.zip")

(defparameter *pcl-snapshot-dir* #P"/var/rulisp/pcl/")

(defparameter *pcl-load-snapshot-p* nil)


(defparameter *wiki-dir* #P"/var/rulisp/wiki/")

