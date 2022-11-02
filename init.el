(package-initialize)

(setq package-archives '(
    ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") 
    ("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
    ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
    
(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'use-package)
(require 'init-basic)
(require 'init-ui)
(require 'init-packages)
(require 'init-go)
(require 'init-mode)
(require 'init-keybindings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(color-theme-modern ## use-package js2-mode web-mode expand-region iedit helm-ag yasnippet yasnippet-snippets projectile yafolding magit go-mode lsp-mode php-mode lsp-ui company undo-tree which-key crux ivy counsel  swiper)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
