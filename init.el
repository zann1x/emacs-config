;;-----------------------------------------------------------------;;
;; LOAD LIBRARIES
;;-----------------------------------------------------------------;;
;; Load all needed libraries first
;;-----------------------------------------------------------------;;

;; Load emacs 24's package system. Add MELPA repository.
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "http://melpa.milkbox.net/packages/")
   t))

(package-initialize)

(require 'doom-themes)
(require 'magit)

;;-----------------------------------------------------------------;;
;; GLOBAL CONFIG
;;-----------------------------------------------------------------;;
;; Various global settings
;;-----------------------------------------------------------------;;

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

;; Spaces > Tabs!
(setq-default indent-tabs-mode nil
              tab-width 4)

;; Break lines beyond the buffer's fill column
(setq-default fill-column 80)

;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (doom-themes magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
