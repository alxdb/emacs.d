(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying-when-linked t)
 '(c-offsets-alist (quote ((inlambda . 10))))
 '(ccls-sem-highlight-method (quote font-lock))
 '(column-number-mode t)
 '(compilation-scroll-output (quote first-error))
 '(cursor-type (quote hbar))
 '(custom-enabled-themes (quote (gruvbox-dark-hard)))
 '(custom-safe-themes
   (quote
    ("4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" default)))
 '(eww-download-directory "~/")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(lsp-enable-semantic-highlighting t)
 '(lsp-modeline-code-actions-enable nil)
 '(lsp-rust-server (quote rust-analyzer))
 '(menu-bar-mode nil)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (python . t))))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (cider rust-mode cmake-mode company-glsl glsl-mode ace-window evil-commentary projectile flycheck clang-format company-lsp ccls helm rainbow-delimiters company-box company lsp-mode magit async writeroom-mode evil gruvbox-theme)))
 '(paradox-github-token t)
 '(projectile-completion-system (quote helm))
 '(projectile-indexing-method (quote hybrid))
 '(safe-local-variable-values
   (quote
    ((eval add-hook
           (quote rust-mode-hook)
           (function lsp))
     (eval progn
           (setq-local ccls-initialization-options
                       (\`
                        (:compilationDatabaseDirectory
                         (\, projectile-project-compilation-dir)
                         :cache
                         (:directory
                          (\,
                           (concat projectile-project-compilation-dir "/.ccls-cache"))))))
           (add-hook
            (quote c++-mode-hook)
            (quote lsp)))
     (eval add-hook
           (quote after-save-hook)
           (quote alxdb/tangle-config))
     (ccls-initialization-options :compilationDatabaseDirectory "cmake-build-debug" :cache
                                  (:directory "cmake-build-debug/.ccls-cache"))
     (projectile-project-configure-cmd . "cmake -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../")
     (eval add-hook
           (quote c++-mode-hook)
           (quote lsp))
     (projectile-project-configure-cmd . "cmake -DCMAKE_CXX_COMPILER=clang -DCMAKE_BUILD_TYPE=DEBUG -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../")
     (projectile-project-compilation-dir . "cmake-build-debug"))))
 '(scroll-bar-mode nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(transient-history-file "~/.emacs.d/.transient/history.el")
 '(transient-levels-file "~/.emacs.d/.transient/levels.el")
 '(transient-values-file "~/.emacs.d/.transient/values.el")
 '(writeroom-fringes-outside-margins nil)
 '(writeroom-global-effects nil)
 '(writeroom-header-line t)
 '(writeroom-maximize-window nil)
 '(writeroom-mode-line t)
 '(writeroom-width 120))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#ebdbb2" :family "Iosevka"))))
 '(custom-themed ((t (:inherit highlight))))
 '(fixed-pitch-serif ((t (:weight light :family "Monospace"))))
 '(font-lock-comment-face ((t (:foreground "#7c6f64" :slant italic))))
 '(helm-ff-directory ((t (:foreground "#83a598"))))
 '(helm-ff-executable ((t (:foreground "#b8bb26"))))
 '(helm-ff-file ((t (:foreground "#ebdbb2" :slant normal))))
 '(helm-ff-file-extension ((t nil)))
 '(helm-ff-symlink ((t (:foreground "#87af87" :slant italic))))
 '(mode-line ((t (:background "#32302f" :foreground "#ebdbb2"))))
 '(mode-line-inactive ((t (:background "#282828" :foreground "#665c54"))))
 '(org-level-1 ((t nil))))
