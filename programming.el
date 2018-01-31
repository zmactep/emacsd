;; Rainbow delimeters for lisp-like languages
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Multiple cursors Hook
(defun multiple-cursors-key ()
  (require 'multiple-cursors)
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "s->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "s-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))
(add-hook 'prog-mode-hook 'multiple-cursors-key)

(defun enable-hlint ()
  (with-eval-after-load 'intero
    (flycheck-add-next-checker 'intero '(warning . haskell-hlint))))

;; Haskell mode with cool keybindings
(defun enable-haskell-stuff ()
  (intero-mode)
  (local-set-key (kbd "C-c C-.") 'haskell-mode-stylish-buffer)
  (enable-hlint))
(add-hook 'haskell-mode-hook 'enable-haskell-stuff)

;; Markdown mode
(defun enable-markdown-stuff ()
  (autoload 'markdown-mode "markdown-mode"
    "Major mode for editing Markdown files" t)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  (autoload 'gfm-mode "markdown-mode"
    "Major mode for editing GitHub Flavored Markdown files" t)
  (add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
  ;; (setq markdown-command "/usr/local/bin/pandoc")
  (setq markdown-command "~/.emacs.d/bin/flavor"))
(enable-markdown-stuff)

;; LaTeX mode
(defun enable-latex-stuff ()
  (setq TeX-auto-save t)
  (setq TeX-parse-self t)
  (setq TeX-close-quote "")
  (setq TeX-open-quote "")
  (setq-default TeX-master nil)
  (setq-default TeX-engine 'xetex)
  (setq-default TeX-command "xelatex")
  ;; use pdflatex
  (setq TeX-PDF-mode t))
(add-hook 'LaTeX-mode-hook 'enable-latex-stuff)
