;;; ldap-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ldap-mode" "ldap-mode.el" (22921 28271 0 0))
;;; Generated autoloads from ldap-mode.el

(autoload 'ldap-mode "ldap-mode" "\
Major mode for editing LDAP schema.

Attributetype and objectclass definitions are treated as defuns.
The mode decides whether or not to treat the buffer as OpenLDAP
schema according to whether it uses the `attributetype' or
`objectclass' keywords to label the definitions.  (OpenLDAP
schema definitions are assumed to be collected into separate
files for inclusion into slapd.conf.)

Imenu, outline and skeleton support are provided.  See also
command `ldap-convert-asn1-schema' `ldap-convert-ldif-schema'.

\\{ldap-mode-map}

\(fn)" t nil)

(autoload 'ldif-mode "ldap-mode" "\
Major mode for editing LDAP LDIF files.
Imenu and outline support is provided.  There are no special
keybindings.  Font-Lock support includes decoding some
base64-encoded attributes -- see `ldif-decoded'.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.ldif\\'" . ldif-mode) t)

(modify-coding-system-alist 'file "\\.ldif\\'" 'utf-8)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ldap-mode-autoloads.el ends here
