(require 'evil)
(evil-mode 1)

(pixel-scroll-mode 1)

(require 'evil-org)
(add-hook 'org-mode-hook 'evil-org-mode)
(evil-org-set-key-theme '(navigation insert textobjects additional calendar))
(require 'evil-org-agenda)
(evil-org-agenda-set-keys);

(require 'evil-nerd-commenter)
(require 'evil-mc)
(evil-mc-mode)

(provide 'init-evil)
