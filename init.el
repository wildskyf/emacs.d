; package.el 相關設定
(require 'package)

(setq package-archives '(
                        ("gnu" . "http://elpa.gnu.org/packages/")
                        ("marmalade" . "http://marmalade-repo.org/packages/")
;                       ("melpa" . "http://melpa.org/packages/")
                        ("melpa-stable" . "http://stable.melpa.org/packages/")))

(package-initialize)



;;;;;;;;;;;;;;;
; interface
;;;;;;;;;;;;;;;;;;

(load-theme 'monokai t)
(powerline-evil-center-color-theme)


;;;;;;;;;;;;;;;;;;;;;
; some minor setting
;;;;;;;;;;;;;;;;;;;;;;;

(setq inhibit-startup-message t)
(setq mode-require-final-newline nil)
(setq ring-bell-function 'ignore)
(setq delete-by-moving-to-trash t)
(blink-cursor-mode t)
(save-place-mode)
(global-font-lock-mode t)

; use y,n to mean yes, no
(fset 'yes-or-no-p 'y-or-n-p)

; highlight search result
(setq lazy-highlight-cleanup nil)
(setq lazy-highlight-initial-delay 0)

; display time
(display-time-mode t)
(setq display-time-24hr-format t)

; line num
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

; line highlighting
(global-hl-line-mode t)
(set-face-background 'hl-line "#2f2f29")

;; Remove menubar, toolbar and scrollbar
(dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
(when (fboundp mode) (funcall mode -1)))

;; width of tab
(setq-default tab-width 4)

;; Auto-fill Mode
(setq-default fill-column 79)
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'prog-mode-hook 'turn-on-auto-fill)

;; show parenthesis match
(defvar show-paren-delay 0)
(show-paren-mode t)


;; Full path in title bar
(setq-default frame-title-format "%b (%f)")




;;; Key binding

; disable ctrl-z
(global-unset-key (kbd "C-z"))

;; ibuffer
(global-set-key (kbd "C-x C-b") 'ibuffer)







;;; observed

;; ido-mode
(ido-mode t)
(setq ido-enable-flex-matching t)










;;;;;;;;;;;;;;;;;;;
; rainbow-mode
;;;;;;;;;;;;;;;;;;;;;;

(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode t)))

(global-rainbow-mode t)

;;;;;;;;;;;;;;;;;;;;
; evil
;;;;;;;;;;;;;;;;;;;;;;;

(evil-mode t)
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz


(projectile-global-mode)
(setq projectile-enable-caching t)
(global-set-key (kbd "C-x p") 'projectile-find-file)



;;;;;;;;;;;;
; web-mode
;;;;;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(defun my-web-mode-hook ()
   (setq web-mode-markup-indent-offset 2)
   (setq web-mode-css-indent-offset 2)
   (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)



;;;;;;;;;;
; smex
;;;;;;;;;;;;

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
