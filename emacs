;; package --- smarry
;;; Commentary:
;;; package 包管理
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("tromey" . "http://tromey.com/elpa/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

;; 显示行号
(require 'linum)
(global-linum-mode t)

;; flycheck
(require 'flycheck)
(global-flycheck-mode)

;;tab
(setq-default indent-tabs-mode nil)
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
(setq ido-enable-flex-matching t)

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
(define-key ac-complete-mode-map "\t" nil)

;;ruby
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|god\\|ru\\|jbuilder\\|thor\\|cap\\)\\'" . enh-ruby-mode))
(add-to-list 'auto-mode-alist
             '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . enh-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder\\'" . enh-ruby-mode))
(setq enh-ruby-add-encoding-comment-on-save nil)
(setq enh-ruby-deep-indent-paren nil)

;; rails 项目管理
(projectile-rails-global-mode)

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
(setq gofmt-command "goimports")
;; (require 'go-mode-autoloads)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
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

;; org mode增加状态
(setq org-todo-keywords
      '((sequence "TODO(t)" "DOING(i)" "|" "DONE(d)" "ABORT(a)")))
(setq org-startup-indented t)
(setq org-log-done 'time)
(setq org-src-fontify-natively t)

;; Add by emacs
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(enh-ruby-check-syntax nil)
 '(package-selected-packages
   (quote
    (clang-format cargo flymake-rust flycheck-rust rust-mode flycheck-plantuml plantuml-mode pg ensime scala-mode flycheck go-projectile yasnippet-snippets jsx-mode yaml-mode xpm xclip writeroom-mode window-numbering web-mode tree-mode toml-mode toml thrift sr-speedbar sql-indent smex smartparens smart-tab scss-mode rvm ruby-end ruby-electric ruby-compilation ruby-block react-snippets rails-log-mode python-mode protobuf-mode project paredit org nginx-mode neotree multiple-cursors multi-term monokai-theme markdown-toc magit lua-mode logstash-conf ldap-mode json-snatcher json-reformat js2-mode ido-sort-mtime ido-complete-space-or-hyphen ido-better-flex helm-anything helm-ag haml-mode guess-style guess-offset goto-gem go-mode go-autocomplete go git-blame git flymake-ruby flymake-python-pyflakes flymake-go flymake-elixir flymake-cursor flymake evil-rails enh-ruby-mode elpy elixir-yasnippets elixir-mode elixir-mix dockerfile-mode coffee-mode cmake-mode babel autopair ascii-art-to-unicode arduino-mode angularjs-mode ace-jump-mode)))
 '(safe-local-variable-values (quote ((encoding . utf-8)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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

;;web-mode
(require 'web-mode)
(setq web-mode-enable-auto-pairing t)
(setq web-mode-enable-auto-closing t)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.wxml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.wxs\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.wxss\\'" . css-mode))
(setq web-mode-content-types-alist
      '(("jsx" . "\\.js[x]?\\'")))

(add-hook 'web-mode-hook
          (lambda ()
            (setq web-mode-html-offset   2)
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-code-indent-offset 2)
            (setq web-mode-attr-indent-offset 2)
            ))

(require 'yasnippet)
(require 'react-snippets)
(yas-global-mode 1)


;;arduino
(add-to-list 'ac-modes 'arduino-mode)


;;rename current file
(defun rename-current-file (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))



;;ace-jump
(require 'ace-jump-mode)
(eval-after-load "ace-jump-mode"
                   '(ace-jump-mode-enable-mark-sync))

(define-key global-map (kbd "M-s") 'ace-jump-line-mode)
(define-key global-map (kbd "C-h") 'ace-jump-mode)
(define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark)

;;erlang
(add-to-list 'ac-modes 'erlang-mode)

(require 'autopair)
(autopair-global-mode 1)

;; ;;自动括号
;; (require 'paredit)
;; (defadvice paredit-mode (around disable-autopairs-around (arg))
;;   "Disable autopairs mode if paredit-mode is turned on"
;;   ad-do-it
;;   (if (null ad-return-value)
;;       (autopair-mode 1)
;;     (autopair-mode 0)
;;     ))

;; ;; (ad-activate 'paredit-mode)
;; (add-hook 'enh-ruby-mode-hook             #'enable-paredit-mode)
;; (add-hook 'web-mode-hook             #'enable-paredit-mode)
;; (add-hook 'go-mode-hook             #'enable-paredit-mode)
;; (add-hook 'python-mode-hook             #'enable-paredit-mode)
;; (add-hook 'scala-mode-hook             #'enable-paredit-mode)


;; web-mode
(add-to-list 'auto-mode-alist '("\\.xml\\'" . web-mode))

;;elixir
(require 'flymake-elixir)
(add-hook 'elixir-mode-hook 'flymake-elixir-load)
(add-to-list 'ac-modes 'elixir-mode)

(add-to-list 'auto-mode-alist '("\\.erb\\'" . tomal-mode))


;;thrift
(add-to-list 'ac-modes 'thrift-mode)

;;python
;; (require 'py-autopep8)
;; (add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
;; (elpy-enable)

(remove-hook 'python-mode 'flycheck-mode)

;;protobuf
(add-to-list 'ac-modes 'protobuf-mode)

;;scala
;; (require 'ensime)
;; (setq ensime-startup-notification nil)
;; (add-hook 'scala-mode-hook #'ensime)

;;projectile
(projectile-mode +1)

;;plantuml
(setq plantuml-jar-path "/usr/local/Cellar/plantuml/1.2018.14/libexec/plantuml.jar")

;;rust
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
(add-to-list 'ac-modes 'rust-mode)
(setq rust-format-on-save t)

;;clang
(require 'clang-format)
(global-set-key (kbd "C-c u") 'clang-format-buffer)
(setq clang-format-style-option "llvm")
(add-hook 'c-mode-common-hook
          (function (lambda ()
                      (add-hook 'before-save-hook
                                'clang-format-buffer))))

(provide 'emacs)
;;; emacs ends here
