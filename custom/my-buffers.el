;;; my-buffers.el --- Configure Emacs Buffers
;;; Code:
(setq ibuffer-expert t)
(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("default"
	 ("Dired" (mode . dired-mode))
	 ("Org" (mode . org-mode))
	 ("Lisp" (mode . emacs-lisp-mode))
	 ("HTML" (mode . html-mode))
	 ("JavaScript" (or (mode . js2-mode)))
	 ("Version Control" (or (mode . magit-commit-mode)
				(mode . magit-diff-mode)
				(mode . magit-status-mode)
				(mode . magit-process-mode)
				(mode . diff-mode))))))

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "default")))

;;; my-buffers.el ends here
