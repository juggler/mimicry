;; The dark side of the Force is a Vim mode

(require 'evil)
(evil-mode 1)

(define-key evil-normal-state-map (kbd ";") 'evil-ex)

(setq evil-shift-width 2)

(provide 'darkside)
