;; init-php-mode
(require 'php-mode)
;;根据文件扩展名自动php-mode
(add-to-list 'auto-mode-alist '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
;;开发项目时，php源文件使用其他扩展名
(add-to-list 'auto-mode-alist '("\\.module\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . php-mode))

(use-package phpunit
  :ensure t)

(use-package lsp-mode
 :config
 (setq lsp-prefer-flymake nil)
 :hook (php-mode . lsp)
 :commands lsp)

 ;; web-mode
(require 'web-mode)
;;(add-to-list 'auto-mode-alist '("*html*" "*twig*" "*tmpl*" "\\.erb" "\\.rhtml$" "\\.ejs$" "\\.hbs$""\\.ctp$" "\\.tpl$" "/\\(views\\|html\\|templates\\)/.*\\.PHP$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.view\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.Vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
)

(add-hook 'web-mode-hook 'my-web-mode-hook)


;; config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       '(("\\.html\\'" . js2-mode))
       ;;'(("\\.php\\'" . js2-mode))
       auto-mode-alist))

(provide 'init-mode)