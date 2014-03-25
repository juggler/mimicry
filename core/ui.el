;; Essential interface customizations

;; remove welcome screen
(setf inhibit-splash-screen t)
;; remove default message in a *scratch* buffer
(setq initial-scratch-message "")

;; remove all unnecessary GUI's
(set-fringe-mode 0)
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(set-default-font "Droid Sans Mono 12")
;; fixes non-ascii font
(set-fontset-font "fontset-default" 'unicode "Droid Sans Mono")

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-linum-mode 1)
(setq linum-format "%5d ")
(set-face-background 'linum "#eee8d5")

(set-default 'truncate-lines t)

;; smooth scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

; turn off alarms completely
(setq ring-bell-function 'ignore)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; theme
(load-theme 'solarized-light t)

;; cursor
(blink-cursor-mode 0)
(set-cursor-color "#D33682")

(provide 'ui)
