;;-----------------------------------------------------------------;;
;; LOAD LIBRARIES
;;-----------------------------------------------------------------;;
;; Load all needed libraries first
;;-----------------------------------------------------------------;;

;; Load emacs 24's package system and add the MELPA repository
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/custom")

(require 'setup-general)
(require 'setup-ivy-counsel)
(require 'setup-which-key)

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
