
(require-package 'auto-complete)
(require 'auto-complete)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")

(ac-config-default)

(defun set-ac-sources()
  (setq ac-sources '(ac-source-yasnippet
                     ac-source-abbrev
                     ac-source-dictionary
                     ac-source-words-in-same-mode-buffers))) 

;; (add-hook 'web-mode-hook 'set-ac-sources)
(add-hook 'prog-mode-hook 'set-ac-sources)


(ac-set-trigger-key "TAB")
(ac-set-trigger-key "<tab>")

(provide 'init-auto-complete)
