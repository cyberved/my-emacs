;;; my-buffers.el --- Configure Emacs Buffers
;;; Code:
(setq ibuffer-saved-filter-groups
      '(("default"
	 ("dired" (mode . dired-mode))
	 ("org" (mode . org-mode))
	 ("emacs" (or (name . "^\\*scratch\\*$")
		      (name . "^\\*Messages\\*$"))))))

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (ibuffer-switch-to-saved-filter-groups "default")))

;;; my-buffers.el ends here

