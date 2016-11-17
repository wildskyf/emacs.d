(evil-mode t)
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz

(global-evil-leader-mode)
(global-evil-matchit-mode 1)

(evil-leader/set-key
   "w" 'save-buffer
   "W" 'save-some-buffers
   "e" 'find-file
   "b" 'switch-to-buffer
   "B" 'ibuffer
   "p" 'projectile-find-file)
