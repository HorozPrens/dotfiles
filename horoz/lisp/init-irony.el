
(require-package 'irony)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook
          (lambda ()
            (define-key irony-mode-map [remap completion-at-point]
              'irony-completion-at-point-async)
            (define-key irony-mode-map [remap complete-symbol]
              'irony-completion-at-point-async)))

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)





(provide 'init-irony)
