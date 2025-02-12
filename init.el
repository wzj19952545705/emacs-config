(setq confirm-kill-emacs #'yes-or-no-p)      ; 在关闭 Emacs 前询问是否确认关闭，防止误触
(electric-pair-mode t)                       ; 自动补全括号
(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(setq inhibit-startup-message t)             ; 关闭启动 Emacs 时的欢迎界面
(setq make-backup-files nil)                 ; 关闭文件自动备份
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块
(global-display-line-numbers-mode 1)         ; 在 Window 显示行号
(menu-bar-mode -1)
(tool-bar-mode -1)
(tool-bar-mode -1)                           ; （熟练后可选）关闭 Tool bar
(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条

(savehist-mode 1)                            ; （可选）打开 Buffer 历史记录保存
(save-place-mode 1)
(global-auto-revert-mode 1)
(setq scroll-step            1
      scroll-conservatively  10000)
(setq global-auto-revert-non-file-buffers nil)
(setq display-line-numbers-type 'relative)   ; （可选）显示相对行号
(add-to-list 'default-frame-alist '(width . 90))  ; （可选）设定启动图形界面时的初始 Frame 宽度（字符数）
(add-to-list 'default-frame-alist '(height . 55)) ; （可选）设定启动图形界面时的初始 Frame 高度（字符数）
(set-face-attribute 'default nil :font (font-spec :family "FiraCode Nerd Font" :size 18))
(set-face-attribute 'default nil :family "Monospace" :height 160 :weight 'bold)
(set-face-attribute 'default nil :family "FiraCode Nerd Font" :height 160 :weight 'normal :slant 'italic)
(setq warning-minimum-level :error)
(setq pixel-scroll-precision-large-scroll-height 40.0)
(setq gc-cons-threshold (* 50 1000 1000))
(setq default-frame-alist '((fullscreen . maximized)))
(fset 'yes-or-no-p 'y-or-n-p)

(when (file-exists-p "~/.emacs.d/custom.el")
  (load-file "~/.emacs.d/custom.el"))
;; Set custom file to custom.el
(setq custom-file "~/.emacs.d/custom.el")

;; Load custom settings from custom.el
(when (file-exists-p custom-file)
  (load-file custom-file))

;(require 'init-general)
(require 'init-doom-modeline)
;(require 'init-general)
(require 'init-ivy)
;(require 'init-general)
(require 'init-nerd-icon)
(require 'init-treesit)
(require 'init-org-modern)
(require 'init-avy)
(require 'init-evil)
(require 'init-tabbar)
(require 'init-aider)
(require 'init-super-save)
(require 'init-dirvish)
(require 'init-general)
(require 'init-marginalia)
(require 'init-eglot)
(require 'init-theme)
(require 'init-corfu)
(require 'init-cape)
(require 'init-highlight-indent-guides)
(require 'init-annotate)
