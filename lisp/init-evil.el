(require 'evil)
(evil-mode 1)

(pixel-scroll-mode 1)
(define-key evil-normal-state-map (kbd "J") 'pixel-scroll-down)
(define-key evil-normal-state-map (kbd "K") 'pixel-scroll-up)

(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional calendar))
(require 'evil-org-agenda)
(evil-org-agenda-set-keys)

(define-key evil-normal-state-map (kbd "M-/") 'evilnc-comment-or-uncomment-lines)

(provide 'init-evil)
