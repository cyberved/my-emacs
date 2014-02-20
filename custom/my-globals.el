;;; my-globals.el --- Global Emacs Options

(defalias 'yes-or-no-p 'y-or-n-p)

(defvar user-temporary-file-directory
  (concat temporary-file-directory user-login-name "/"))
(make-directory user-temporary-file-directory t)

;; Backup files
(setq backup-by-copying t)
(setq backup-directory-alist
      `(("." . ,user-temporary-file-directory)
	(,tramp-file-name-regexp nil)))

;; Abbreviations
(setq abbrev-file-name "~/.abbrev_defs")
(setq save-abbrevs t)
(if (file-exists-p abbrev-file-name) (quietly-read-abbrev-file))

;; Text view
(setq show-trailing-whitespace t)

;; Hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Other
(setq browse-url-browser-function 'browse-url-chromium)

;;; my-globals.el ends here

