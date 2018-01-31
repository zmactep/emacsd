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
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  ;; Hide menubar, toolbar and scrollbar
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  ;; Disable splash screen
  (setq inhibit-startup-screen t)
  ;; Disable scratch message
  (setq initial-scratch-message nil)
  ;; No backup files
  (setq make-backup-files nil)
  ;; No tabs. Never. Ever
  (setq-default indent-tabs-mode nil)
  ;; Enable tramp remote editing
  (require 'tramp)
  (setq tramp-default-method "ssh")
  ;; Enable on-the-fly spellcheck
  (add-hook 'text-mode-hook 'flyspell-mode)
  (add-hook 'prog-mode-hook 'flyspell-prog-mode)
  (with-eval-after-load "ispell"
    ;; Install dictionaries from 'https://github.com/wooorm/dictionaries'
    (setq ispell-program-name "hunspell")
    (setq ispell-dictionary "en_GB,ru_RU")
    ;; ispell-set-spellchecker-params has to be called
    ;; before ispell-hunspell-add-multi-dic will work
    (ispell-set-spellchecker-params)
    (ispell-hunspell-add-multi-dic "en_GB,ru_RU")))

(defun set-look-and-feel ()
  ;; No annoying bell
  (setq ring-bell-function 'ignore)
  ;; Open in fullscreen
  (set-frame-parameter nil 'fullscreen 'fullboth)
  ;; Load Dracula theme
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
  (load-theme 'dracula t)
  ;; Set nice default font
  (set-default-font "Inconsolata LGC 20")
  (setq default-frame-alist '((font . "Inconsolata LGC 20")))
  ;; Set line numbers
  (global-linum-mode t)
  ;; Set project tree panel
  (set-project-tree))

(defun set-keybindings-and-suggests ()
  ;; Disable MacOS actions
  (setq mac-pass-command-to-system nil)
  ;; Use undo tree
  (global-undo-tree-mode 1)
  ;; Use ido mode
  (setq ido-enable-flex-matching t)
  (setq ido-everywhere t)
  (ido-mode 1)
  ;; Use tab for autocomplete
  (setq tab-always-indent 'complete))
