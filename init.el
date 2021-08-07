(require 'evil)

(evil-set-initial-state 'term-mode 'emacs)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(custom-enabled-themes '(doom-vibrant))
 '(custom-safe-themes t)
 '(default-frame-alist '((width . 200) (height . 60)))
 '(evil-mode t)
 '(evil-want-C-w-in-emacs-state t)
 '(inhibit-startup-echo-area-message "alxdb")
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages '(projectile magit doom-themes evil))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
