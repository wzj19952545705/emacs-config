(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(require 'highlight-blocks)
(add-hook 'text-mode-hook 'highlight-blocks-mode)
(provide 'init-rainbow-delimiter)
