
(require-package 'helm-gtags)
(require 'helm-gtags)



(general-define-key
 :keymaps 'helm-gtags-mode-map
 "M-n"  'helm-gtags-find-tag
 "M-o"  'helm-gtags-pop-stack) 

(add-hook 'c-mode-hook '(lambda ()
                          (helm-gtags-mode)))

(add-hook 'c++-mode-hook '(lambda ()
                          (helm-gtags-mode)))


(provide 'init-helm-gtags-mode)
