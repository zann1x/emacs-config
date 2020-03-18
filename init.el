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

(require 'counsel)
(require 'doom-themes)
(require 'ivy)
(require 'magit)
(require 'which-key)

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

;; Enable ivy as a generic completion mechanism
(ivy-mode 1)
;; Recent files and bookmarks are shown in the virtual buffer list
(setq ivy-use-virtual-buffers t)
;; The format of found items in the buffer list
(setq ivy-count-format "(%d/%d) ")
;; Do not show ./ and ../ for file name completion
(setq ivy-extra-directories nil)

;; Enable counsel for better Emacs command integration into ivy
(counsel-mode 1)

;; Enable swiper for an isearch with overview in the minibuffer
(setq search-default-mode #'char-fold-to-regexp)

;; Set keys for use with ivy
;(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-c g") 'counsel-git)
;;-----------------------------------------------------------------;;

;; Enable which key for popup help in commands
(which-key-mode)
;; Put the key suggestions into the minibuffer
(which-key-setup-minibuffer)

;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (which-key ivy doom-themes magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
