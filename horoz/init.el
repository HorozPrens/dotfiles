;; Produce backtraces when errors occur
(setq debug-on-error t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)


(defconst *is-a-windows* (eq system-type 'windows-nt))
(defconst *is-a-mac* (eq system-type 'darwin))

(defvar  dotfiles-config-dir "~/dotfiles/horoz")
(unless (file-exists-p dotfiles-config-dir)
  (make-directory dotfiles-config-dir))

(defvar  config-lisp-dir (expand-file-name "lisp" dotfiles-config-dir))
(unless (file-exists-p config-lisp-dir)
  (make-directory config-lisp-dir))

(add-to-list 'load-path config-lisp-dir)


(require 'init-temp-dir)
(require 'init-custom-settings)
(require 'init-start-up)
(require 'init-emacs-vars)
(require 'init-line-numbers)
(require 'init-title-format)


(require 'init-elpa) ;; Machinery for installing required packages
(require 'init-benchmarking);;benchmarking


(require 'init-utils)
(require 'init-exec-path)

(require-package 'scratch)

(require 'init-osx)
(require 'init-evil)
(require 'init-evil-leader)
(require 'init-general)

(require 'init-helm)
(require 'init-projectile)
(require 'init-helm-projectile)
(require 'init-helm-swoop)
(require 'init-helm-ag)
(require 'init-ag)

(require 'init-theme)
(require 'init-switch-window)
(require 'init-code-folding)
(require 'init-expand-region)

(require 'init-yasnippet)
(require 'init-ace-jump)
(require 'init-format-on-paste)
;; (require 'init-aggressive-indent)
(require 'init-typescript-mode)

(require 'init-web-mode)
(require 'init-spaceline)
(require 'init-c-style)
(require 'init-auto-complete)
(require 'init-org-mode)
(require 'init-neotree)

(require 'init-company)
(require 'init-irony)
(require 'init-company-irony)

(require 'init-sass-mode)
(require 'init-cmake-ide)
(require 'init-cmake-mode)
;;(require 'init-gnu-global)
(require 'init-helm-gtags-mode)
;;(require 'init-smartparens)
(require 'init-c-mode)
(require 'init-lorem-ipsum)

(require 'init-global-keys)



