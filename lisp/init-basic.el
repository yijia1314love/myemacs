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

;;撤销树
(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-history-directory-alist `(("." . "~/.emacs.d/.cache/")))

;;未选中注释
(global-set-key [?\C-c ?\/] 'comment-or-uncomment-region)
(defun my-comment-or-uncomment-region (beg end &optional arg)
  (interactive (if (use-region-p)
                   (list (region-beginning) (region-end) nil)
                 (list (line-beginning-position)
                       (line-beginning-position 2))))
  (comment-or-uncomment-region beg end arg)
)
(global-set-key [remap comment-or-uncomment-region] 'my-comment-or-uncomment-region)

;;重启
(use-package restart-emacs)

;;key提示
(use-package which-key 
  :defer nil 
  :config (which-key-mode))

;;强化搜索
(use-package ivy 
  :defer 1 
  :demand 
  :hook (after-init . ivy-mode) 
  :config 
  (ivy-mode 1) 
  (setq ivy-use-virtual-buffers t 
        ivy-initial-inputs-alist nil 
        ivy-count-format "%d/%d " 
        enable-recursive-minibuffers t 
        ivy-re-builders-alist '((t . ivy--regex-ignore-order))) 
  (ivy-posframe-mode 1))

(use-package counsel 
  :after (ivy) 
  :bind (("M-x" . counsel-M-x) 
         ("C-x C-f" . counsel-find-file) 
         ("C-c f" . counsel-recentf)
         ("C-c g" . counsel-git))) 

(use-package swiper 
  :after ivy 
  :bind (("C-s" . swiper) 
         ("C-r" . swiper-isearch-backward)) 
  :config (setq swiper-action-recenter t 
                swiper-include-line-number-in-search t))

(provide 'init-basic)