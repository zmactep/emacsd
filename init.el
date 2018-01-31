; Use both elpa and melpa repos
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
(load-config "keybindings.el")
(load-config "programming.el")

;; Install all the packages on first run  
(unless (file-exists-p install-file)
  (update-zmactep-build))

;; Set environment
(set-emacs-basics)
(set-look-and-feel)
(set-keybindings-and-suggests)

;; Set key bindings
(unbind-default-keys)
(bind-cursor-keys)
(bind-common-keys)
(bind-file-keys)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-lean lean-mode exec-path-from-shell yaml-mode undo-tree smex shakespeare-mode rainbow-delimiters racket-mode projectile nyan-mode neotree multiple-cursors markdown-mode magit intero idris-mode flymake-hlint f ein dash-functional auctex all-the-icons))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
