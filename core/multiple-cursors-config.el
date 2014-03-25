(setq mc/cmds-to-run-for-all
      '(
        evil-append-line
        evil-backward-WORD-begin
        evil-backward-word-begin
        evil-backward-char
        evil-delete-char
        evil-delete-line
        evil-digit-argument-or-evil-beginning-of-line
        evil-emacs-state
        evil-end-of-line
        evil-force-normal-state
        evil-forward-WORD-begin
        evil-forward-WORD-end
        evil-forward-word-begin
        evil-forward-word-end
        evil-insert
        evil-next-line
        evil-normal-state
        evil-previous-line
        evil-mouse-drag-region
        ))

(global-unset-key (kbd "s-<down-mouse-1>"))
(global-set-key (kbd "s-<mouse-1>") 'mc/add-cursor-on-click)

(provide 'multiple-cursors-config)
