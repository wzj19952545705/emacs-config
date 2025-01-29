(require 'general)
(which-key-mode)
(general-evil-setup)
;; common function
(general-define-key
 "C-x C-e" '(eval-buffer :which-key "Evaluate buffer code"))
;; buffer operation
(general-nmap :prefix "SPC b"
  "k" '(kill-buffer :which-key "Select a buffer to kill")
  "s" '(counsel-switch-buffer :which-key "Switch to another buffer"))
;; counsel find
(general-nmap :prefix "SPC f"
  "f" '(counsel-find-file :which-key "Find file with dired")
  "r" '(counsel-recentf :which-key "Find recently opened files"))
;; counsel describe
(general-nmap :prefix "SPC d"
  "v" 'counsel-describe-variable
  "f" 'counsel-describe-function
  "s" 'counsel-describe-symbol)
;; counsel search
(general-nmap :prefix "SPC g"
  "g" 'counsel-git
  "r" '(counsel-rg :which-key "Find string in all files of current directory")
  "l" '(counsel-locate :which-key "Find file with a substring of filename in any directory")
  "f" '(counsel-fzf :which-key "Find file in current directory"))
;; quick jump
(general-nmap :prefix "SPC a"
  "c" '(avy-goto-char :which-key "Jump to any character with a character")
  "C" '(avy-goto-char-2 :which-key "Jump to any character with two characters")
  "w" '(avy-goto-word-0 :which-key "Jump to any word")
  "W" '(avy-goto-word-0 :which-key "Jump to any word with one character")
  "o" '(avy-goto-line-below :which-key "Jump to any line below")
  "O" '(avy-goto-line-below :which-key "Jump to any line above")
  "l" '(avy-goto-line :which-key "Jump to any line"))
;; org normal mode
(general-nmap :prefix "SPC o" :keymaps 'org-mode-map
 "i" '(org-insert-structure-template :which-key "Insert a block") 
 "t" '(org-table-create :which-key "Create a table in org mode"))

(provide 'init-general)
