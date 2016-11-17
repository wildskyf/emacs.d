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
(setq powerline-evil-tag-style 'verbose)





;;;;;;;;;;;;;;;;;;;;;
; some minor setting
;;;;;;;;;;;;;;;;;;;;;;;

(save-place-mode)

(global-font-lock-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq delete-by-moving-to-trash t)
(setq mode-require-final-newline nil)

(load "~/.emacs.d/my/rmScratch.el")

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-x C-b") 'ibuffer)

; display time
(setq display-time-24hr-format t)
(display-time)

; highlight search result
(setq lazy-highlight-cleanup nil)
(setq lazy-highlight-initial-delay 0)

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





;;;;;;;;;;;;;;;;;;
; observed setting
;;;;;;;;;;;;;;;;;;;;;;;;

;; ido-mode
(ido-mode t)
(setq ido-enable-flex-matching t)









;;;;;;;;;;;;;;;;;;;
; plugin
;;;;;;;;;;;;;;;;;;;;;;

; evil
(evil-mode t)
; go in vim mode at startup
; use \ as leader key for emacs function
; switch between emacs & vim: Cz

(global-pangu-spacing-mode 1)
(setq pangu-spacing-real-insert-separtor t)

; rainbow-delimiters
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

; autopair
(autopair-global-mode)

; smooth-scrolling
(smooth-scrolling-mode 1)
(setq smooth-scroll-margin 3)

; emmet-mode
(add-hook 'web-mode-hook 'emmet-mode)

; js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

; editorconfig
(editorconfig-mode 1)

; rainbow-mode
(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode t)))
(global-rainbow-mode t)

; projectile
(projectile-global-mode)
(setq projectile-enable-caching t)
(global-set-key (kbd "C-x p") 'projectile-find-file)

; web-mode
(load-file "~/.emacs.d/my/web-mode.el")

; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


;;;;;;;;;;
; custom
;;;;;;;;;;;;;;;;;

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
