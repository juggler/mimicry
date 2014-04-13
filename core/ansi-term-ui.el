(defadvice ansi-term (after advice-term-line-mode activate)
  (hl-line-mode -1)
  (linum-mode -1)
  (define-key term-raw-map (kbd "s-v") 'term-paste)
  (setq term-buffer-maximum-size 0)
  (setq mode-line-format nil))

(defun buffer-exists (bufname)
  (not (eq nil (get-buffer bufname))))

(defun switch-to-ansi-term ()
  (switch-to-buffer "*ansi-term*"))

(fset 'show-term
      "\C-xrw1\C-x1\M-xansi-term\n")
(fset 'switch-term
    "\C-xrw1\C-x1")
(fset 'show-editor
      "\C-xrj1")

(defun process-switch ()
  (execute-kbd-macro (symbol-function 'switch-term))
  (switch-to-ansi-term))

(defun toggle-term ()
  (interactive)
  (if (string= "term-mode" (eval 'major-mode))
      (execute-kbd-macro (symbol-function 'show-editor))
      (if (buffer-exists "*ansi-term*")
          (process-switch)
          (execute-kbd-macro (symbol-function 'show-term)))))

(provide 'ansi-term-ui)
