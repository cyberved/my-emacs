;;; my-buffers.el --- Configure Emacs Buffers
;;; Code:
(setq ibuffer-expert t)
(setq ibuffer-show-empty-filter-groups nil)

(setq ibuffer-saved-filter-groups
      '(("default"
	 ("dired" (mode . dired-mode))
	 ("org" (mode . org-mode))
	 ("emacs" (or (name . "^\\*scratch\\*$")
		      (name . "^\\*Messages\\*$"))))))

(add-hook 'ibuffer-mode-hook
	  '(lambda ()
	     (ibuffer-auto-mode 1)
	     (ibuffer-switch-to-saved-filter-groups "default")))

;;; my-buffers.el ends here

