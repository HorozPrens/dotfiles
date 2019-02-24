;; Produce backtraces when errors occur
(setq debug-on-error t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)

(defvar  dotfiles-horoz-dir "~/dotfiles/horoz")
(add-to-list 'load-path (expand-file-name "lisp" dotfiles-horoz-dir))

(require 'config)

