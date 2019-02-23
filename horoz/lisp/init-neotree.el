

(require-package 'neotree)
(require-package 'all-the-icons)

(require 'all-the-icons)


(defun neotree-project-root-dir-or-current-dir ()
  "Open NeoTree using the project root, using projectile, or the
current buffer directory."
  (interactive)
  (let ((project-dir (ignore-errors (projectile-project-root)))
        (file-name (buffer-file-name))
        (neo-smart-open t))
    (if (neo-global--window-exists-p)
        (neotree-hide)
      (progn
        (neotree-show)
        (if project-dir
            (neotree-dir project-dir))
        (if file-name
            (neotree-find file-name))))))

(add-hook 'neotree-mode-hook
	  (lambda ()
	    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
	    (setq neo-window-fixed-size nil)
	    (setq neo-smart-open t)
	    (setq fit-window-to-buffer-horizontally t)
	    (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
	    (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
	    (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))



(provide 'init-neotree)
