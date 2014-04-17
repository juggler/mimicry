(require 'multiple-cursors-config)

;; fixes committing from magit
(setq magit-emacsclient-executable "/usr/local/bin/emacsclient")

(projectile-global-mode)
(setq projectile-tags-command "/usr/local/bin/ctags -e -R")

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

;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)

(require 'etags-select)

(provide 'extended-editor)
