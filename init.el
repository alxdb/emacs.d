;;; init.el
;;;
;;; emacs specific configuration goes here, anything related to external packages goes in
;;; config.org

;; change default output locations of autosave/backup
(setq backup-directory-alist `((".*" . ,(locate-user-emacs-file ".backups"))))
(setq auto-save-list-file-prefix (locate-user-emacs-file ".auto-saves/"))
(setq auto-save-file-name-transforms `((".*" ,(locate-user-emacs-file ".auto-saves/") t)))

;; add melpa, and relocate package directory
(setq package-user-dir (locate-user-emacs-file ".packages"))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; start server after init finished
(add-hook 'after-init-hook 'server-start)

;; random scratch messages
(defvar scratch-messages '("I wish only to serve"
			   "Thy bidding, master?"
			   "I bow to your will"
			   "I gladly obey"
			   "Thy will be done"))
(setq initial-scratch-message
      (let ((index (random (length scratch-messages))))
	(concat ";; " (nth index scratch-messages) "\n\n")))

;; keeps this file clear of customizations
(setq custom-file (locate-user-emacs-file ".custom.el"))
(load custom-file)

;; literate config (use for configuring packages)
(defun alxdb/tangle-config ()
  (async-start
   (lambda ()
     (package-initialize)
     (require 'org)
     (org-babel-tangle-file
      (locate-user-emacs-file "config.org")
      (locate-user-emacs-file ".config.el")
      "emacs-lisp")
     (byte-compile-file (locate-user-emacs-file ".config.el")))))
(load (locate-user-emacs-file ".config"))

;; Local Variables:
;; fill-column: 90
;; End:
