
(setq-default frame-title-format
              '(:eval
                (format "[%s] %s"

                        (projectile-project-name)

                        (cond
                         (buffer-file-truename
                          (concat "  (" buffer-file-truename ")"))
                         (dired-directory
                          (concat "  {" dired-directory "}"))
                         (t
                          "[no file]")))))


(provide 'init-title-format)