;; Global
(global-set-key (kbd "s-s") #'save-buffer)

;; Evil
(require 'evil)
(evil-set-initial-state 'vterm-mode 'emacs)
(evil-set-initial-state 'xref--xref-buffer-mode 'emacs)

;; Projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)

;; Helm
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x b") #'helm-buffers-list)

;; Magit
(with-eval-after-load 'magit
  (require 'forge))

;; Eglot
(defun format-buffer-before-save ()
  (add-hook 'before-save-hook #'eglot-format-buffer nil t))

;;; Python
(defun alxdb/python-hook ()
  (eglot-ensure)
  (flycheck-mode) ; https://github.com/Richardk2n/pylsp-mypy/issues/16
  (set-fill-column 99)
  (display-fill-column-indicator-mode)
  (format-buffer-before-save)
  (when (executable-find "ipython")
    (setq python-shell-interpreter "ipython")))

(add-hook 'python-mode-hook #'alxdb/python-hook)

;; Load customizations from custom.el
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file)
(server-start)
