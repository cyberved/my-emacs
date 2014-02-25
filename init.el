;;; init.el --- Emacs Init File

;; load-paths
(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-to-load-path
    '("pyenv.el" "git-modes" "js2-mode" "magit" "auto-complete" "elfeed")))

(load "my-globals")
(load "my-requires")
(load "my-eshell")

(if (file-exists-p "~/.my-elfeed.el")
  (progn
    (require 'elfeed)
    (load "~/.my-elfeed.el")))

(load "my-modes")
(load "my-key-bindings")

;;; init.el ends here

