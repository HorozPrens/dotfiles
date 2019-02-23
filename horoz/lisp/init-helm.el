(helm-mode 1) 
(global-set-key (kbd "M-x") 'helm-M-x) 
(setq helm-buffers-fuzzy-matching t)

(setq helm-split-window-in-side-p           t
          helm-buffers-fuzzy-matching           t
          helm-split-window-in-side-p t
          helm-completion-in-region-fuzzy-match t
          ;;helm-move-to-line-cycle-in-source     t
          helm-ff-search-library-in-sexp        t
          helm-ff-file-name-history-use-recentf t
          helm-ag-fuzzy-match                   t)



  ;; Display helm buffers always at the bottom
  ;; Source: http://www.lunaryorn.com/2015/04/29/the-power-of-display-buffer-alist.html
  (add-to-list 'display-buffer-alist
               `(,(rx bos "*helm" (* not-newline) "*" eos)
                 (display-buffer-reuse-window display-buffer-in-side-window)
                 (reusable-frames . visible)
                 (side            . bottom)
                 (window-height   . 0.4)))



(provide 'init-helm)

