(require 'cape)
(add-hook 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-file)
(add-hook 'completion-at-point-functions #'cape-elisp-block)

;; Merge the dabbrev, dict and keyword capfs, display candidates together.
(setq-local completion-at-point-functions
            (list (cape-capf-super #'cape-dabbrev #'cape-dict #'cape-keyword)))

(provide 'init-cape)
