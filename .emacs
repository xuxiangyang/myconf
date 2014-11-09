;; package 包管理
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("tromey" . "http://tromey.com/elpa/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; 显示行号
(require 'linum)
(global-linum-mode t)

;;tab
(setq-default indent-tabs-mode  nil)
(setq tab-width 2 c-basic-offset 2)

;; 括号匹配
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 缩写yes no
(fset 'yes-or-no-p 'y-or-n-p)

;; 舒服的滚动
(setq     scroll-step 1
          scroll-margin 3
          scroll-conservatively 10000)

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

;; 自动括号
(autoload 'autopair-global-mode "autopair" nil t)
    (autopair-global-mode)
    (add-hook 'lisp-mode-hook #'(lambda () (setq autopair-dont-activate t)))

;; smex
(autoload 'smex "smex"
  "Smex is a M-x enhancement for Emacs, it provides a convenient interface to
your recently and most frequently used commands.")

(global-set-key (kbd "M-x") 'smex)
(put 'upcase-region 'disabled nil)

;; 补全
(ac-config-default)
(custom-set-variables
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces )
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

(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; rails 项目管理
(projectile-global-mode)
 (add-hook 'projectile-mode-hook 'projectile-rails-on)

;; 去除临时文件
(setq make-backup-files nil)
(setq-default make-backup-files nil)
(setq auto-save-mode nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; 同步系统剪贴板
(setq x-select-enable-clipboard t)

;; 超过100字自动换行
(setq default-fill-column 100)

;; 行末加新的换行
(setq-default require-final-newline t)
;; 去除空格
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; 不显示tutorial
(setq inhibit-startup-message t)
(setq initial-scratch-message ";; Hello xxy, Have a good time!")

;; 同名文件提示
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(menu-bar-mode -1)

;;错误提醒
(require 'flymake-easy)
(flymake-mode t)
(require 'flymake-ruby)
(add-hook 'enh-ruby-mode-hook 'flymake-ruby-load)
(custom-set-faces
   '(flymake-errline ((((class color)) (:underline "red"))))
    '(flymake-warnline ((((class color)) (:underline "yellow")))))

;;行尾自动加换行
(add-hook 'enh-ruby-mode-hook (lambda () (local-set-key "\r" 'newline-and-indent)))

;; 与mac os 公用粘贴板
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
;;=======================================================================

(require 'go-autocomplete)
(require 'auto-complete-config)
(require 'go-mode-autoloads)
(require 'flymake-go)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))
;;======================================================================
