
(require-package 'projectile)
(add-hook 'after-init-hook 'projectile-mode)

;; Shorter modeline
(setq-default projectile-mode-line-prefix " Proj")

(evil-define-key 'normal projectile-mode-map (kbd "SPC p") 'projectile-command-map)


(maybe-require-package 'ibuffer-projectile)
(setq projectile-completion-system 'helm)

(provide 'init-projectile)
