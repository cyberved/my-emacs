;;; my-key-bindings.el --- Emacs Key Bindings

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x k") 'kill-this-buffer)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(global-set-key (kbd "C-c g d") 'magit-diff-staged)
(global-set-key (kbd "C-c g u") 'magit-diff-unstaged)
(global-set-key (kbd "C-c g s") 'magit-status)

(global-set-key (kbd "C-x p") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter:next-hunk)
(global-set-key (kbd "C-x v g") 'git-gutter:toggle)
(global-set-key (kbd "C-x v s") 'git-gutter:stage-hunk)
(global-set-key (kbd "C-x v r") 'git-gutter:revert-hunk)
(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;;; my-key-bindings.el ends here
