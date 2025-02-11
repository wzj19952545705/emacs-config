(require 'orderless)

(setq completion-styles '(orderless basic)
      completion-category-overrides '((file (styles basic partial-completion))))

(setq ivy-re-builders-alist '((t . orderless-ivy-re-builder)))
(add-to-list 'ivy-highlight-functions-alist '(orderless-ivy-re-builder . orderless-ivy-highlight))

(defun flex-if-twiddle (pattern _index _total)
  (when (string-suffix-p "~" pattern)
    `(orderless-flex . ,(substring pattern 0 -1))))

(defun first-initialism (pattern index _total)
  (if (= index 0) 'orderless-initialism))

(defun not-if-bang (pattern _index _total)
  (cond
   ((equal "!" pattern)
    #'ignore)
   ((string-prefix-p "!" pattern)
    `(orderless-not . ,(substring pattern 1)))))

(setq orderless-matching-styles '(orderless-regexp)
      orderless-style-dispatchers '(first-initialism
                                    flex-if-twiddle
                                    not-if-bang))

(defun my/match-components-literally ()
  "Components match literally for the rest of the session."
  (interactive)
  (setq-local orderless-matching-styles '(orderless-literal)
              orderless-style-dispatchers nil))

(define-key minibuffer-local-completion-map (kbd "C-l")
  #'my/match-components-literally)

(provide 'init-orderless)
