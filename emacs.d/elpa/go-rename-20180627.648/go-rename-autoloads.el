;;; go-rename-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "go-rename" "go-rename.el" (23458 7404 360588
;;;;;;  515000))
;;; Generated autoloads from go-rename.el

(autoload 'go-rename "go-rename" "\
Rename the entity denoted by the identifier at point, using
the `gorename' tool. With FORCE, call `gorename' with the
`-force' flag.

\(fn NEW-NAME &optional FORCE)" t nil)

;;;***

;;;### (autoloads nil nil ("go-rename-pkg.el") (23458 7404 62199
;;;;;;  187000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; go-rename-autoloads.el ends here
