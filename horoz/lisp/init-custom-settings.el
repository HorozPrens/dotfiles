
(setq custom-file
      (expand-file-name "custom-settings.el" config-lisp-dir))


(if (file-exists-p custom-file )
    (load custom-file))


(provide 'init-custom-settings)
