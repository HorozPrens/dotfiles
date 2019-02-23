
(dolist (command '(yank yank-pop evil-paste-before evil-paste-after))
     (eval `(defadvice ,command (after indent-region activate)
		(and (not current-prefix-arg)
		     (member major-mode '(emacs-lisp-mode lisp-mode kotlin-mode
							  clojure-mode    scheme-mode
							  haskell-mode    ruby-mode
							  rspec-mode      python-mode
							  c-mode          c++-mode
							  objc-mode       latex-mode
							  plain-tex-mode  web-mode))
		     (let ((mark-even-if-inactive transient-mark-mode))
		       (indent-region (region-beginning) (region-end) nil))))))


(provide 'init-format-on-paste)
