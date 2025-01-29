(require 'org-modern)
(add-hook 'org-mode-hook #'org-modern-mode)
(add-hook 'org-agenda-finalize-hook #'org-modern-agenda)
(setq org-latex-create-formula-image-program 'dvisvgm) ; 使用 dvisvgm 生成 SVG（推荐）
(setq org-preview-latex-process-alist
      '((dvisvgm
         :programs ("latex" "dvisvgm")
         :description "dvi > svg"
         :message "请确保已安装 latex 和 dvisvgm。"
         :image-input-type "dvi"
         :image-output-type "svg"
         :image-size-adjust (1.7 . 1.5)
         :latex-compiler ("latex -interaction nonstopmode -output-directory %o %f")
         :image-converter ("dvisvgm %f -n -b min -c %S -o %O"))))
(require 'cdlatex)
(add-hook 'org-mode-hook #'org-cdlatex-mode)
(require 'org-preview)
(require 'org-fragtog)
(add-hook 'org-mode-hook #'org-preview-mode)
(add-hook 'org-mode-hook #'org-fragtog-mode)

(dolist (face '((org-level-1 . 1.2)
		(org-level-2 . 1.15)
		(org-level-3 . 1.1)
		(org-level-4 . 1.05)
		(org-level-5 . 1)
		(org-level-6 . 1)
		(org-level-7 . 1)
		(org-level-8 . 1))))

(require 'org-modern-indent)
(setq org-modern-hide-stars nil
      org-modern-table nil
      org-modern-list '((?- . "-")
                        (?* . "•")
	                (?+ . "‣"))
      org-modern-block-name '("" . ""))
(add-hook 'org-mode-hook #'org-modern-indent-mode)

(require 'org-tempo)
(setq org-structure-template-alist
      '(("el" . "src elisp")
	("la" . "src latex")
	("sh" . "src shell")
	("fo" . "src fortran")
	("s" . "src")))
(provide 'init-org-modern)
