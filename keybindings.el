;; UNBIND DEFAULT KEYS
(defun unbind-default-keys ()
  ;-*- coding: utf-8 -*-
  (global-unset-key (kbd "M-1")) ; digit-argument
  (global-unset-key (kbd "M-2")) ; digit-argument
  (global-unset-key (kbd "M-3")) ; digit-argument
  (global-unset-key (kbd "M-4")) ; digit-argument
  (global-unset-key (kbd "M-5")) ; digit-argument
  (global-unset-key (kbd "M-6")) ; digit-argument
  (global-unset-key (kbd "M-7")) ; digit-argument
  (global-unset-key (kbd "M-8")) ; digit-argument
  (global-unset-key (kbd "M-9")) ; digit-argument
  (global-unset-key (kbd "M-0")) ; digit-argument

  (global-unset-key (kbd "M-a")) ; backward-sentence
  (global-unset-key (kbd "M-b")) ; backward-word
  (global-unset-key (kbd "M-c")) ; capitalize-word
  (global-unset-key (kbd "M-d")) ; kill-word
  (global-unset-key (kbd "M-e")) ; forward-sentence
  (global-unset-key (kbd "M-f")) ; forward-word
  (global-unset-key (kbd "M-g")) ; (prefix)
  (global-unset-key (kbd "M-h")) ; mark-paragraph
  (global-unset-key (kbd "M-i")) ; tab-to-tab-stop
  (global-unset-key (kbd "M-j")) ; indent-new-comment-line
  (global-unset-key (kbd "M-k")) ; kill-sentence
  (global-unset-key (kbd "M-l")) ; downcase-word
  (global-unset-key (kbd "M-m")) ; back-to-indentation
  (global-unset-key (kbd "M-n")) ; nil
  (global-unset-key (kbd "M-o")) ; nil
  (global-unset-key (kbd "M-p")) ; nil
  (global-unset-key (kbd "M-q")) ; fill-paragraph
  (global-unset-key (kbd "M-r")) ; move-to-window-line
  (global-unset-key (kbd "M-s")) ; nil
  (global-unset-key (kbd "M-t")) ; transpose-words
  (global-unset-key (kbd "M-u")) ; upcase-word
  (global-unset-key (kbd "M-v")) ; scroll-down
  (global-unset-key (kbd "M-w")) ; kill-ring-save
  (global-unset-key (kbd "M-x")) ; execute-extended-command
  (global-unset-key (kbd "M-y")) ; yank-pop
  (global-unset-key (kbd "M-z")) ; zap-to-char

  (global-unset-key (kbd "M-\\")) ; delete-horizontal-space
  (global-unset-key (kbd "M-@")) ; mark-word
  (global-unset-key (kbd "M--")) ; negative-argument
  (global-unset-key (kbd "M-<")) ; beginning-of-buffer
  (global-unset-key (kbd "M->")) ; end-of-buffer
  (global-unset-key (kbd "M-{")) ; backward-paragraph
  (global-unset-key (kbd "M-}")) ; forward-paragraph

  (global-unset-key (kbd "C-1")) ; digit-argument
  (global-unset-key (kbd "C-2")) ; digit-argument
  (global-unset-key (kbd "C-3")) ; digit-argument
  (global-unset-key (kbd "C-4")) ; digit-argument
  (global-unset-key (kbd "C-5")) ; digit-argument
  (global-unset-key (kbd "C-6")) ; digit-argument
  (global-unset-key (kbd "C-7")) ; digit-argument
  (global-unset-key (kbd "C-8")) ; digit-argument
  (global-unset-key (kbd "C-9")) ; digit-argument
  (global-unset-key (kbd "C-0")) ; digit-argument

  (global-unset-key (kbd "s-e"))
  (global-unset-key (kbd "s-o"))
  (global-unset-key (kbd "s-p"))
  (global-unset-key (kbd "s-w"))
  
  (global-unset-key (kbd "C-a")) ; move-beginning-of-line
  (global-unset-key (kbd "C-b")) ; backward-char
;;(global-unset-key (kbd "C-c")) ; (prefix)
  (global-unset-key (kbd "C-d")) ; delete-char
  (global-unset-key (kbd "C-e")) ; move-end-of-line
  (global-unset-key (kbd "C-f")) ; forward-char
;;(global-unset-key (kbd "C-g")) ; keyboard-quit
;;(global-unset-key (kbd "C-h")) ; (prefix)
;;(global-unset-key (kbd "C-i")) ; indent-for-tab-command; this is tab key
  (global-unset-key (kbd "C-j")) ; newline-and-indent
  (global-unset-key (kbd "C-k")) ; kill-line
  (global-unset-key (kbd "C-l")) ; recenter
;;(global-unset-key (kbd "C-m")) ; newline-and-indent; This is the Return key
  (global-unset-key (kbd "C-n")) ; next-line
  (global-unset-key (kbd "C-o")) ; open-line
  (global-unset-key (kbd "C-p")) ; previous-line
;;(global-unset-key (kbd "C-q")) ; quote-insert
  (global-unset-key (kbd "C-r")) ; isearch-backward
  (global-unset-key (kbd "C-s")) ; isearch-forward
  (global-unset-key (kbd "C-t")) ; transpose-chars
;;(global-unset-key (kbd "C-u")) ; universal-argument
  (global-unset-key (kbd "C-v")) ; scroll-up
  (global-unset-key (kbd "C-w")) ; kill-region
;;(global-unset-key (kbd "C-x")) ; (prefix)
  (global-unset-key (kbd "C-y")) ; yank
  (global-unset-key (kbd "C-z")) ; iconify-or-deiconify-frame

  (global-unset-key (kbd "C-/")) ; undo
  (global-unset-key (kbd "C-_")) ; undo
  (global-unset-key (kbd "C-<backspace>")) ; backward-kill-word

  (global-unset-key (kbd "C-@")) ; cua-set-mark set-mark-command

  (global-unset-key (kbd "C-<prior>")) ; scroll-right
  (global-unset-key (kbd "C-<next>")) ; scroll-left
  (global-unset-key (kbd "<home>"))
  (global-unset-key (kbd "<end>"))
  (global-unset-key (kbd "<next>"))
  (global-unset-key (kbd "<prior>"))

  (global-unset-key (kbd "C-x d")) ; dired
  (global-unset-key (kbd "C-x h")) ; mark-whole-buffer

  (global-unset-key (kbd "C-x C-d")) ; list-directory
  (global-unset-key (kbd "C-x C-f")) ; find-file
  (global-unset-key (kbd "C-x C-s")) ; save-buffer
  (global-unset-key (kbd "C-x C-w")) ; write-file

  (global-unset-key (kbd "C-x 0")) ; delete-window
  (global-unset-key (kbd "C-x 1")) ; delete-other-windows
  (global-unset-key (kbd "C-x 2")) ; split-window-vertically
  (global-unset-key (kbd "C-x 3")) ; split-window-horizontally
  (global-unset-key (kbd "C-x o")) ; other-windows

  (global-unset-key (kbd "C-x 5 0")) ; delete-frame
  (global-unset-key (kbd "C-x 5 2")) ; make-frame-command

  (global-unset-key (kbd "C-M-%"))) ; query-replace-regexp

