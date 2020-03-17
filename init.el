; New buffers are in text mode
(setq-default major-mode 'text-mode)

; Turn off the toolbar
(tool-bar-mode -1)

(add-to-list 'default-frame-alist '(fullscreen . maximized))

(defun post-load-stuff ()
  (interactive)
  (menu-bar-mode -1)
  (set-foreground-color "burlywood3")
  (set-background-color "#161616")
  (set-cursor-color "#40FF40")
)
(add-hook 'window-setup-hook 'post-load-stuff t)
