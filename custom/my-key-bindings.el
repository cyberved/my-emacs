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

;; Multiple Cursors
;; edit lines in an active region
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
;; mark lines based on keywords in the buffer
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
;; click to add cursor
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;;; my-key-bindings.el ends here
