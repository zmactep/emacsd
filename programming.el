;; Rainbow delimeters for lisp-like languages
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Multiple cursors Hook
(defun multiple-cursors-key ()
  (require 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))
(add-hook 'prog-mode-hook 'multiple-cursors-key)

;; Haskell mode with cool keybindings
(defun enable-haskell-stuff ()
  (intero-mode)
  (local-set-key (kbd "C-c C-.") 'haskell-mode-stylish-buffer))
(add-hook 'haskell-mode-hook 'enable-haskell-stuff)

;; Markdown mode
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(autoload 'gfm-mode "markdown-mode"
  "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-command "/usr/local/bin/pandoc")
