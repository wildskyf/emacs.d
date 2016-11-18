
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz
(evil-mode t)

; (global-evil-tabs-mode t)
(global-evil-leader-mode)
(global-evil-matchit-mode 1)

(define-key evil-motion-state-map "\C-w" nil)
(define-key evil-insert-state-map "\C-w" nil)
(define-key evil-emacs-state-map  "\C-w" nil)

(evil-leader/set-key
   "w" 'save-buffer
   "W" 'save-some-buffers
   "e" 'find-file
   "b" 'switch-to-buffer
   "B" 'ibuffer
   "p" 'projectile-find-file)

(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w <up>") 'evil-window-up)
(global-set-key (kbd "C-w <down>") 'evil-window-down)
(global-set-key (kbd "C-w <left>") 'evil-window-left)
(global-set-key (kbd "C-w <right>") 'evil-window-right)