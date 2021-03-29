(package-initialize)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-basic)
(require 'init-ui)
(require 'init-packages)
(require 'init-keybindings)




(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)



