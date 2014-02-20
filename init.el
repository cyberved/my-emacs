;;; init.el --- Emacs Init File

;; load-paths
(add-to-list 'load-path "~/.emacs.d/custom/")
(let ((default-directory "~/.emacs.d/vendor/"))
  (normal-top-level-add-to-load-path '("pyenv.el")))

(load "my-globals")
(load "my-key-bindings")

;;; init.el ends here

