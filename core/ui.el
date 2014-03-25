;; Essential interface customizations

(setf inhibit-splash-screen t)
(setq initial-scratch-message "")

;(set-frame-parameter nil 'fullscreen 'fullboth)

(set-fringe-mode 0)
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

(set-default-font "Droid Sans Mono 12")
(set-fontset-font "fontset-default" 'unicode "Droid Sans Mono")

;; highlight current line
(global-hl-line-mode 1)

;; line numbers
(global-linum-mode 1)
(setq linum-format "%5d ")
(set-default 'truncate-lines t)
(set-face-background 'linum "#eee8d5")

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
(require 'powerline-darkside-theme)

;; cursor
(blink-cursor-mode 0)
(set-cursor-color "#D33682")

(provide 'ui)
