(require 'ivy)
(require 'counsel)

;;-----------------------------------------------------------------;;
;; IVY
;;-----------------------------------------------------------------;;

;; Enable ivy as a generic completion mechanism
(ivy-mode 1)
;; Recent files and bookmarks are shown in the virtual buffer list
(setq ivy-use-virtual-buffers t)
;; The format of found items in the buffer list
(setq ivy-count-format "(%d/%d) ")
;; Do not show ./ and ../ for file name completion
(setq ivy-extra-directories nil)

;;-----------------------------------------------------------------;;
;; COUNSEL
;;-----------------------------------------------------------------;;

;; Enable counsel for better Emacs command integration into ivy
(counsel-mode 1)

;; Enable swiper for an isearch with overview in the minibuffer
(setq search-default-mode #'char-fold-to-regexp)

;; Set keys for use with ivy
;(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-s") 'swiper-isearch)
(global-set-key (kbd "C-c g") 'counsel-git)

;;-----------------------------------------------------------------;;

(provide 'setup-ivy-counsel)
