(evil-leader/set-key
  "SPC" 'helm-M-x
  "f" 'helm-projectile-find-file
  "a" 'ace-jump-mode
  "e" 'eshell
  "c" 'open-config-el
  "i" 'open-init-el
  ;;"r" 'ag-project
  "s" 'save-all-buffers
  "d" 'dired-jump
  "D" 'dired-jump-other-window
  "n" 'neotree-toggle
  "q" 'kill-this-buffer-and-window
  "o" 'other-window
  "0" 'delete-window
  "1" 'delete-other-windows
  "2" 'split-window-below
  "3" 'split-window-right
  "b" 'switch-to-buffer
  "t" 'hs-toggle-hiding
  "mm" 'compile
  "mn" 'my-nexterrorloop
  "w" 'switch-window
  "h i" 'ff-find-other-file
  "h v" 'describe-variable
  "h f" 'describe-function
  ;;  "h k" 'describe-key
  ";" 'comment-line
  "p p" 'helm-projectile-switch-project
  "x c" 'save-buffers-kill-terminal
  "g p" 'go-set-project
  "g r" 'go-run
  "l a" 'helm-all-mark-rings
  "k" 'kill-this-buffer)


(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

(define-key global-map (kbd "M-o") 'evil-jump-backward)
(define-key global-map (kbd "M-g") 'keyboard-quit)
(define-key helm-projectile-projects-map (kbd "M-g") 'helm-keyboard-quit)
(define-key helm-projectile-projects-map (kbd "M-m") 'helm-maybe-exit-minibuffer)
(define-key helm-map (kbd "M-g") 'helm-keyboard-quit)
(define-key helm-find-files-map (kbd "M-g") 'helm-keyboard-quit)
(define-key helm-projectile-find-file-map (kbd "M-g") 'helm-keyboard-quit)
(define-key helm-projectile-find-file-map (kbd "M-m") 'helm-ff-RET)
(define-key compilation-button-map (kbd "M-m") 'compile-goto-error)
(define-key minibuffer-local-map (kbd "M-m") #'exit-minibuffer)

(global-set-key (kbd "M-[") (lambda (delta)
                              (interactive "p")
                              (enlarge-window-horizontally delta)))


(global-set-key (kbd "M-]") (lambda (delta)
                              (interactive "p")
                              (shrink-window-horizontally delta)))


(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

(define-key helm-projectile-find-file-map (kbd "M-o") 'open-file-new-window)

(evil-define-key 'normal prog-mode-map (kbd "t") 'hs-toggle-hiding)

(global-set-key (kbd "C-=") 'er/expand-region)


(define-key helm-map (kbd "M-j") 'helm-next-line)
(define-key helm-map (kbd "M-k") 'helm-previous-line)
(define-key helm-map (kbd "M-m") 'helm-maybe-exit-minibuffer)

;;helm-swoop
(global-set-key (kbd "M-i") 'helm-swoop)

;;ace jumo mode
(evil-leader/set-key "g" ace-jump-mode)

;;dired-mode-keys

(add-hook 'dired-mode-hook 
	  (lambda ()
	    (define-key dired-mode-map (kbd "M-m") 'dired-find-file)
	    (define-key dired-mode-map "c" 'find-file) )) 

;;enter key
(global-set-key (kbd "RET") 'newline-and-indent)

(general-nmap
  :prefix "SPC m"
  "p" 'helm-mini)

(general-nmap
  :prefix "SPC h"
  "f" 'describe-function
  "k" 'describe-key
  "d" 'describe-variable)

(general-nmap
  :prefix "SPC r"
  "p" 'helm-do-ag-project-root)


;;company key bindings
(general-define-key
 :keymaps 'company-mode-map
 "M-/"  'company-complete) 

(general-define-key
 :keymaps 'company-active-map
 "M-m"  'company-complete-selection
 "M-k"  'company-select-previous
 "M-j"  'company-select-next
 "TAB"  'company-complete-selection) 

(global-set-key (kbd "M-C-/") 'company-complete)


(provide 'init-global-keys)

