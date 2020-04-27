;;; init.el --- Initialization file for Emacs
;;; Commentary:
;;;   Emacs Startup File

;;; Code:

;; Enable some special characteres
(require 'iso-transl)

;; Remove startup message
(setq inhibit-startup-message t)

;; Remove main menu and icons toolbar
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remove scrool bar
(scroll-bar-mode -1)

; Enable numering lines
(global-linum-mode t)

; Set default font size
(set-face-attribute 'default nil :height 200)

; Packages configuratios
(require 'package)
(setq package-enable-startup nil)

; Add MELPA repository
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize) ; package initilization

; Install package use-package unless it exists
(unless (package-installed-p 'use-package)
 (package-refresh-contents)
 (package-install 'use-package)
 )

; Package try
(use-package try
  :ensure t)

; Package WhichKey
(use-package which-key
  :ensure t
  :config
  (progn
    (which-key-setup-side-window-right-bottom)
    (which-key-mode)
  )
  )

(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
  )
)

(use-package all-the-icons
  :ensure t)


(use-package neotree
  :ensure t
  :config
  (progn
    (setq neo-theme 'sample)
  )
  )

(use-package ace-window
  :ensure t
  :bind (
	 ("C-x o" . ace-window)
	)
  )

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  )


(use-package cyberpunk-theme
  :ensure t
  )

(use-package alect-themes
  :ensure t
  )

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'zenburn t)
;;(load-theme 'sanityinc-tomorrow-bright t)
;;(load-theme 'cyberpunk t)
(load-theme 'alect-black t)

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode t)
  )

;
; Personal shortcuts
;
(global-set-key [f8] 'neotree-toggle)
(global-set-key (kbd "C-<tab>") 'other-window)



;
; Automatic settings
;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   (quote
    ("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "2074a98e21377af1c50897d4330caca2b719542bcdf9618ed3c1575c99b41363" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (flycheck alect-themes cyberpunk-theme color-theme-sanityinc-tomorrow ace-window all-the-icons neitree auto-complete which-key use-package try)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;; init.el ends here


