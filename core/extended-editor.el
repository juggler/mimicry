(require 'multiple-cursors-config)

;; fixes committing from magit
(setq magit-emacsclient-executable "/usr/local/bin/emacsclient")

(projectile-global-mode)

(ido-mode 1)
(flx-ido-mode 1)

;; display ido results vertically, rather than horizontally
(setq ido-decorations '("\n" "" "\n" "\n..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))
(custom-set-faces '(ido-first-match ((t (:background "#eee8d5")))))

(smex-initialize)

(defun ido-define-keys ()
  (define-key ido-completion-map [down] 'ido-next-match)
  (define-key ido-completion-map [up] 'ido-prev-match))

(add-hook 'ido-setup-hook 'ido-define-keys)

; ctags
(defun visit-project-tags ()
  (if (file-exists-p "TAGS")
    (visit-tags-table "TAGS")))

(add-hook 'projectile-mode-hook 'visit-project-tags)

(require 'etags-select)

(provide 'extended-editor)
