(require 'magit)

;;-----------------------------------------------------------------;;
;; VARIOUS GLOBAL SETTINGS
;;-----------------------------------------------------------------;;

;; Do not show the splash screen and message  at startup
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; Get rid of all those bars
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Too much typing if bad for your fingers they say
(defalias 'yes-or-no-p 'y-or-n-p)

;; Setup default and initial frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

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

;; Smooth scrolling
(setq scroll-step 1
      scroll-conservatively 10000
      mouse-wheel-scroll-amount '(1 ((shift) - 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't)

;; Truncate lines
(set-default 'truncate-lines t)
;; Break lines beyond the buffer's fill column
(setq-default fill-column 80)

;; Activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)
;; Toggle displaying the current time
(global-set-key (kbd "C-c t") 'display-time-mode)

;; Activate windmove for easily switching between windows with Shift+Arrow key
(windmove-default-keybindings)

;; Prevent the garbage collector to start too soon
(setq gc-cons-threshold most-positive-fixnum)

;;-----------------------------------------------------------------;;

(provide 'setup-general)
