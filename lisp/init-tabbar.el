;(add-hook 'after-init-hook #'tabspace-mode-hook)
(setq tabspaces-use-filtered-buffers-as-default t
      tabspaces-default-tab "Default"
      tabspaces-remove-to-default t
      tabspaces-include-buffers '("*scratch*")
      tabspaces-initialize-project-with-todo t
      tabspaces-todo-file-name "project-todo.org"
      ; sessions
      tabspaces-session t
      tabspaces-session-auto-restore t
      tab-bar-new-tab-choice "*scratch*"
      ; save
      tabspaces-session-auto-restore t
      tabspaces-session t)

(defun my--tabspace-setup ()
  "Set up tabspace at startup."
  ;; Add *Messages* and *splash* to Tab \`Home\'
  (tabspaces-mode 1)
  (progn
    (tab-bar-rename-tab "Home")
    (when (get-buffer "*Messages*")
      (set-frame-parameter nil
                           'buffer-list
                           (cons (get-buffer "*Messages*")
                                 (frame-parameter nil 'buffer-list))))
    (when (get-buffer "*splash*")
      (set-frame-parameter nil
                           'buffer-list
                           (cons (get-buffer "*splash*")
                                 (frame-parameter nil 'buffer-list))))))

(defun tabspaces-ivy-switch-buffer ()
  "Switch to another buffer in the current tabspace."
  (interactive)
  (ivy-read "Switch to buffer: " #'internal-complete-buffer
            :predicate (when (tabspaces--current-tab-name)
                         (let ((local-buffers (tabspaces--buffer-list)))
                           (lambda (name-and-buffer)
                             (member (cdr name-and-buffer) local-buffers))))
            :keymap ivy-switch-buffer-map
            :preselect (buffer-name (other-buffer (current-buffer)))
            :action #'ivy--switch-buffer-action
            :matcher #'ivy--switch-buffer-matcher
            :caller 'ivy-switch-buffer))
(add-hook 'after-init-hook #'my--tabspace-setup)
(provide 'init-tabbar)
