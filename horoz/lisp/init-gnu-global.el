;;(require-package 'ggtags)

(add-hook 'c-mode-hook '(lambda ()
                          ;; (gtags-mode t)
			  (cond (*is-a-windows*
				 (lambda () (
					     (setq gtags-global-command "c:/bin/glo663wb/bin/global.exe")
					     ;;(setq ggtags-executable-directory "C:/bin/glo663wb/bin")
					     ))

				 )
				(*is-a-mac* (setq gtags-global-command "global")))
			  (setq gtags-suggested-key-mapping t)))


(provide 'init-gnu-global)
