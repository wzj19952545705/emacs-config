(require 'dirvish)
(dirvish-override-dired-mode)
(add-to-list 'load-path (expand-file-name "lib/dirvish/extensions" user-emacs-directory))
(require 'dirvish-vc)
(setq dirvish-attributes
      '(vc-state subtree-state nerd-icons collapse git-msg file-time file-size))
(provide 'init-dirvish)
