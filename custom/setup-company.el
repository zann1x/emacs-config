(require 'company)

;;-----------------------------------------------------------------;;
;; COMPANY
;;-----------------------------------------------------------------;;

;(company-mode 1)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'setup-company)
