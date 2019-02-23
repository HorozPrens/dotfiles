(setq buffer-save-without-query t)
(fset 'yes-or-no-p 'y-or-n-p)
(global-auto-revert-mode t)
(show-paren-mode)
(setq load-prefer-newer t)
;; reduce the frequency of garbage collection by making it happen on
;; each 50MB of allocated data (the default is on every 0.76MB)
(setq gc-cons-threshold 50000000)

;; warn when opening files bigger than 100MB
(setq large-file-warning-threshold 100000000)
(which-function-mode 1)


(provide 'init-emacs-vars)
