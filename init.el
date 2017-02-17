;; Use both elpa and melpa repos
(require 'package)
(add-to-list
  'package-archives
  '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Comment all this after first run
;(package-refresh-contents)
;(setq package-list '(ergoemacs-mode intero-mode all-the-icons neotree projectile smex))
;(dolist (package package-list)
;  (unless (package-installed-p package)
;    (package-install package)))

;; Hide toolbar and scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Open in fullscreen
(set-frame-parameter nil 'fullscreen 'fullboth)

;; Load Dracula theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'dracula t)

;; Disable splash screen
(setq inhibit-startup-screen t)

;; Include package ergoemacs
(require 'ergoemacs-mode)
;; Start ergoemacs mode
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)

;; Use ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Intero Haskell hook
(add-hook 'haskell-mode-hook 'intero-mode)
;; Add stack path to local PATH variable
(add-to-list 'exec-path "/usr/local/bin/")
(add-to-list 'exec-path "/Users/pavel/.local/bin/")

;; Include all-the-icons for pretty package tree
(require 'all-the-icons)
;; Include neotree for package tree
(require 'neotree)
(require 'projectile)
(defun neotree-project-root-dir-or-current-dir ()
  "Open NeoTree using the project root, using projectile, or the
current buffer directory."
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
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Set nice default font
(set-default-font "Inconsolata 20")

;; Set line numbers
(global-linum-mode t)
