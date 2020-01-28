(when (maybe-require-package 'evil)
  (maybe-require-package 'ibuffer-projectile)

  (evil-mode 1)
  (evil-define-command evil-escape-f ()
    :repeat change
    (interactive)
    (let ((modified (buffer-modified-p)))
      (insert "j")
      (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
			     nil 0.5)))
	(cond
	 ((null evt) (message ""))
	 ((and (integerp evt) (char-equal evt ?j))
	  (delete-char -1)
	  (set-buffer-modified-p modified)
	  (push 'escape unread-command-events))
	 (t (setq unread-command-events (append unread-command-events
						(list evt))))))))

  (define-key evil-insert-state-map "j" #'evil-escape-f))


;;https://www.reddit.com/r/emacs/comments/7dsm0j/how_to_get_evilmode_hjkl_to_work_inside_mx/
(with-eval-after-load 'evil
  ;; use evil mode in the buffer created from calling `list-packages'.
  (add-to-list 'evil-buffer-regexps '("*Packages*" . normal))

  (with-eval-after-load 'package
    ;; movement keys j,k,l,h set up for free by defaulting to normal mode.
    ;; mark, unmark, install
    (evil-define-key 'normal package-menu-mode-map (kbd "m") #'package-menu-mark-install)
    (evil-define-key 'normal package-menu-mode-map (kbd "u") #'package-menu-mark-unmark)
    (evil-define-key 'normal package-menu-mode-map (kbd "x") #'package-menu-execute)))



(provide 'init-evil)
