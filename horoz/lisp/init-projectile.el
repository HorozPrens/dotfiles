
(require-package 'projectile)
(add-hook 'after-init-hook 'projectile-mode)

;; Shorter modeline
(setq-default projectile-mode-line-prefix " Proj")

(evil-define-key 'normal projectile-mode-map (kbd "SPC p") 'projectile-command-map)
(setq projectile-indexing-method 'native)

(maybe-require-package 'ibuffer-projectile)
(setq projectile-completion-system 'helm)


(defun my-projectile-run-project (&optional prompt)
  (interactive "P")
  (let ((compilation-read-command
         (or (not (projectile-run-command (projectile-compilation-dir)))
             prompt)))
    (projectile-run-project prompt)))

(setq projectile-enable-caching t)

(provide 'init-projectile)
