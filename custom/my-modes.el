;;; my-modes.el --- Emacs Modes Configurations

(when (fboundp 'ido-mode) (ido-mode 1))

(when (fboundp 'recentf-mode)
  (progn
    (recentf-mode 1)
    (setq recentf-max-menu-items 25)))

(when (fboundp 'winner-mode) (winner-mode 1))

;;; my-modes.el ends here
