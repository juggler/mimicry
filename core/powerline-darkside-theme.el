(require 'powerline)

(defface powerline-active1-c '((t (:background "#a9cb9e" :inherit mode-line)))
  "Powerline face 1."
  :group 'powerline)

(defface powerline-active2-c '((t (:background "#e9e9e9" :inherit mode-line)))
  "Powerline face 2."
  :group 'powerline)

(defface powerline-active3-c '((t (:foreground "#e0dedd" :background "#999999" :inherit mode-line)))
  "Powerline face 2."
  :group 'powerline)

(defface powerline-inactive3 '((t (:foreground "#e0dedd" :background "#999999" :inherit mode-line)))
  "Powerline face 3 inactive."
  :group 'powerline)

(defface powerline-active4 '((t (:foreground "#e0dedd" :background "#d2eebc" :inherit mode-line)))
  "Powerline face 2."
  :group 'powerline)

(defun powerline-darkside-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default mode-line-format
                '("%e"
                  (:eval
                   (let* ((active (powerline-selected-window-active))
                          (mode-line 'mode-line)
                          (face1 'powerline-active1-c)
                          (face2 'powerline-active2-c)
                          (face3 'powerline-active3-c)
                          (face4 'powerline-active4)
                          (separator-left (intern (format "powerline-%s-%s"
                                                          powerline-default-separator
                                                          (car powerline-default-separator-dir))))
                          (separator-right (intern (format "powerline-%s-%s"
                                                           powerline-default-separator
                                                           (cdr powerline-default-separator-dir))))
                          (lhs (list (powerline-raw evil-mode-line-tag face1 'l)
                                     (funcall separator-left face1 face4)
                                     (powerline-buffer-id face4 'l)
                                     (powerline-raw " " face4)
                                     (funcall separator-left face4 face3)
                                     (powerline-major-mode face3 'l)
                                     (powerline-process face3)
                                     (powerline-minor-modes face3 'l)
                                     (powerline-narrow face3 'l)
                                     (powerline-raw " " face3)
                                     (funcall separator-left face3 face2)
                                     (powerline-vc face2 'r)))
                          (inactive (list (powerline-buffer-id face2 'l)))
                          (rhs (list (powerline-raw global-mode-string face2 'r)
                                     (funcall separator-right face2 face1)
                                     (powerline-raw "%4l" face1 'l)
                                     (powerline-raw ":" face1 'l)
                                     (powerline-raw "%3c" face1 'r)
                                     (funcall separator-right face1 mode-line)
                                     (powerline-raw " ")
                                     (powerline-raw "%6p" nil 'r)
                                     )))
                     (if active
                       (concat (powerline-render lhs)
                               (powerline-fill face2 (powerline-width rhs))
                               (powerline-render rhs))
                       (concat (powerline-render inactive)
                               (powerline-fill face2 0))))))))

(powerline-darkside-theme)

(provide 'powerline-darkside-theme)
