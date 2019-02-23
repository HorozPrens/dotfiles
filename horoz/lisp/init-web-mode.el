
(require-package 'web-mode)

(setq web-mode-ac-source-alist
      '(("css" . (ac-source-css-property))
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
(setq web-mode-enable-current-element-highlight t)
;; (setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-auto-closing t)

(add-auto-mode 'web-mode "\\.html?\\'")


(provide 'init-web-mode)
