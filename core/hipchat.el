(setq starttls-use-gnutls t
      starttls-gnutls-program "/usr/local/bin/gnutls-cli"
      starttls-extra-arguments '("--starttls" "--insecure"))

(setq jabber-account-list
 '(("XXXXX_XXXXXX@chat.hipchat.com/"
   (:password . "XXX")
   (:network-server . "chat.hipchat.com")
   (:connection-type . ssl))))

;; Mention nicknames in a way that HipChat clients will pickup
(defun hipchat-mention (nickname)
  (interactive
    (list (jabber-muc-read-nickname jabber-group "Nickname: ")))
      (insert (concat "@\"" nickname "\" ")))

(defvar hipchat-number "XXXXX")
(defvar hipchat-nickname "Max Prokopiev")

;; Join a room
(defun hipchat-join (room)
  (interactive "sRoom name: ")
  (jabber-groupchat-join
   (jabber-read-account)
   (concat hipchat-number "_" room "@conf.hipchat.com")
   hipchat-nickname
   t))

(provide 'hipchat)
