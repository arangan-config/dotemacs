(package-initialize)                   ; Keep this line always at the top
(toggle-frame-maximized)               ; maximize emacs -- works for both windows and linux
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode 1)
(setq inhibit-startup-message t)
(setq ring-bell-function 'ignore)
(setq column-number-mode t)            ; show the column
(setq make-backup-files nil)           ; do not make backup files
(setq indent-tabs-mode nil)            ; always use spaces, not tabs, when indenting

(fset 'yes-or-no-p 'y-or-n-p)          ; eliminate long "yes" or "no" prompts

;; check OS type
;;---------------------------
(cond
   ((string-equal system-type "windows-nt") ; Microsoft Windows
      (set-face-font 'default "Consolas-10")
      (setq default-directory "d:/users/arvind" )
   )
   ((string-equal system-type "darwin")     ; Mac OS X
      (setq default-directory "~/" )
      (set-face-font 'default "DejaVu Sans Mono-10")
   )
   ((string-equal system-type "gnu/linux")  ; Linux
      (setq default-directory "~/" )
      (set-face-font 'default "DejaVu Sans Mono-10")
   )
)

(when (require 'powerline nil 'noerror)
(powerline-default-theme))

(when (require 'evil nil 'noerror)
(evil-mode 0))

(when (require 'auto-complete-config nil 'noerror)
(ac-config-default))

;; Global Shortcuts
;;---------------------------
(global-set-key [f8] 'calendar)

;; Load the MELPA URL
;;---------------------------
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-dark)))
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(ido-mode (quote both) nil (ido))
 '(ido-enable-flex-matching t)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
;;(load-theme 'solarized-dark t)
