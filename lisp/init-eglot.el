(require 'yasnippet)
(yas-global-mode 1)

;; 启用 Eglot
(require 'eglot)

;; 设置 fortls 为 Fortran 的语言服务器
(add-to-list 'eglot-server-programs '(fortran-mode . ("fortls")))

;; 自动启用 Eglot 在 Fortran 文件中
(add-hook 'fortran-mode-hook 'eglot-ensure)

(provide 'init-eglot)
