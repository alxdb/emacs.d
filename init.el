(require 'evil)
(evil-set-initial-state 'vterm-mode 'emacs)

(require 'projectile)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)
