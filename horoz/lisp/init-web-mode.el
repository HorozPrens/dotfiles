
(require-package 'web-mode)

(setq web-mode-ac-source-alist
      '(("css" . (ac-source-css-property))
        ("html" . (ac-source-words-in-buffer ac-source-abbrev))))
(setq web-mode-enable-current-element-highlight t)
;; (setq web-mode-enable-current-column-highlight t)
(setq web-mode-enable-auto-closing t)

(add-auto-mode 'web-mode "\\.html?\\'")

(defun rh-web-hs-html ()
  ;; hs-forward-sexp-func is equal to web-mode-forward-sexp by default
  ;; hs-adjust-block-beginning is nil by default
  (setq hs-block-start-regexp "<!--\\|<[^/][^>]*[^/]>")
  (setq hs-block-end-regexp "-->\\|</[^/>]*[^/]>")
  (setq hs-c-start-regexp "<!--"))

(defun rh-web-hs-default ()
  (setq hs-block-start-regexp "{")
  (setq hs-block-end-regexp "}")
  (setq hs-c-start-regexp "/[*/]"))

(defun rh-web-hs-html-toggle-hiding ()
  (interactive)
  (rh-web-hs-html)
  (hs-toggle-hiding))

(defun rh-web-hs-toggle-hiding ()
  (interactive)
  (let ((web-mode-cur-language (web-mode-language-at-pos)))
    (if (string= web-mode-cur-language "html")
        (progn
          (rh-web-hs-html)
          (hs-toggle-hiding))
      (progn
        (if (string-match
             (concat "^[[:space:]]*<[^/][^>]*[^/]>[[:space:]]*$"
                     "\\|"
                     "^[[:space:]]*</[^/>]*[^/]>[[:space:]]*$")
             (thing-at-point 'line t))
            (rh-web-hs-html)
          (rh-web-hs-default))
        (hs-toggle-hiding)))))


(general-nmap
   :keymaps 'web-mode-map
   :prefix "SPC"
   "t" 'rh-web-hs-html-toggle-hiding)






(provide 'init-web-mode)
