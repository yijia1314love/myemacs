;;自动加载外部修改过的文件
(global-auto-revert-mode 1)

;; 设置一个别名将其简化为只输入 (y or n)
(fset 'yes-or-no-p 'y-or-n-p)

(require 'dired-x)

;;开启全局 Company 补全
(global-company-mode 1)

;;设置递归删除
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

;;选中替换
(delete-selection-mode 1)

;; 最近打开过的文件
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;; 重用唯一的一个缓冲区作为 Dired Mode 显示专用缓冲区
(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

;; 语法检查
(use-package flycheck
  :hook (after-init . global-flycheck-mode))


(provide 'init-basic)