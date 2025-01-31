(setq treesit-language-source-alist
  '((elisp      . ("https://github.com/Wilfred/tree-sitter-elisp"))
    (fortran       . ("https://github.com/stadelmanma/tree-sitter-fortran"))))

(add-hook 'emacs-lisp-mode-hook #'(lambda () (treesit-parser-create 'elisp)))
(add-hook 'fortran-mode-hook #'(lambda () (treesit-parser-create 'fortran)))
(provide 'init-treesit)
