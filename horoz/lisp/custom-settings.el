(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (helm-gtags rtags cmake-ide company-irony irony all-the-icons neotree org-bullets auto-complete spaceline web-mode tide ace-jump-mode company yasnippet expand-region switch-window dracula-theme helm-ag helm-swoop helm-projectile general projectile ibuffer-projectile evil scratch exec-path-from-shell fullframe seq smartparens use-package company-quickhelp aggressive-indent helm evil-leader)))
 '(safe-local-variable-values
   (quote
    ((eval setq cmake-ide-build-dir
	   (concat
	    (projectile-project-root)
	    "build-make"))
     (eval setq cmake-ide-build-dir
	   (concat my-project-path "build"))
     (cmake-ide-project-dir . my-project-path)
     (eval set
	   (make-local-variable
	    (quote my-project-path))
	   (file-name-directory
	    (let
		((d
		  (dir-locals-find-file ".")))
	      (if
		  (stringp d)
		  d
		(car d)))))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
