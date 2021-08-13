(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auth-sources '("~/.authinfo"))
 '(auto-save-default nil)
 '(custom-enabled-themes '(doom-one))
 '(custom-safe-themes t)
 '(default-frame-alist '((width . 200) (height . 60)))
 '(doom-modeline-mode t)
 '(envrc-global-mode t)
 '(evil-mode t)
 '(evil-undo-system 'undo-fu)
 '(evil-want-C-w-in-emacs-state t)
 '(flycheck-python-mypy-config '("mypy.ini" "setup.cfg" "pyproject.toml"))
 '(global-company-mode t)
 '(helm-boring-buffer-regexp-list '("\\` " "\\`\\*" "magit:" "magit-process:"))
 '(helm-ff-skip-boring-files t)
 '(helm-mode t)
 '(inhibit-startup-echo-area-message "alxdb")
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(mac-command-modifier 'super)
 '(mac-option-modifier 'meta)
 '(make-backup-files nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(envrc forge doom-modeline eglot flycheck poetry company markdown-mode which-key vterm undo-fu helm projectile magit doom-themes evil))
 '(projectile-mode t nil (projectile))
 '(projectile-use-git-grep t)
 '(python-indent-def-block-scale 1)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tetris-x-colors
   [[229 192 123]
    [97 175 239]
    [209 154 102]
    [224 108 117]
    [152 195 121]
    [198 120 221]
    [86 182 194]])
 '(tool-bar-mode nil)
 '(which-key-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#242730" :foreground "#bbc2cf" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Iosevka")))))
