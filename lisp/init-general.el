(require 'general)
(which-key-mode)
(general-evil-setup)
;; common function
(general-define-key
 "C-x C-e" '(eval-buffer :which-key "Evaluate buffer code"))
(general-imap
  "C-v" 'yank)
;; marginalia
(general-define-key :keymap minibuffer-local-map
		    "M-a" '(marginalia-cycle :which-key "Cycle minibuffer comment"))
;; evil packages
(define-key evil-normal-state-map (kbd "K") 'pixel-scroll-down)
(define-key evil-normal-state-map (kbd "J") 'pixel-scroll-up)
(define-key evil-normal-state-map (kbd "M-/") 'evilnc-comment-or-uncomment-lines)
(general-vmap :keymap evil-mc-key-map
  "Q" #'evil-mc-undo-all-cursors
  "A" #'evil-mc-make-cursor-in-visual-selection-end
  "I" #'evil-mc-make-cursor-in-visual-selection-beg)
;; buffer operation
(general-define-key
 "C-x B" 'tabspaces-switch-buffer-and-tab
 "C-x r" 'counsel-buffer-or-recentf
 "C-x w" 'counsel-switch-buffer-other-window
 "C-x b" 'counsel-switch-buffer)
(general-nmap :prefix "SPC b"
  "K" '(kill-buffer :which-key "Select a buffer to kill")
  "k" '(kill-current-buffer :which-key "Kill current buffer")
  "s" '(counsel-switch-buffer :which-key "Switch to another buffer"))
(general-imap :prefix "C-SPC b"
  "K" '(kill-buffer :which-key "Select a buffer to kill")
  "k" '(kill-current-buffer :which-key "Kill current buffer")
  "s" '(counsel-switch-buffer :which-key "Switch to another buffer"))
;; counsel find
(general-nmap :prefix "SPC f"
  "f" '(counsel-find-file :which-key "Find file with dired")
  "r" '(counsel-recentf :which-key "Find recently opened files"))
(general-imap :prefix "C-SPC f"
  "f" '(counsel-find-file :which-key "Find file with dired")
  "r" '(counsel-recentf :which-key "Find recently opened files"))
;; counsel describe
(general-nmap :prefix "SPC d"
  "v" 'counsel-describe-variable
  "f" 'counsel-describe-function
  "s" 'counsel-describe-symbol)
(general-imap :prefix "C-SPC d"
  "v" 'counsel-describe-variable
  "f" 'counsel-describe-function
  "s" 'counsel-describe-symbol)
;; counsel search
(general-nmap :prefix "SPC g"
  "g" 'counsel-git
  "r" '(counsel-rg :which-key "Find string in all files of current directory")
  "l" '(counsel-locate :which-key "Find file with a substring of filename in any directory")
  "f" '(counsel-fzf :which-key "Find file in current directory"))
(general-imap :prefix "C-SPC g"
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
(general-imap :prefix "C-SPC a"
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
(general-imap :prefix "C-SPC o" :keymaps 'org-mode-map
 "i" '(org-insert-structure-template :which-key "Insert a block")
 "t" '(org-table-create :which-key "Create a table in org mode"))
;; tab
(require 'hydra)
(defhydra hydra-tab (:hint nil)
	  ("." tab-next "Go to next tab")
	  ("," tab-previous "Go to previous tab")
	  (">" (tab-move 1) "Move to next tab")
	  ("<" (tab-move -1) "Move to previous tab")
	  ("q" nil "quit"))
(general-nmap :prefix "SPC t"
  "h" '(hydra-tab/body :which-key "Tab utils")
  "n" '(tab-bar-new-tab :which-key "Create a new tab")
  "d" '(tab-bar-duplicate-tab :which-key "Duplicate a tab")
  "u" '(tab-bar-undo-close-tab :which-key "Recover the tab just closed")
  "," '(tab-next :which-key "Go to the next tab")
  "." '(tab-previous :which-key "Go to the previous tab")
  ">" '((tab-move 1) :which-key "Move to the next tab")
  "<" '((tab-move -1) :which-key "Move to the previous tab")
  "s" '(tab-switch :which-key "Switch tab by name")
  "/" '(tab-last :which-key "Go to the last tab")
  "N" '(windmove-display-new-tab :which-key "Move this window to a new tab")
  "k" '(tab-bar-close-tab :which-key "Close the current tab"))
(general-imap :prefix "C-SPC t"
  "h" '(hydra-tab/body :which-key "Tab utils")
  "n" '(tab-bar-new-tab :which-key "Create a new tab")
  "d" '(tab-bar-duplicate-tab :which-key "Duplicate a tab")
  "u" '(tab-bar-undo-close-tab :which-key "Recover the tab just closed")
  "," '(tab-next :which-key "Go to the next tab")
  "." '(tab-previous :which-key "Go to the previous tab")
  ">" '(tab-move 1 :which-key "Move to the next tab")
  "<" '(tab-move -1 :which-key "Move to the previous tab")
  "s" '(tab-switch :which-key "Switch tab by name")
  "/" '(tab-last :which-key "Go to the last tab")
  "N" '(windmove-display-new-tab :which-key "Move this window to a new tab")
  "k" '(tab-bar-close-tab :which-key "Close the current tab"))
;; window
(defhydra hydra-window (:hint nil)
	  ("l" enlarge-window-horizontally "Shrink horizontally")
	  ("h" shrink-window-horizontally "Expand horizontally")
	  ("j" shrink-window "Shrink vertically")
	  ("k" enlarge-window "Expand vertically")
	  ("q" nil "quit"))
(require 'ace-window)
(general-nmap :prefix "SPC w"
  "r" '(hydra-window/body :which-key "Resize")
  "H" '(windmove-swap-states-left :which-key "Move this window to left")
  "L" '(windmove-swap-states-right :which-key "Move this window to right")
  "h" '(shrink-window-horizontally :which-key "Shrink this window in width")
  "l" '(enlarge-window-horizontally :which-key "Enlarge this window in width")
  "j" '(shrink-window :which-key "Shrink this window in height")
  "k" '(enlarge-window :which-key "Enlarge this window in height"))
(general-imap :prefix "C-SPC w"
  "r" '(hydra-window/body :which-key "Resize")
  "H" '(windmove-swap-states-left :which-key "Move this window to left")
  "L" '(windmove-swap-states-right :which-key "Move this window to right")
  "h" '(shrink-window-horizontally :which-key "Shrink this window in width")
  "l" '(enlarge-window-horizontally :which-key "Enlarge this window in width")
  "j" '(shrink-window :which-key "Shrink this window in height")
  "k" '(enlarge-window :which-key "Enlarge this window in height"))
(general-define-key
  "M-o" '(ace-window :which-key "Ace window"))
;; aider
(define-key evil-visual-state-map (kbd "SPC") nil)
(general-nmap :prefix "SPC a"
  "t" '(aider-transient-menu :which-key "Open aider menu")
  "o" '(aider-run-aider :which-key "Open your ai helper"))
(general-imap :prefix "C-SPC a"
  "t" '(aider-transient-menu :which-key "Open aider menu")
  "o" '(aider-run-aider :which-key "Open your ai helper"))
(general-vmap :prefix "SPC a"
  "s" '(aider-send-region :which-key "Send code in region")
  "e" '(aider-region-explain :which-key "Explain selected region"))
;; mwim
(autoload 'mwim "mwim" nil t)
(autoload 'mwim-beginning "mwim" nil t)
(autoload 'mwim-end "mwim" nil t)
(define-key evil-normal-state-map (kbd "C-e") nil)
(general-nmap
 "C-a" '(mwim-beginning :which-key "Move to the beginning of code")
 "C-e" '(mwim-end :which-key "Move to the end of code"))
;; multicursor
(require 'ace-jump-mode)
(require 'multiple-cursors)
(general-define-key
 "M-m" '(ace-mc-add-multiple-cursors :which-key "Add multipole cursors with ace")
 "M-M" '(ace-mc-add-single-cursor :which-key "Add single cursor with ace"))
;; dirvish
(general-define-key
 "M-d" '(dirvish :which-key "Open file maneger"))
;; code folding
(general-define-key :prefix "C-c"
 "F" '(hs-hide-all :which-key "Fold all codes")
 "s" '(hs-show-all :which-key "Show all folding region")
 "f" '(hs-toggle-hiding :which-key "Toggle code folding"))
;; annotate
(general-define-key :prefix "C-c"
 "C-a" '(annotate-annotate :which-key "Create, modify or delete annotation"))
(provide 'init-general)
