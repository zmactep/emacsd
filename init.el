;; Use both elpa and melpa repos
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Load configuration from separated file
(defun load-config (name)
  (load-file (expand-file-name name user-emacs-directory)))

(load-config "install.el")
(load-config "environment.el")
(load-config "programming.el")

;; Install all the packages on first run  
(unless (file-exists-p install-file)
  (update-zmactep-build))

;; Set environment
(set-emacs-basics)
(set-look-and-feel)
(set-keybindings-and-suggests)
