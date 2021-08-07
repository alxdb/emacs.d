;; evil
(require 'evil)
(evil-set-initial-state 'vterm-mode 'emacs)

;; projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

;; helm
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x f") #'helm-find-files)

;; load from custom.el
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)
