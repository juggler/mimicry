(setq coffee-tab-width 2)

;; properly indent with evil (see http://stackoverflow.com/questions/18313914/how-to-remap-a-function-to-another-in-emacs/18333484#18333484)
(defadvice coffee-indent-line (after wants-indent activate)
  (let ((tabs-needed (- (/ (coffee-previous-indent) coffee-tab-width) 1)))
    (when (> tabs-needed 0)
      (insert-tab tabs-needed)))
  (when (coffee-line-wants-indent)
    (insert-tab)))

(provide 'coffeescript)
