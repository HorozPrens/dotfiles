
(require-package 'org-bullets)
(setq org-ellipsis " ⤵")

(add-hook 'org-mode-hook (lambda ()
			   (setq org-src-fontify-natively t)
			   (setq org-hide-leading-stars t)
			   (setq org-agenda-files '("~/org/projects.org"))
			   (local-set-key (kbd "C-c e") 'org-edit-src-code)
			   (org-bullets-mode 1)))

(add-to-list 'org-structure-template-alist
             '("el" "#+BEGIN_SRC emacs-lisp\n?\n#+END_SRC"))

(provide 'init-org-mode)