;; BIND CURSOR MOVEMENTS
(defun bind-cursor-keys ()
  ;; Single char cursor movement
  (global-set-key (kbd "M-j") 'backward-char)
  (global-set-key (kbd "M-l") 'forward-char)
  (global-set-key (kbd "M-i") 'previous-line)
  (global-set-key (kbd "M-k") 'next-line)
  ;; Move by word
  (global-set-key (kbd "M-u") 'backward-word)
  (global-set-key (kbd "M-o") 'forward-word)
  ;; Move by paragraph
  (global-set-key (kbd "M-U") 'backward-paragraph)
  (global-set-key (kbd "M-O") 'forward-paragraph)
  ;; Move to buffer beggining/end
  (global-set-key (kbd "M-<") 'beginning-of-buffer)
  (global-set-key (kbd "M->") 'end-of-buffer)
  ;; Move to beginning/ending of line
  (global-set-key (kbd "M-J") 'beginning-of-line-text)
  (global-set-key (kbd "M-L") 'end-of-line)
  ;; Move by screen (page up/down)
  (global-set-key (kbd "M-I") 'scroll-down)
  (global-set-key (kbd "M-K") 'scroll-up)
  ;; Recenter screen
  (global-set-key (kbd "M-p")
                (if (fboundp 'recenter-top-bottom)
                    'recenter-top-bottom
                  'recenter
                  )))

;; COMMON OPERATIONS
(defun bind-common-keys ()
  ;; Text scale
  (global-set-key (kbd "s--") 'text-scale-decrease)
  (global-set-key (kbd "s-=") 'text-scale-increase)
  (global-set-key (kbd "s-0") 'text-scale-default)
  ;; Execute command
  (global-set-key (kbd "M-a") 'smex)
  (global-set-key (kbd "M-r") 'eval-expression)
  ;; Find by isearch
  (global-set-key (kbd "s-f") 'isearch-forward)
  (global-set-key (kbd "s-F") 'isearch-backward)
  (add-hook 'isearch-mode-hook
	    (lambda ()
	      (define-key isearch-mode-map (kbd "s-f") 'isearch-repeat-forward)
	      (define-key isearch-mode-map (kbd "s-F") 'isearch-repeat-backward)))
  ;; Replace
  (global-set-key (kbd "s-r") 'query-replace)
  (global-set-key (kbd "s-R") 'query-replace-regexp)
  ;; Undo and redo
  (global-set-key (kbd "C-Z") 'undo-tree-redo)
  (global-set-key (kbd "C-z") 'undo-tree-undo)
  ;; Delete previous/next word
  (global-set-key (kbd "M-w") 'kill-word)
  (global-set-key (kbd "M-W") 'backward-kill-word)
  ;; Delete previous/next symbol
  (global-set-key (kbd "M-e") 'delete-forward-char)
  (global-set-key (kbd "M-E") 'delete-backward-char)
  ;; Delete line till end/beginning
  (global-set-key (kbd "M-g") 'kill-line)
  (global-set-key (kbd "M-G") 'kill-line-backward)
  ;; Duplicate line
  (global-set-key (kbd "M-d") 'duplicate-line)
  (global-set-key (kbd "s-d") 'duplicate-line)
  ;; Copy Cut Paste, Paste previous
  (global-set-key (kbd "s-x") 'kill-region)
  (global-set-key (kbd "s-c") 'kill-ring-save)
  (global-set-key (kbd "s-v") 'yank)
  (global-set-key (kbd "s-a") 'mark-whole-buffer)
  (global-set-key (kbd "M-x") 'kill-whole-line)
  (global-set-key (kbd "M-c") 'copy-line)
  (global-set-key (kbd "M-v") 'yank)
  ;; Comment code
  (global-set-key (kbd "C-/") 'comment-line)
  (global-set-key (kbd "s-/") 'comment-line)
  ;; Set mark command
  (global-set-key (kbd "M-SPC") 'set-mark-command))

(defun bind-file-keys ()
  ;; Create new buffer
  (global-set-key (kbd "C-n") 'new-empty-buffer)
  (global-set-key (kbd "s-n") 'new-empty-buffer)
  ;; Open file
  (global-set-key (kbd "C-o") 'find-file)
  (global-set-key (kbd "s-o") 'find-file)
  ;; Close buffer
  (global-set-key (kbd "C-w") 'close-current-buffer)
  (global-set-key (kbd "s-w") 'close-current-buffer)
  ;; Save buffer
  (global-set-key (kbd "C-s") 'save-buffer)
  (global-set-key (kbd "s-s") 'save-buffer)
  ;; Save as
  (global-set-key (kbd "C-S-s") 'write-file)
  (global-set-key (kbd "s-S-s") 'write-file)
  ;; Select buffer
  (global-set-key (kbd "C-e") 'switch-to-buffer)
  (global-set-key (kbd "s-e") 'switch-to-buffer)
  ;; Switch buffers
  (global-set-key (kbd "s-{") 'previous-user-buffer)
  (global-set-key (kbd "s-}") 'next-user-buffer)
  ;; Close panes
  (global-set-key (kbd "M-3") 'delete-other-windows)
  (global-set-key (kbd "M-2") 'delete-window)
  ;; Split panes
  (global-set-key (kbd "M-4") 'split-window-vertically)
  (global-set-key (kbd "M-$") 'split-window-horizontally)
  ;; Switch panes
  (global-set-key (kbd "M-s") 'move-cursor-next-pane)
  (global-set-key (kbd "M-S") 'move-cursor-previous-pane))

(defun kill-line-backward ()
  "Kill text between the beginning of the line to the cursor position.
   If there's no text, delete the previous line ending."
  (interactive)
  (if (looking-back "\n")
      (delete-char -1)
    (kill-line 0)))

(defun text-scale-default ()
  "Sets text-scale to 0"
  (interactive)
  (text-scale-set 0))

(defun move-cursor-next-pane ()
  "Move cursor to the next pane."
  (interactive)
  (other-window 1))

(defun move-cursor-previous-pane ()
  "Move cursor to the previous pane."
  (interactive)
  (other-window -1))

(defun next-user-buffer ()
  "Switch to the next user buffer.
   User buffers are those whose name does not start with *."
  (interactive)
  (next-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (next-buffer) )))

(defun previous-user-buffer ()
  "Switch to the previous user buffer.
   User buffers are those whose name does not start with *."
  (interactive)
  (previous-buffer)
  (let ((i 0))
    (while (and (string-match "^*" (buffer-name)) (< i 50))
      (setq i (1+ i)) (previous-buffer) )))

(defun new-empty-buffer ()
  "Opens a new empty buffer."
  (interactive)
  (let ((buf (generate-new-buffer "untitled")))
    (switch-to-buffer buf)
    (funcall (and initial-major-mode))
    (setq buffer-offer-save t)))

(defun close-current-buffer ()
  "Close the current buffer."
 (interactive)
 (let (emacsBuff-p isEmacsBufferAfter)
   (if (string-match "^*" (buffer-name))
       (setq emacsBuff-p t)
     (setq emacsBuff-p nil))
   (when (and (buffer-modified-p)
              (not emacsBuff-p)
              (not (string-equal major-mode "dired-mode"))
              (if (equal (buffer-file-name) nil) 
                  (if (string-equal "" (save-restriction (widen) (buffer-string))) nil t)
                t))
     (if (y-or-n-p
            (concat "Buffer " (buffer-name) " modified; Do you want to save?"))
       (save-buffer)
       (set-buffer-modified-p nil)))
   ;; save to a list of closed buffer
   (when (not (equal buffer-file-name nil))
     (unless (boundp 'recently-closed-buffers-max)
       (setq recently-closed-buffers-max 5))
     (unless (boundp 'recently-closed-buffers)
       (setq recently-closed-buffers nil))
     (setq recently-closed-buffers
           (cons (cons (buffer-name) (buffer-file-name)) recently-closed-buffers))
     (when (> (length recently-closed-buffers) recently-closed-buffers-max)
           (setq recently-closed-buffers (butlast recently-closed-buffers 1))
           ))
   ;; close
   (kill-buffer (current-buffer))
   ;; if emacs buffer, switch to a user buffer
   (if (string-match "^*" (buffer-name))
       (setq isEmacsBufferAfter t)
     (setq isEmacsBufferAfter nil))
   (when isEmacsBufferAfter
     (previous-user-buffer)
     )))

(defun duplicate-line ()
  (interactive)
  (copy-line)
  (open-line 1)
  (next-line 1)
  (yank))

(defun copy-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank))
