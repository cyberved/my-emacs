;;; my-modes.el --- Emacs Modes Configurations

(when (fboundp 'ido-mode) (ido-mode 1))

(when (fboundp 'recentf-mode)
  (progn
    (recentf-mode 1)
    (setq recentf-max-menu-items 25)))

(when (fboundp 'winner-mode) (winner-mode 1))

(global-rainbow-delimiters-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; auto-complete
(ac-config-default)

;;; my-modes.el ends here
