(require 'super-save)
(super-save-mode +1)
(setq super-save-auto-save-when-idle t)
;; Enable deleting trailing white spaces before saving
(setq super-save-delete-trailing-whitespace t)

;; Enable deleting trailing white spaces before saving (except for the current line)
(setq super-save-delete-trailing-whitespace 'except-current-line)

(provide 'init-super-save)
