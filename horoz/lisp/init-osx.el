(when (eq system-type 'darwin)
     (setq mac-command-modifier 'meta)
     (setq mac-option-modifier 'none)
     (setq-default default-input-method "MacOSX"))

(provide 'init-osx)