(require 'multiple-cursors-config)

(setq magit-emacsclient-executable "/usr/local/bin/emacsclient")

(projectile-global-mode)
(global-set-key [C-s-268632080] 'projectile-switch-project)

(ido-mode 1)
(flx-ido-mode 1)

;; display ido results vertically, rather than horizontally
(setq ido-decorations '("\n" "" "\n" "\n..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))
(custom-set-faces '(ido-first-match ((t (:background "#eee8d5")))))

(global-set-key (kbd "s-p") 'smex)
(smex-initialize)

(defun ido-define-keys ()
  (define-key ido-completion-map [down] 'ido-next-match)
  (define-key ido-completion-map [up] 'ido-prev-match))

(add-hook 'ido-setup-hook 'ido-define-keys)

(global-set-key (kbd "s-F") 'projectile-grep)

; ctags
(defun visit-project-tags ()
  (if (file-exists-p "TAGS")
    (visit-tags-table "TAGS")))

(add-hook 'projectile-mode-hook 'visit-project-tags)

(require 'etags-select)
(global-set-key (kbd "s-]") 'etags-select-find-tag-at-point)
(global-set-key (kbd "s-[") 'pop-tag-mark)

(global-set-key (kbd "s-t") 'projectile-find-file)

(setq path-to-ctags "/usr/local/bin/ctags")

(provide 'extended-editor)
