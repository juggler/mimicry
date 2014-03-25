;; Prevent Emacs from making backup and autosave files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Default major mode is text-mode
(setq initial-major-mode 'text-mode)
(setq default-major-mode 'text-mode)

;; cleanup file before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; smart tabs (indentation and completion)
(require 'smart-tab)
(global-smart-tab-mode 1)

;; using 2 spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq evil-shift-width 2)
(setq coffee-tab-width 2)

(global-set-key (kbd "RET") 'newline-and-indent)

(global-auto-revert-mode 1)

;; newline at EOF
(setq next-line-add-newlines nil)
(setq require-final-newline t)

;; Prefer UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(provide 'editor)
