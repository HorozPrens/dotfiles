(defun ins-c++-curly ()
  "Insert {}.
Threat is as function body when from endline before )"
  (interactive)
  (if (looking-back "\\()\\|try\\|else\\|const\\|:\\)$")
      (progn
        (insert " {\n\n}")
        (indent-according-to-mode)
        (forward-line -1)
        (indent-according-to-mode))
    (insert "{}")
    (backward-char)))

(defun ins-c++-curvy ()
  "Insert {}.
Threat is as function body when from endline before )"
  (interactive)
  (insert "( )")
  ;; (backward-char)
  (backward-char))


(defun close-c++-curvy (&optional arg)
  (interactive "p")
  (if (looking-at "\\s-*\)")
      (progn
	(search-forward-regexp  "\\s-*\)")
	;; (forward-char 1)
	)
    (insert ")")))



(add-hook 'c-mode-common-hook 'my-c-common-hook)

(defun my-c-common-hook ()
  (define-key c-mode-base-map "{" 'ins-c++-curly)
  (define-key c-mode-base-map "(" 'ins-c++-curvy)
  (define-key c-mode-base-map ")" 'close-c++-curvy))



(provide 'init-c-mode)
