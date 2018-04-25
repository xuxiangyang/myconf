;;; ghub-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "../../../Documents/LifeRecord/myconf/emacs.d/elpa/ghub-20180417.1527/ghub"
;;;;;;  "ghub.el" "7c0e567fe8ad63cb6426952f983f4546")
;;; Generated autoloads from ghub.el

(autoload 'ghub-create-token "../../../Documents/LifeRecord/myconf/emacs.d/elpa/ghub-20180417.1527/ghub" "\
Create, store and return a new token.

HOST is the Github instance, usually \"api.github.com\".
USERNAME is the name of a user on that instance.
PACKAGE is the package that will use the token.
SCOPES are the scopes the token is given access to.

\(fn HOST USERNAME PACKAGE SCOPES)" t nil)

(autoload 'ghub-token-scopes "../../../Documents/LifeRecord/myconf/emacs.d/elpa/ghub-20180417.1527/ghub" "\
Return and echo the scopes of the specified token.
This is intended for debugging purposes only.  The user
has to provide several values including their password.

\(fn HOST USERNAME PACKAGE)" t nil)

;;;***

;;;### (autoloads nil "ghub" "../../../../../../.emacs.d/elpa/ghub-20180417.1527/ghub.el"
;;;;;;  "7c0e567fe8ad63cb6426952f983f4546")
;;; Generated autoloads from ../../../../../../.emacs.d/elpa/ghub-20180417.1527/ghub.el

(autoload 'ghub-create-token "ghub" "\
Create, store and return a new token.

HOST is the Github instance, usually \"api.github.com\".
USERNAME is the name of a user on that instance.
PACKAGE is the package that will use the token.
SCOPES are the scopes the token is given access to.

\(fn HOST USERNAME PACKAGE SCOPES)" t nil)

(autoload 'ghub-token-scopes "ghub" "\
Return and echo the scopes of the specified token.
This is intended for debugging purposes only.  The user
has to provide several values including their password.

\(fn HOST USERNAME PACKAGE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/elpa/ghub-20180417.1527/ghub-autoloads.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ghub-20180417.1527/ghub-pkg.el"
;;;;;;  "../../../../../../.emacs.d/elpa/ghub-20180417.1527/ghub.el"
;;;;;;  "ghub.el") (23264 18912 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ghub-autoloads.el ends here