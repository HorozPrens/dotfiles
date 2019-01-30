;;; packages.el --- ag layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author:  <cihangir.zengin@SEITA-CIHANGIR>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Commentary:

;; See the Spacemacs documentation and FAQs for instructions on how to implement
;; a new layer:
;;
;;   SPC h SPC layers RET
;;
;;
;; Briefly, each package to be installed or configured by this layer should be
;; added to `ag-packages'. Then, for each package PACKAGE:
;;
;; - If PACKAGE is not referenced by any other Spacemacs layer, define a
;;   function `ag/init-PACKAGE' to load and initialize the package.

;; - Otherwise, PACKAGE is already referenced by another Spacemacs layer, so
;;   define the functions `ag/pre-init-PACKAGE' and/or
;;   `ag/post-init-PACKAGE' to customize the package as it is loaded.

;;; Code:

(defconst ag-packages
  '(ag ) ;;helm-ag)
  "The list of Lisp packages required by the ag layer.

Each entry is either:

1. A symbol, which is interpreted as a package to be installed, or

2. A list of the form (PACKAGE KEYS...), where PACKAGE is the
    name of the package to be installed or loaded, and KEYS are
    any number of keyword-value-pairs.

    The following keys are accepted:

    - :excluded (t or nil): Prevent the package from being loaded
      if value is non-nil

    - :location: Specify a custom installation location.
      The following values are legal:

      - The symbol `elpa' (default) means PACKAGE will be
        installed using the Emacs package manager.

      - The symbol `local' directs Spacemacs to load the file at
        `./local/PACKAGE/PACKAGE.el'

      - A list beginning with the symbol `recipe' is a melpa
        recipe.  See: https://github.com/milkypostman/melpa#recipe-format")

(defun ag/init-ag ()
  (use-package ag
    :ensure t ;;:ensure projectile
    :init ;;(use-package wgrep
            ;;:config
            (progn
              (setq ag-ignore-list '("*.*~"
                                     "*.map"
                                     "TAGS"
                                     "dist"
                                     "node_modules"))
              (setq ag-project-root-function 
                    (lambda (d) (let ((default-directory d)) (projectile-project-root))))
              (setq-default ag-highlight-search t
                            grep-scroll-output t)  )
            ;;)
    ;; :config 
    ;; (setq ag-ignore-list (cons projectile-globally-ignored-directories projectile-globally-ignored-files)
    ))
;;(defun ag/init-helm-ag ()
;;  (use-package helm-ag
;;    :ensure t))

;;; packages.el ends here
