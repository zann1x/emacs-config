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

;; Colors
(set-foreground-color "burlywood3")
(set-background-color "#161616")
(set-cursor-color "#40FF40")

;; Line numbers
(column-number-mode t)
(global-display-line-numbers-mode t)

;; Setup default and initial frame
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(foreground-color . "burlywood3"))
(add-to-list 'default-frame-alist '(background-color .  "#161616"))
(add-to-list 'default-frame-alist '(cursor-color . "#40FF40"))

;; Start the initial frame split into two windows
(split-window-horizontally)

;; New buffers are in text mode
(setq-default major-mode 'text-mode)

;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;
;;-----------------------------------------------------------------;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
