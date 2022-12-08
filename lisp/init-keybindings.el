(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "M-s e") 'iedit-mode)
(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;; 使用f5键打开默认文件搜索
(global-set-key [f5] 'projectile-find-file)

;; 代码折叠快捷键
(define-key yafolding-mode-map (kbd "<C-S-return>") nil)
(define-key yafolding-mode-map (kbd "<C-M-return>") nil)
(define-key yafolding-mode-map (kbd "<C-return>") nil)
(define-key yafolding-mode-map (kbd "C-c <C-M-return>") 'yafolding-toggle-all)
(define-key yafolding-mode-map (kbd "C-c <C-S-return>") 'yafolding-hide-parent-element)
(define-key yafolding-mode-map (kbd "C-c <C-return>") 'yafolding-toggle-element)
(provide 'init-keybindings)

;;快捷键操作
(use-package crux 
    :bind (("C-c k" . crux-duplicate-current-line-or-region)
           ("C-a" . crux-move-beginning-of-line) 
           ("C-c ^" . crux-top-join-line)
           ("C-x ," . crux-find-user-init-file)
           ("C-S-k" . crux-smart-kill-line)))
