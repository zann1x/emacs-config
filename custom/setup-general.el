(require 'doom-themes)
(require 'magit)

;;-----------------------------------------------------------------;;
;; VARIOUS GLOBAL SETTINGS
;;-----------------------------------------------------------------;;

;; Do not show the startup splash screen
;(setq inhibit-startup-screen t)

;; Get rid of all those bars
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; Setup default and initial frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; Setup theme
(load-theme 'doom-monokai-pro t)
;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Start the initial frame split into two windows
(split-window-horizontally)

;; DO. NOT. BEEP.
(setq ring-bell-function 'ignore)

;; With the initial buffer in text-mode we should get a quicker startup time
(setq initial-major-mode 'text-mode)

;; Show the column position in the mode line
(column-number-mode t)
;; Show line numbers at the side
(global-display-line-numbers-mode t)
;; Highlight the current line
(global-hl-line-mode t)
;; Cursor should not blink
(blink-cursor-mode 0)

;; Do not create backup files
(setq make-backup-files nil)

;; Space indentation > Tab indentation!
(setq-default indent-tabs-mode nil)
;; 4 Spaces default indentation
(setq-default tab-width 4)

;; Break lines beyond the buffer's fill column
(setq-default fill-column 80)

;; Activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; Activate windmove for easily switching between windows with Shift+Arrow key
(windmove-default-keybindings)

;; Prevent the garbage collector to start too soon
(defun my-minibuffer-setup-hook ()
  (setq gc-cons-threshold most-positive-fixnum))

(defun my-minibuffer-exit-hook ()
  (setq gc-cons-threshold 800000))

(add-hook 'minibuffer-setup-hook #'my-minibuffer-setup-hook)
(add-hook 'minibuffer-exit-hook #'my-minibuffer-exit-hook)

;;-----------------------------------------------------------------;;

(provide 'setup-general)