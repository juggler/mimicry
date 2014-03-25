(add-to-list 'load-path user-emacs-directory)
(add-to-list 'load-path (expand-file-name "core" user-emacs-directory))

(require 'package-init)
(require 'ui)
(require 'funs)
(require 'darkside)
(require 'editor)
(require 'extended-editor)
(require 'ruby)

(unless (display-graphic-p)
  (require 'console))

(require 'key-bindings)
