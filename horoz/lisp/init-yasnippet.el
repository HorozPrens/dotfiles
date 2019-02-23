

(require-package 'yasnippet)

(yas-global-mode 1)

(add-hook 'after-save-hook
              (lambda ()
                (when (eql major-mode 'snippet-mode)
                  (yas-reload-all))))

(add-auto-mode 'snippet-mode "\\.yasnippet")

(when (maybe-require-package 'company)
  ;; Add yasnippet support for all company backends
  ;; https://github.com/syl20bnr/spacemacs/pull/179
  (defvar company-mode/enable-yas t
    "Enable yasnippet for all backends.")

  (defun company-mode/backend-with-yas (backend)
    (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
	backend
      (append (if (consp backend) backend (list backend))
	      '(:with company-yasnippet))))

(with-eval-after-load 'company
  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))) )


(provide 'init-yasnippet)
