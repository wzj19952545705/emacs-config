(require 'aider)
;; gemini
;;(setq aider-args '("--model" "gemini/gemini-exp-1206"))
;;(setenv "GEMINI_API_KEY" "AIzaSyCt2OI50LIOuq63QjU-_wF9LuTqPj877cI")

;; deepseek
(setq aider-args '("--model" "deepseek/deepseek-reasoner"))
(setenv "DEEPSEEK_API_KEY" "sk-9f353a7678144e02836b0707e4ef516b")

(provide 'init-aider)
