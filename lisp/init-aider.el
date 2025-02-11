(require 'aider)
;; gemini
(setq aider-args '("--model" "gemini/gemini-exp-1206"))
(setenv "GEMINI_API_KEY" "AIzaSyCt2OI50LIOuq63QjU-_wF9LuTqPj877cI")

;; qwen2.5Max
(setq aider-args '("--model" "openai/qwen-max-2025-01-25"))
(setenv "OPENAI_API_KEY" "sk-e09e960e23614d30b994a7e86f741749")
(setenv "OPENAI_API_BASE" "https://dashscope-intl.aliyuncs.com/compatible-mode/v1")

;; deepseek
(setq aider-args '("--model" "deepseek/deepseek-coder"))
(setenv "DEEPSEEK_API_KEY" "sk-9f353a7678144e02836b0707e4ef516b")

(add-hook 'find-file-hook
          (lambda ()
            (when (and (buffer-file-name)
                       (string-match-p "aider" (buffer-file-name)))
              (aider-minor-mode 1))))

(provide 'init-aider)
