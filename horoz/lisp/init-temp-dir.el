
;;set temp dir 
(defvar  config-temp-dir (expand-file-name "temp/" dotfiles-config-dir))
(unless (file-exists-p config-temp-dir)
  (make-directory config-temp-dir))

(setq temporary-file-directory config-temp-dir)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


(provide 'init-temp-dir)
