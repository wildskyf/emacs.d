;; package.el 相關設定
(require 'package)

(setq package-archives '(
			 ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ;("melpa" . "http://melpa.org/packages/")
			 ("melpa-stable" . "http://stable.melpa.org/packages/")))
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(load-theme 'monokai t)


;;;;;;;;;;;;;;;;;;;;;
; some minor setting
;;;;;;;;;;;;;;;;;;;;;;;


; 行數
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

; disable ctrl-z
(global-unset-key (kbd "C-z"))

; highlight 當前行
(global-hl-line-mode 1)
(set-face-background 'hl-line "#3e4446")

; remember last position
(save-place-mode)

; disable toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)





;;;;;;;;;;;;;;;;;;;
; rainbow-mode
;;;;;;;;;;;;;;;;;;;;;;

(define-globalized-minor-mode global-rainbow-mode rainbow-mode
  (lambda () (rainbow-mode 1)))

(global-rainbow-mode 1)

;;;;;;;;;;;;;;;;;;;;
; evil
;;;;;;;;;;;;;;;;;;;;;;;

(evil-mode 1) ;啟動emacs載入evil，同時默認進入Vim模式 
;要在Vim裡面使用emacs的功能！OK，使用\作為leader就OK了 
;我還要在emacs和vim模式裡面切換：Cz 


;;;;;;;;;;;;;;;;;;;;;
; powerline
;;;;;;;;;;;;;;;;;;;;;;

(powerline-center-theme)


;;;;;;;;;;;;;;;;;;;;
; fiplr
;;;;;;;;;;;;;;;;;;;;;;
(setq fiplr-root-markers '(".git" ".svn"))
(setq fiplr-ignored-globs '((directories (".git" ".svn"))
                            (files ("*.jpg" "*.png" "*.zip" "*~"))))
(global-set-key (kbd "C-x p") 'fiplr-find-file)





;;;;;;;;;;;;
; web-mode
;;;;;;;;;;;;;;;

;(require 'web-mode)
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


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282C34" "#00ff00" "#a6e22e" "#e6db74" "#61AFEF" "#FD5FF0" "#56B6C2" "#ABB2BF"])
 '(compilation-message-face (quote default))
 '(custom-safe-themes
   (quote
    ("a800120841da457aa2f86b98fb9fd8df8ba682cebde033d7dbf8077c1b7d677a" default)))
 '(fci-rule-color "#3e4446")
 '(highlight-changes-colors (quote ("#FD5FF0" "#ae81ff")))
 '(highlight-tail-colors
   (quote
    (("#3e4446" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3e4446" . 100))))
 '(magit-diff-use-overlays nil)
 '(package-selected-packages
   (quote
    (magit evil fiplr editorconfig powerline smex web-mode colour-region column-enforce-mode column-marker rainbow-mode org)))
 '(pos-tip-background-color "#a6e22e")
 '(pos-tip-foreground-color "#282C34")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#00ff00")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#e6db74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#a6e22e")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#56B6C2")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#61AFEF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#282C34" "#3e4446" "#F70057" "#00ff00" "#86C30D" "#a6e22e" "#BEB244" "#e6db74" "#40CAE4" "#61AFEF" "#FB35EA" "#FD5FF0" "#74DBCD" "#56B6C2" "#ABB2BF" "#282C34")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
