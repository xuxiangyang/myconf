;;; let-alist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "../../../Documents/LifeRecord/myconf/emacs.d/elpa/let-alist-1.0.5/let-alist"
;;;;;;  "let-alist.el" "2b3d36eb5b2aa7fc9dfcdbef2e1698e5")
;;; Generated autoloads from let-alist.el

(autoload 'let-alist "../../../Documents/LifeRecord/myconf/emacs.d/elpa/let-alist-1.0.5/let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(function-put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil "let-alist" "../../../../../../.emacs.d/elpa/let-alist-1.0.5/let-alist.el"
;;;;;;  "2b3d36eb5b2aa7fc9dfcdbef2e1698e5")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/let-alist-1.0.5/let-alist.el

(autoload 'let-alist "let-alist" "\
Let-bind dotted symbols to their cdrs in ALIST and execute BODY.
Dotted symbol is any symbol starting with a `.'.  Only those present
in BODY are let-bound and this search is done at compile time.

For instance, the following code

  (let-alist alist
    (if (and .title .body)
        .body
      .site
      .site.contents))

essentially expands to

  (let ((.title (cdr (assq \\='title alist)))
        (.body  (cdr (assq \\='body alist)))
        (.site  (cdr (assq \\='site alist)))
        (.site.contents (cdr (assq \\='contents (cdr (assq \\='site alist))))))
    (if (and .title .body)
        .body
      .site
      .site.contents))

If you nest `let-alist' invocations, the inner one can't access
the variables of the outer one. You can, however, access alists
inside the original alist by using dots inside the symbol, as
displayed in the example above.

\(fn ALIST &rest BODY)" nil t)

(function-put 'let-alist 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/let-alist-1.0.5/let-alist-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/let-alist-1.0.5/let-alist-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/let-alist-1.0.5/let-alist.el"
;;;;;;  "let-alist.el") (23264 18908 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; let-alist-autoloads.el ends here