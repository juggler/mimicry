;; rename current file
(defun rename-current-file ()
  "Renames current buffer and file it is visiting."
  (interactive)
  (let ((filename (buffer-file-name)))
    (if (not (and filename (file-exists-p filename)))
        (message "Buffer is not visiting a file!")
      (let ((new-name (read-file-name "New name: " filename)))
        (rename-file filename new-name t)
        (set-visited-file-name new-name t t)))))

;; Check ffap string for line-number and goto it (using advice)
;; Useful e.g. for output from grep -nH. Expects file-name:line-number
;; http://www.emacswiki.org/emacs/FindFileAtPoint
(defvar ffap-file-at-point-line-number nil
  "Variable to hold line number from the last `ffap-file-at-point' call.")

(defadvice ffap-file-at-point (after ffap-store-line-number activate)
  "Search `ffap-string-at-point' for a line number pattern and
save it in `ffap-file-at-point-line-number' variable."
  (let* ((string (ffap-string-at-point)) ;; string/name definition copied from `ffap-string-at-point'
         (name
          (or (condition-case nil
                  (and (not (string-match "//" string)) ; foo.com://bar
                       (substitute-in-file-name string))
                (error nil))
              string))
         (line-number-string
          (and (string-match ":[0-9]+" name)
               (substring name (1+ (match-beginning 0)) (match-end 0))))
         (line-number
          (and line-number-string
               (string-to-number line-number-string))))
    (if (and line-number (> line-number 0))
        (setq ffap-file-at-point-line-number line-number)
      (setq ffap-file-at-point-line-number nil))))

(defadvice find-file-at-point (after ffap-goto-line-number activate)
  "If `ffap-file-at-point-line-number' is non-nil goto this line."
  (when ffap-file-at-point-line-number
    (goto-line ffap-file-at-point-line-number)
    (setq ffap-file-at-point-line-number nil)))

(eval-after-load "ffap"
  '(defun ffap-read-file-or-url (prompt guess)
     "Read file or URL from minibuffer, with PROMPT and initial GUESS."
     (or guess (setq guess default-directory))
     (let (dir)
       (or (ffap-url-p guess)
           (progn
             (or (ffap-file-remote-p guess)
                 (setq guess
                       (abbreviate-file-name (expand-file-name guess))
                       ))
             (setq dir (file-name-directory guess))))
       ;; Do file substitution like (interactive "F"), suggested by MCOOK.
       (or (ffap-url-p guess) (setq guess (substitute-in-file-name guess)))
       ;; Should not do it on url's, where $ is a common (VMS?) character.
       ;; Note: upcoming url.el package ought to handle this automatically.
       guess)))

(provide 'funs)
