;;; logstash-conf-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "logstash-conf" "logstash-conf.el" (23264 18924
;;;;;;  0 0))
;;; Generated autoloads from logstash-conf.el

(autoload 'logstash-conf-mode "logstash-conf" "\
A major mode for editing Logstash pipeline files.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.logstash\\'" . logstash-conf-mode))

(add-to-list 'interpreter-mode-alist '("logstash" . logstash-conf-mode))

;;;***

;;;### (autoloads nil nil ("logstash-conf-pkg.el") (23264 18924 0
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; logstash-conf-autoloads.el ends here
