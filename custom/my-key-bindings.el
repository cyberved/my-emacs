;;; my-key-bindings.el --- Emacs Key Bindings

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(global-set-key (kbd "C-c g d") 'magit-diff-staged)
(global-set-key (kbd "C-c g u") 'magit-diff-unstaged)
(global-set-key (kbd "C-c g s") 'magit-status)

;;; my-key-bindings.el ends here

