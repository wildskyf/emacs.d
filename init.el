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

(global-unset-key (kbd "C-z"))





;;;;;;;;;;;;;;;;;;;;;
; some minor setting
;;;;;;;;;;;;;;;;;;;;;;;

(setq linum-format "%4d \u2502 ")

(global-linum-mode t)
(menu-bar-mode -1)
(tool-bar-mode -1)



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
 '(package-selected-packages
   (quote
    (evil fiplr editorconfig powerline smex web-mode colour-region column-enforce-mode column-marker rainbow-mode org))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
