(require 'cl)

(when (>= emacs-major-version 24)
  (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  )



;;add whatever packages you want here
(defvar yiyi/packages '(
         use-package
				 js2-mode
				 web-mode
         expand-region
         iedit
         helm-ag
         yasnippet
         yasnippet-snippets
         projectile
         yafolding
         magit
         go-mode
         lsp-mode
         lsp-ui
         company
         php-mode
         undo-tree
         gruvbox-theme
         smart-mode-line 
         restart-emacs
         which-key
         crux
         ivy
         counsel
         swiper
				 )  "Default packages")

(setq package-selected-packages yiyi/packages)

(defun yiyi/packages-installed-p ()
  (loop for pkg in yiyi/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (yiyi/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg yiyi/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(add-to-list 'load-path
              "~/.emacs.d/elpa/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

(yas-reload-all)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(add-hook 'php-mode-hook 'php-enable-default-coding-style)

;; 项目管理
(add-to-list 'package-pinned-packages '(projectile . "melpa-stable") t)
(require 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;; 默认全局使用
(projectile-global-mode)
;; 默认打开缓存
(setq projectile-enable-caching t)

;; 代码折叠
(require 'yafolding)
;;(global-set-key (kbd "s-e y") 'yafolding-discover)
(add-hook 'prog-mode-hook
          (lambda () (yafolding-mode)))
(lambda ()
    (yafolding-show-all)
    (delete-trailing-whitespace))

(provide 'init-packages)