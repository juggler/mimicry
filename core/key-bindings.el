;; Global key bindings

;; Cmd+Mouse click - Create cursor at point
(global-unset-key (kbd "s-<down-mouse-1>"))
(global-set-key (kbd "s-<mouse-1>") 'mc/add-cursor-on-click)

;; Cmd+Enter - Toggle fullscreen mode (a-la iTerm2)
;;(global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)
;; F2 - Rename current file
(global-set-key [f2] 'rename-current-file)
;; Esc to quit everything
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Quick switch project
(global-set-key (kbd "C-M-s-s") 'projectile-switch-project)
;; Command pallete (M-x)
(global-set-key (kbd "C-M-s-f") 'smex)
;; Fuzzy open file
(global-set-key (kbd "C-M-s-d") 'projectile-find-file)

;; ;; Quick switch project (LAPTOP config)
(global-set-key (kbd "M-o") 'projectile-switch-project)
;; ;; Fuzzy open file
(global-set-key (kbd "M-t") 'projectile-find-file)
;; ;; Command pallete (M-x)
;; (global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-p") 'smex)
(global-set-key (kbd "M-s") 'save-buffer)

;; Cmd-Shift-F - Find in files
(global-set-key (kbd "M-f") 'projectile-grep)
;; Ctags key bindings
;; Cmd-] - Go to symbol
;; Cmd-[ - Go back to previous file
(global-set-key (kbd "s-]") 'etags-select-find-tag-at-point)
(global-set-key (kbd "s-[") 'pop-tag-mark)
;; toggle ansi-term
;; (global-set-key (kbd "s-`") 'toggle-term)
;; open file at cursor
(global-set-key [C-s-268632070] 'find-file-at-point)

;; changing layout
(global-set-key (kbd "C-M-s-j") 'delete-other-windows)
(global-set-key (kbd "C-M-s-k") 'split-window-below)
(global-set-key (kbd "C-M-s-l") 'split-window-right)

;; LAPTOP
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "M-2") 'split-window-below)
(global-set-key (kbd "M-3") 'split-window-right)

;; navigating between windows
(global-set-key (kbd "C-k") 'windmove-up)
(global-set-key (kbd "C-j") 'windmove-down)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-h") 'windmove-left)

;; font size using mouse wheel
;; Mac OS X
;; (global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
;; (global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)
;; (global-set-key (kbd "<C-down-mouse-2>") 'text-scale-mode)

(global-set-key (kbd "<C-mouse-4>") 'text-scale-increase)
(global-set-key (kbd "<C-mouse-5>") 'text-scale-decrease)
(global-set-key (kbd "<C-down-mouse-2>") 'text-scale-mode)

;; disable `just-one-space` because Alt+Space is a language switch
(global-unset-key (kbd "M-SPC"))

(global-set-key (kbd "s-`") 'speedbar-get-focus)

(provide 'key-bindings)
