
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
;;(setq scss-compile-at-save t)


(defun ins-sass-curly ()
  (interactive)
  (insert " {\n\n}")
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))


(general-define-key
 :keymaps 'scss-mode-map
 "{"  'ins-sass-curly)


(provide 'init-sass-mode)
