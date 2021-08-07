;; Global
(global-set-key (kbd "s-s") #'save-buffer)

;; Evil
(require 'evil)
(evil-set-initial-state 'vterm-mode 'emacs)

;; Projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

;; Helm
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)

;;; Python
; use mypy via flycheck rather than eglot
(add-hook 'python-mode 'flycheck-mode)

;; Load customizations from custom.el
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)
