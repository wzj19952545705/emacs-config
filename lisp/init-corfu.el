(require 'corfu)
(require 'corfu-echo)
(require 'corfu-history)
(require 'corfu-indexed)
(require 'corfu-quick)
(require 'corfu-popupinfo)
(global-corfu-mode)
(setq corfu-auto t)  ;; 自动补全
(setq corfu-quit-at-boundary t)  ;; 在边界时退出补全
(setq corfu-quit-no-match t)  ;; 没有匹配项时退出补全
(setq corfu-preview-current t)  ;; 预览当前选中的补全项
;; Enable auto completion and configure quitting
(setq corfu-auto t
      corfu-quit-no-match 'separator) ;; or t
(corfu-popupinfo-mode)
(provide 'init-corfu)
