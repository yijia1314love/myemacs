;;lsp-mode
(require 'lsp-mode)
(use-package lsp-mode
    :hook ((go-mode . lsp-deferred))
    :hook ((php-mode . lsp-deferred))
    :hook ((web-mode . lsp-deferred))
    :commands (lsp lsp-deferred))

(executable-find "gopls")
(lsp-register-custom-settings
 '(("gopls.completeUnimported" t t)
   ("gopls.staticcheck" t t)))

;; Optional - provides fancier overlays.
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

;; Company mode is a standard completion package that works well with lsp-mode.
(use-package company
  :ensure t
  :config
  ;; Optionally enable completion-as-you-type behavior.
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1))

;; Optional - provides snippet support.
(use-package yasnippet
  :ensure t
  :commands yas-minor-mode
  :hook (go-mode . yas-minor-mode))

(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'init-go)