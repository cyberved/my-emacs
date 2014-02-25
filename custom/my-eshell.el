;;; my-eshell.el --- Eshell Configurations

;; Prompt
;; stolen and modified from http://www.emacswiki.org/emacs/EshellPrompt
(defmacro with-face (str &rest properties)
  "Customize STR face with PROPERTIES."
  `(propertize ,str 'face (list ,@properties)))

(defun my-eshell-prompt ()
  (concat
    (with-face
      (concat (replace-regexp-in-string
		"\n$" ""
		(abbreviate-file-name (shell-command-to-string "pwd")))
	      " ")
      :foreground "black")
    (with-face
      (format-time-string "(%Y-%m-%d %H:%M) " (current-time))
      :foreground "#888")
    (with-face (or (ignore-errors
		     (format "(%s)" (vc-responsible-backend default-directory)))
		   ""))
    (with-face "\n")
    (if (= (user-uid) 0) (with-face " # " :foreground "red") " $ ")))

(setq eshell-highlight-prompt nil)
(setq eshell-prompt-function 'my-eshell-prompt)

;; my-eshell.el ends here

