;; Essential interface customizations

;; remove welcome screen
(setf inhibit-splash-screen t)
;; remove default message in a *scratch* buffer
(setq initial-scratch-message "")

;; remove all unnecessary GUI's
(set-fringe-mode 0)
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp mode) (funcall mode -1)))

;; set proper language (fixes cyrillic letters in ansi-term)
(setenv "LANG" "ru_RU.UTF-8")
;; default font
;;(set-face-attribute 'default nil :family "Droid Sans Mono")
(set-face-attribute 'default nil :family "IBM Plex Mono")
;; font for all unicode characters
(set-fontset-font t 'unicode "Symbola" nil 'prepend)
;; override font for cyrillic characters
(set-fontset-font t 'cyrillic "Droid Sans Mono")

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

;; mode-line
(set-face-attribute 'mode-line nil :box '(:width 0) :underline nil :overline nil)
(set-face-attribute 'mode-line-inactive nil :box '(:width 0) :underline nil :overline nil)
(defface buffer-name-face '((t (:weight bold))) "" :group 'faces)

(defun buffer-state-color ()
  (if (buffer-modified-p)
      (propertize "💾" 'face '(:foreground "#d33682" :height 1.1))
      (propertize "💾" 'face '(:foreground "#657b83" :height 1.1))))

(setq-default mode-line-format (list " 🚀 " '(:eval (buffer-state-color)) " " '(:eval (propertize "%b:" 'face 'buffer-name-face 'help-echo (buffer-file-name))) "%l"))
;;(setq-default mode-line-format (list " 🚀 %& " '(:eval (propertize "%b:" 'face 'buffer-name-face 'help-echo (buffer-file-name))) "%l"))

;; start speedbar on load
(speedbar)
(speedbar-toggle-show-all-files)

(provide 'ui)
