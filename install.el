;; Check if marker file exists and install packages
(defconst install-file (expand-file-name ".install-packages" user-emacs-directory))
(defun update-zmactep-build ()
  (interactive)
  (package-refresh-contents)
  (setq package-list '(exec-path-from-shell
                       all-the-icons undo-tree neotree
		       projectile smex
		       intero yaml-mode idris-mode
                       lean-mode company-lean
                       shakespeare-mode
		       markdown-mode multiple-cursors
                       rainbow-delimiters auctex
		       flymake-hlint magit
                       dash dash-functional f s))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package)))
  (write-region "" "" install-file))
