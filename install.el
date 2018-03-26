;; Check if marker file exists and install packages
(defconst install-file (expand-file-name ".install-packages" user-emacs-directory))
(defun update-zmactep-build ()
  (interactive)
  (package-refresh-contents)
  (setq package-list '(exec-path-from-shell
                       all-the-icons undo-tree neotree
		       projectile smex
		       intero flycheck-haskell
                       yaml-mode idris-mode
                       lean-mode company-lean
                       shakespeare-mode markdown-mode
                       multiple-cursors rainbow-delimiters
                       auctex magit hl-mode
                       fill-column-indicator
                       flyspell-correct-popup
                       rust-mode racer flycheck-rust
                       dash dash-functional f s))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package)))
  (write-region "" "" install-file))
