;; custom functions
(defun emacs-conf-file (filename)
  (concat user-emacs-directory filename))

(defun adb/open-init-file ()
  (interactive)
  (find-file (emacs-conf-file "init.el")))

;; seperate file for customizations
(setq custom-file (emacs-conf-file "custom.el"))
(load custom-file)

;; add melpa to package repositories
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; theme
(load-theme 'nord)

;; evil
(require 'evil)
(evil-mode)

;; magit
(require 'magit)

;; hooks
(add-hook 'help-mode-hook 'form-feed-mode)
(add-hook 'compilation-mode-hook 'form-feed-mode)
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(defun set-evil-lookup-func ()
  (setq-local evil-lookup-func
	      (lambda () (describe-symbol (symbol-at-point)))))
(add-hook 'emacs-lisp-mode-hook 'set-evil-lookup-func)
(add-hook 'after-init-hook 'global-company-mode)

;; keybindings
(global-unset-key (kbd "C-M-i"))
(global-set-key (kbd "C-M-i") 'company-complete)
