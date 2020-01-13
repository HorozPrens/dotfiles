;;(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

(defadvice js-jsx-indent-line (after js-jsx-indent-line-after-hack activate)
  "Workaround sgml-mode and follow airbnb component style."
  (save-excursion
    (beginning-of-line)
    (if (looking-at-p "^ +\/?> *$")
        (delete-char sgml-basic-offset))))

(provide 'init-rjsx-mode)

