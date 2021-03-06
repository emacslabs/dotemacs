(defun build-key-bindings ()
  "This function build key bindings and insert them to buffer"
  (interactive)
  (switch-to-buffer-other-window ".emacs")
  (goto-char (point-max))
  (let ((function-to-call (read-from-minibuffer "Function to call: ")))
    (let ((key-binding (read-from-minibuffer "Key binding proposal: ")))
    (insert (format ";; This key-binding (%s) call the function %s \n" key-binding function-to-call))
    (insert (format "(global-set-key (kbd \"%s\") '%s)\n" key-binding function-to-call))
    )))

(global-set-key (kbd "C-c C-q") 'build-key-bindings)

