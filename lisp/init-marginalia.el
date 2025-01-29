(require 'marginalia)
(add-hook 'minibuffer-mode-hook 'marginalia-mode)
(general-define-key :keymap minibuffer-local-map
		    "M-a" '(marginalia-cycle :which-key "Cycle minibuffer comment"))
(provide 'init-marginalia)
