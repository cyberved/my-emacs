;;; init.el --- Emacs Init File

;; load-paths
(add-to-list 'load-path "~/.emacs.d/custom/")
(add-to-list 'load-path "~/.emacs.d/vendor/")
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-to-load-path '("pyenv.el" "git-modes" "magit")))

(load "my-globals")
(load "my-requires")
(load "my-modes")
(load "my-key-bindings")

;;; init.el ends here

