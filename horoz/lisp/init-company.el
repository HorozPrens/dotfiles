
(setq tab-always-indent 'complete)
(add-to-list 'completion-styles 'initials t)

(when (maybe-require-package 'company)
  
  (add-hook 'after-init-hook 'global-company-mode)

   (after-load 'company
     (dolist (backend '(company-eclim company-semantic))
       (delq backend company-backends))
     (setq-default company-dabbrev-other-buffers 'all
                   company-tooltip-align-annotations t))

)


(provide 'init-company)
