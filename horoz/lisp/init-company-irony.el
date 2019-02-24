

(require-package 'company-irony)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))

(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
(add-hook 'irony-mode-hook 'company-mode)


(provide 'init-company-irony)
