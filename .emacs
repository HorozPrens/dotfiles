(add-to-list 'load-path "~/.emacs.d")    ; This may not be appeared if you have already added.

(cond
 ((string-equal system-type "windows-nt") ; any flavor of Windows
  (message "i am running on Windows")
  (add-to-list 'load-path "C:/Users/czengin/Google Drive/emacs/")
  (load-library "_emacs-win.el")
  )
 ((string-equal system-type "gnu/linux")
  (message "i am running on gnu/linux")
  )
 ((string-equal system-type "darwin") ; Mac
  (message "i am running on Mac OS")
  (setq emacs-dir "/Users/cihangir/Google Drive/emacs/")
  (load-library "_emacs-mac.el")
  )
 )


(add-to-list 'load-path (getenv "HOME"))

(load-library "_emacs.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-delay 0.3)
 '(ac-use-fuzzy t)
 '(ag-ignore-list (quote ("*.bin")) t)
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(custom-safe-themes (quote ("2b61ea9798efa8c83169ac07099c07de840bd77a" default)))
 '(ecb-options-version "2.40")
 '(js2-strict-inconsistent-return-warning nil)
 '(longlines-auto-wrap nil)
 '(scss-compile-at-save nil)
 '(show-paren-mode t)
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-max-width 30)
 '(sr-speedbar-width-x 12)
 '(tab-width 2)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "yellow")))))


(set 'sr-speedbar-right-side nil)
;; (sr-speedbar-open)
(set 'speedbar-show-unknown-files t)
(set 'speedbar-update-flag nil)


(require 'custom-settings)
