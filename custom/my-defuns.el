;;; my-defuns.el --- Emacs Functions Definitions
;;; Code:

;; stolen from http://www.emacswiki.org/emacs/FullScreen
(defun my-toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

;;; my-defuns.el ends here
