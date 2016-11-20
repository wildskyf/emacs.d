
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz
(evil-mode t)

; (global-evil-tabs-mode t)
(global-evil-leader-mode)
(global-evil-matchit-mode 1)

(eval-after-load "evil-maps"
  (dolist (map '(evil-motion-state-map
                 evil-emacs-state-map))
    (define-key (eval map) "\C-w" nil)))

(evil-leader/set-key
   "w" 'save-buffer
   "W" 'save-some-buffers
   "x" 'save-buffers-kill-emacs
   "e" 'find-file
   "b" 'switch-to-buffer
   "B" 'ibuffer
   "p" 'projectile-find-file)

(global-unset-key (kbd "C-w"))
(global-set-key (kbd "C-w <up>") 'evil-window-up)
(global-set-key (kbd "C-w <down>") 'evil-window-down)
(global-set-key (kbd "C-w <left>") 'evil-window-left)
(global-set-key (kbd "C-w <right>") 'evil-window-right)