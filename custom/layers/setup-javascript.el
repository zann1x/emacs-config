;(require 'company)
;(require 'company-tern)
(require 'js2-mode)

;;-----------------------------------------------------------------;;
;; JAVASCRIPT
;;-----------------------------------------------------------------;;

;(add-to-list 'company-backends 'company-tern)

;(add-hook 'js2-mode-hook (lambda()
;                           (company-mode)
;                           (tern-mode)))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

;;-----------------------------------------------------------------;;

(provide 'layers/setup-javascript)
