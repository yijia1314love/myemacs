(package-initialize)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                           ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'use-package)
(require 'init-basic)
(require 'init-ui)
(require 'init-packages)
(require 'init-go)
(require 'init-keybindings)




(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
(executable-find "gopls")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(## use-package js2-mode web-mode expand-region iedit helm-ag yasnippet yasnippet-snippets projectile yafolding magit go-mode lsp-mode lsp-ui company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
