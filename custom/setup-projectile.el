(require 'projectile)

;;-----------------------------------------------------------------;;
;; PROJECTILE
;;-----------------------------------------------------------------;;

(projectile-global-mode)

;(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'setup-projectile)