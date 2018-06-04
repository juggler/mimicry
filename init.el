
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (expand-file-name "core" "/home/max/.emacs.d"))

(require 'package-init)
(require 'ui)
(require 'ansi-term-ui)
(require 'funs)
(require 'darkside)
(require 'editor)
(require 'extended-editor)
(require 'ruby)
(require 'json)
(require 'scala)
(require 'web)
(require 'coffeescript)
(require 'org-mode)

(unless (display-graphic-p)
  (require 'console))

(require 'key-bindings)
