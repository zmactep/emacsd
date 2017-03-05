(defun set-project-tree ()
  ;; Include all-the-icons for pretty package tree
  (require 'all-the-icons)
  ;; Include neotree for package tree
  (require 'neotree)
  (require 'projectile)
  (defun neotree-project-root-dir-or-current-dir ()
    "Open NeoTree using the project root, using projectile, or the current buffer directory."
    (interactive)
    (let ((project-dir (ignore-errors (projectile-project-root)))
	  (file-name (buffer-file-name))
	  (neo-smart-open t))
      (if (neo-global--window-exists-p)
	  (neotree-hide)
	(progn
	  (neotree-show)
	  (if project-dir
	      (neotree-dir project-dir))
	  (if file-name
	      (neotree-find file-name))))))
  (global-set-key [f8] 'neotree-project-root-dir-or-current-dir)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq projectile-switch-project-action 'neotree-projectile-action))

(defun set-emacs-basics ()
  ;; Add local paths to PATH environment
  (add-to-list 'exec-path "/usr/local/bin/")
  (add-to-list 'exec-path "~/.local/bin/")
  ;; Hide menubar, toolbar and scrollbar
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  ;; Disable splash screen
  (setq inhibit-startup-screen t)
  ;; Disable scratch message
  (setq initial-scratch-message nil)
  ;; No backup files
  (setq make-backup-files nil))

(defun set-look-and-feel ()
  ;; Open in fullscreen
  (set-frame-parameter nil 'fullscreen 'fullboth)
  ;; Load Dracula theme
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (load-theme 'dracula t)
  ;; Set nice default font
  (set-default-font "Inconsolata 20")
  ;; Set line numbers
  (global-linum-mode t)
  ;; Set project tree panel
  (set-project-tree))

(defun set-keybindings-and-suggests ()
  ;; Include package ergoemacs
  (require 'ergoemacs-mode)
  ;; Start ergoemacs mode
  (setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
  (setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
  (ergoemacs-mode 1)
  ;; Use ido mode
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1))