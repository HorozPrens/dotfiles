(when (maybe-require-package 'projectile)
(global-evil-leader-mode)
(setq evil-leader/in-all-states t)
(evil-leader/set-leader "SPC")

)


(provide 'init-evil-leader)