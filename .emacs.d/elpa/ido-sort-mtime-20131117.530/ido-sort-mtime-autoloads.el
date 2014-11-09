;;; ido-sort-mtime-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ido-sort-mtime-mode ido-sort-mtime-tramp-files-at-end)
;;;;;;  "ido-sort-mtime" "ido-sort-mtime.el" (21586 62321 0 0))
;;; Generated autoloads from ido-sort-mtime.el

(defvar ido-sort-mtime-tramp-files-at-end t "\
Non-nil causes files handled by TRAMP to appear at the end of the file list.
Nil causes them to appear at the beginning.
\(Checking modification time for TRAMP files is not yet supported.)")

(custom-autoload 'ido-sort-mtime-tramp-files-at-end "ido-sort-mtime" t)

(defvar ido-sort-mtime-mode nil "\
Non-nil if Ido-Sort-Mtime mode is enabled.
See the command `ido-sort-mtime-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `ido-sort-mtime-mode'.")

(custom-autoload 'ido-sort-mtime-mode "ido-sort-mtime" nil)

(autoload 'ido-sort-mtime-mode "ido-sort-mtime" "\
Sort files in Ido's file list by modification time.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("ido-sort-mtime-pkg.el") (21586 62321
;;;;;;  818786 0))

;;;***

(provide 'ido-sort-mtime-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; ido-sort-mtime-autoloads.el ends here
