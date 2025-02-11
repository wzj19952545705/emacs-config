(require 'highlight-indent-guides)
(highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character) ; 使用字符高亮
(setq highlight-indent-guides-character ?\|)     ; 使用竖线字符
(setq highlight-indent-guides-auto-enabled t)    ; 自动启用

(provide 'init-highlight-indent-guides)
