(evil-mode t)
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz

(global-evil-leader-mode)
(global-evil-matchit-mode 1)

(eval-after-load "evil"
  '(progn
     (define-key evil-normal-state-map (kbd "C-w h") 'evil-window-left)
     (define-key evil-normal-state-map (kbd "C-w j") 'evil-window-down)
     (define-key evil-normal-state-map (kbd "C-w k") 'evil-window-up)
     (define-key evil-normal-state-map (kbd "C-w l") 'evil-window-right)))

(evil-leader/set-key
   "w" 'save-buffer
   "W" 'save-some-buffers
   "e" 'find-file
   "b" 'switch-to-buffer
   "B" 'ibuffer
   "p" 'projectile-find-file)
