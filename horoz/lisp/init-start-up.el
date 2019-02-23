
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq inhibit-startup-screen t)
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(menu-bar-mode -1)

(blink-cursor-mode -1)
(set-cursor-color "#EC0E0E") 



(defun init-startup-layout ()
  (interactive)
  (delete-other-windows)
  (split-window-horizontally)
  (next-multiframe-window)
  (switch-to-buffer "*Messages*")
  (next-multiframe-window))

(init-startup-layout)



(provide 'init-start-up)
