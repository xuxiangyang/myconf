 ;; package --- smarry
;;; Commentary:
;; package 包管理
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("tromey" . "http://tromey.com/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;; 显示行号
(require 'linum)
(global-linum-mode t)

;;tab
(setq-default indent-tabs-mode  nil)
(setq tab-width 2 c-basic-offset 2)
(setq-default tab-width 2)

;; 括号匹配
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'parenthesis)

;; 缩写yes no
(fset 'yes-or-no-p 'y-or-n-p)

;; 舒服的滚动
(setq     scroll-step 1
          scroll-margin 3
          scroll-conservatively 10000)

;; 关闭自动保存
(setq auto-save-mode nil)
(setq auto-save-default nil)

;; 语法高亮
(global-font-lock-mode t)
(setq auto-save-default nil)

;; 文件搜索
(require 'ido)
(ido-mode t)

;; smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

(global-set-key (kbd "M-x") 'smex)
(put 'upcase-region 'disabled nil)

;; 补全
(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key nil)
(setq ac-auto-start t)
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'ac-modes 'enh-ruby-mode)
(define-key ac-complete-mode-map "\t" nil)
;;rake
(add-to-list 'auto-mode-alist
             '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\|cap\\)\\'" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

;; rails 项目管理
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

;; 去除临时文件
(setq make-backup-files nil)
(setq-default make-backup-files nil)
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; 超过100字自动换行
(setq default-fill-column 120)

;; 去除空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 结尾新增空行
(add-hook 'enh-ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

;; 不显示tutorial
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; 同名文件提示
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(menu-bar-mode -1)

;; 同步系统剪贴板
(setq x-select-enable-clipboard t)
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;;golang
(require 'go-mode)
(require 'go-mode-autoloads)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 8)
            (setq indent-tabs-mode 1)))
(setq gofmt-show-errors nil)
(add-to-list 'ac-modes 'go-mode)

;;主题
(load-theme 'monokai t)

;; 多点编辑
(require 'multiple-cursors)
(global-set-key (kbd "M-l") 'mc/edit-lines)
(global-set-key (kbd "M-p") 'mc/mark-previous-like-this)
(global-set-key (kbd "M-n") 'mc/mark-next-like-this)

;; smartparens
(require 'smartparens-config)
(show-smartparens-global-mode t)

;; org mode增加状态
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE" "ABANDON")))
(setq org-startup-indented t)

;; Add by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(enh-ruby-check-syntax nil)
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 '(flymake-errline ((((class color)) (:background "#292929" :foreground "BrightRed"))))
 '(flymake-warnline ((((class color)) (:background "#292929" :foreground "Golden")))))

;; makrdown-model
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . markdown-mode))

;; neotree
(setq projectile-switch-project-action 'neotree-projectile-action)

;;window-numbering
(require 'window-numbering)
(window-numbering-mode 1)

;; copy file-name to clipboard
(defun copy-file-name ()
  "Copy the current buffer file name to the clipboard."
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (file-name-nondirectory buffer-file-name))))
    (when filename
      (kill-new filename)
      (message "Copied buffer file name '%s' to the clipboard." filename))))

;; delete current buffer file
(defun delete-current-file ()
  "Delete the current buffer file"
  (interactive)
  (when (yes-or-no-p "sure?")
    (delete-file (buffer-file-name (current-buffer)))
    (kill-buffer (current-buffer))
    (message "delete and kill current buffer file")
    )
  )


;; recreate scratch buffer after kill it
(save-excursion
  (set-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode)
  (make-local-variable 'kill-buffer-query-functions)
  (add-hook 'kill-buffer-query-functions 'kill-scratch-buffer))

(defun kill-scratch-buffer ()
  ;; The next line is just in case someone calls this manually
  (set-buffer (get-buffer-create "*scratch*"))
  ;; Kill the current (*scratch*) buffer
  (remove-hook 'kill-buffer-query-functions 'kill-scratch-buffer)
  (kill-buffer (current-buffer))
  ;; Make a brand new *scratch* buffer
  (set-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode)
  (make-local-variable 'kill-buffer-query-functions)
  (add-hook 'kill-buffer-query-functions 'kill-scratch-buffer)
  ;; Since we killed it, don't let caller do that.
  nil)


;;sql
(eval-after-load "sql"
  (load-library "sql-indent"))

;;web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-enable-auto-pairing t)
(setq web-mode-markup-indent-offset 2)
(setq web-mode-enable-auto-closing t)

;;退出时需要确认
(setq confirm-kill-emacs 'y-or-n-p)

;;emacs 配置文件使用lisp-mode
(add-to-list 'auto-mode-alist '("\\emacs\\'" . emacs-lisp-mode))

;;自动跟踪link
(setq vc-follow-symlinks t)

;;错误处理
(require 'flymake-easy)
(flymake-mode t)
(require 'flymake-ruby)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(eval-after-load "go-mode" '(require 'flymake-go))
(require 'flymake-cursor)

;;raml show as yaml
(add-to-list 'auto-mode-alist '("\\.raml?\\'" . yamly-mode))

;;js tab size 2
(setq js-indent-level 2)

;;ag
(defun ag ()
  (interactive)
  (helm-ag (projectile-project-root)))

;; multi-term
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("M-[" . multi-term-prev))
            (add-to-list 'term-bind-key-alist '("M-]" . multi-term-next))))

(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 0)))
(add-hook 'term-mode-hook
          (lambda ()
            (setq show-trailing-whitespace nil)
            (autopair-mode -1)))
(defun last-term-buffer (l)
  "Return most recently used term buffer."
  (when l
    (if (eq 'term-mode (with-current-buffer (car l) major-mode))
        (car l) (last-term-buffer (cdr l)))))
(defun get-term ()
  "Switch to the term buffer last used, or create a new one if
    none exists, or if the current buffer is already a term."
  (interactive)
  (let ((b (last-term-buffer (buffer-list))))
    (if (or (not b) (eq 'term-mode major-mode))
        (multi-term)
      (switch-to-buffer b))))
(global-set-key (kbd "\C-x\C-a") 'get-term)
