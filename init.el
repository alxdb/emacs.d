(defun emacs-conf-file (filename)
  (concat user-emacs-directory filename))

(defun open-init-file ()
  (interactive)
  (find-file (emacs-conf-file "init.el")))

(setq custom-file (emacs-conf-file "custom.el"))
(load custom-file)

(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(load-theme 'nord)

(require 'evil)
(evil-mode)
