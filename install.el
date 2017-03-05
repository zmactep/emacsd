;; Check if marker file exists and install packages
(defconst install-file (expand-file-name ".install-packages" user-emacs-directory))
(defun update-zmactep-build ()
  (interactive)
  (package-refresh-contents)
  (setq package-list '(ergoemacs-mode intero
		       all-the-icons neotree
		       projectile smex
		       yaml-mode idris-mode
		       markdown-mode multiple-cursors
                       rainbow-delimiters))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (package-install package)))
  (write-region "" "" install-file))
