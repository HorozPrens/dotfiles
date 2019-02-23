(defconst *is-a-windows* (eq system-type 'windows-nt))
(defconst *is-a-mac* (eq system-type 'darwin))

(defvar  dotfiles-horoz-dir "~/dotfiles/horoz")
(add-to-list 'load-path (expand-file-name "lisp" dotfiles-horoz-dir))

(setq custom-file (expand-file-name "custom-settings.el" (expand-file-name "lisp" dotfiles-horoz-dir)))
(if (file-exists-p custom-file )
 (load custom-file))

(require 'init-elpa) ;; Machinery for installing required packages
(require 'init-benchmarking)

(require 'init-utils)
    (require 'init-exec-path)

    (require-package 'scratch)
  ;;  (require-package 'helm)
 ;;   (require-package 'general)
;;    (require-package 'projectile)

    (require 'init-osx)
    (require 'init-evil)
    (require 'init-evil-leader)
    (require 'init-helm)
    (require 'init-projectile)
    (require 'init-helm-projectile)

    (require 'init-start-up)
    (require 'init-emacs-vars)
    (require 'init-line-numbers)
    (require 'init-title-format)

    (require 'init-theme)
    (require 'init-switch-window)
    (require 'init-code-folding)
    (require 'init-expand-region)
    (require 'init-helm-swoop)

    (require 'init-yasnippet)
    (require 'init-ace-jump)
    (require 'init-format-on-paste)
    (require 'init-aggressive-indent)
    (require 'init-typescript-mode)

    (require 'init-web-mode)
    (require 'init-spaceline)
    (require 'init-c-style)
    (require 'init-auto-complete)
    (require 'init-org-mode)
    (require 'init-neotree)


    (require 'init-global-keys)
