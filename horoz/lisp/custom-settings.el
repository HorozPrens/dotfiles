(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "713f898dd8c881c139b62cf05b7ac476d05735825d49006255c0a31f9a4f46ab" "a8c210aa94c4eae642a34aaf1c5c0552855dfca2153fa6dd23f3031ce19453d4" default)))
 '(package-selected-packages
   (quote
    (helm-gtags company-irony irony all-the-icons neotree org-bullets auto-complete spaceline web-mode tide ace-jump-mode company yasnippet expand-region switch-window helm-ag helm-swoop helm-projectile general projectile ibuffer-projectile evil scratch exec-path-from-shell fullframe seq doom-themes rjsx-mode dracula-theme rtags cmake-ide smartparens use-package company-quickhelp aggressive-indent helm evil-leader)))
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "dist" "build")))
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
