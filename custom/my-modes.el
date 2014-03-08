;;; my-modes.el --- Emacs Modes Configurations

(when (fboundp 'ido-mode) (ido-mode 1))

(when (fboundp 'recentf-mode)
  (progn
    (recentf-mode 1)
    (setq recentf-max-menu-items 25)))

(when (fboundp 'winner-mode) (winner-mode 1))

(global-rainbow-delimiters-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; auto-complete
(ac-config-default)

;; git-gutter
(global-git-gutter-mode t)

;; projectile
(projectile-global-mode)

;; web-mode
(defun my-web-mode-hook ()
  "My hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'my-web-mode-hook)

;;; my-modes.el ends here
