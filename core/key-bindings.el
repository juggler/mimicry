;; Global key bindings

;; Cmd+Mouse click - Create cursor at point
(global-unset-key (kbd "s-<down-mouse-1>"))
(global-set-key (kbd "s-<mouse-1>") 'mc/add-cursor-on-click)

;; Cmd+Enter - Toggle fullscreen mode (a-la iTerm2)
(global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)
;; F2 - Rename current file
(global-set-key [f2] 'rename-current-file)
;; Esc to quit everything
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Ctrl-Cmd-P - Quick switch project
(global-set-key [C-s-268632080] 'projectile-switch-project)
;; Cmd-Shift-P - Command pallete (M-x)
(global-set-key (kbd "s-p") 'smex)
;; Cmd-Shift-F - Find in files
(global-set-key (kbd "s-F") 'projectile-grep)
;; Ctags key bindings
;; Cmd-] - Go to symbol
;; Cmd-[ - Go back to previous file
(global-set-key (kbd "s-]") 'etags-select-find-tag-at-point)
(global-set-key (kbd "s-[") 'pop-tag-mark)
;; Cmd+t - Fuzzy open file
(global-set-key (kbd "s-t") 'projectile-find-file)
;; toggle ansi-term
(global-set-key (kbd "s-`") 'toggle-term)

(provide 'key-bindings)
