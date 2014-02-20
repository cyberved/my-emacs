;;; my-key-bindings.el --- Emacs Key Bindings

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;;; my-key-bindings.el ends here

