(setq treesit-language-source-alist
  '((elisp      . ("https://github.com/Wilfred/tree-sitter-elisp"))
    (fortran       . ("https://github.com/stadelmanma/tree-sitter-fortran"))))
;(mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))
(provide 'init-treesit)
