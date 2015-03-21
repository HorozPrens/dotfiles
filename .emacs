(require 'package)
(add-to-list 'package-archives
			 '("marmalade" .
			   "http://marmalade-repo.org/packages/"))

(add-to-list 'package-archives
			 '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.5)
 '(ac-use-fuzzy t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(custom-safe-themes (quote ("2b61ea9798efa8c83169ac07099c07de840bd77a" default)))
 '(ecb-options-version "2.40")
 '(js2-strict-inconsistent-return-warning nil)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "yellow"))))
 '(web-mode-html-tag-face ((t (:foreground "orange1")))))


(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq indent-line-function 'insert-tab)

(setq-default truncate-lines 1)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;;(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/Google Drive/emacs")
(load-library "_emacs-mac.el")



(setq exec-path (append exec-path '("/usr/local/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/Users/cihangir/android-ndk-r10"))
(setenv "PATH" (concat (getenv "PATH") ":/Users/cihangir/projects/go/bin"))
(setq mac-option-modifier 'nil)
(setq mac-command-modifier 'meta)
(setenv "PS1" "[\\w] $ ")
