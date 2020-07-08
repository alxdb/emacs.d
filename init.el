;; change default output locations of autosave/backup
(setq backup-directory-alist `((".*" . ,(locate-user-emacs-file ".backups"))))
(setq auto-save-list-file-prefix (locate-user-emacs-file ".auto-saves/"))
(setq auto-save-file-name-transforms `((".*" ,(locate-user-emacs-file ".auto-saves/") t)))

;; add melpa, and relocate package directory
(setq package-user-dir (locate-user-emacs-file ".packages"))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; keeps this file clear of customizations
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file)

;; start server
(server-start)
