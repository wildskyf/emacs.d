(evil-ex-define-cmd "tabe[dit]" 'make-frame)
(evil-ex-define-cmd "tabclone" 'make-frame)
(evil-ex-define-cmd "tabc[lose]" 'delete-frame)
(evil-ex-define-cmd "tabd[isplay]" 'other-frame)
(evil-ex-define-cmd "tabo[nly]" 'delete-other-frames)
(evil-ex-define-cmd "tabnew" 'make-frame)
(evil-ex-define-cmd "tabn[ext]" 'next-multiframe-window)
(evil-ex-define-cmd "tabp[previous]" 'previous-multiframe-window)

(define-key evil-normal-state-map (kbd "g t") 'next-multiframe-window)
(define-key evil-normal-state-map (kbd "g T") 'previous-multiframe-window)
