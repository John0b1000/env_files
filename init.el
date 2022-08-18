;; file: /Users/johnnori/.emacs.d/init.el
;;

;; this file sets various variables and modes for the emacs editor
;;

;;---------------------------------------------------------------------------;;
;;									     ;;
;; backup/journal/auto-save related settings				     ;;
;;									     ;;
;;---------------------------------------------------------------------------;;

;; turn off backup/copy modes
;;
(setq make-backup-files nil)
;;(setq backup-by-copying nil)
;;(setq backup-by-copying-when-linked t)
;;(setq backup-by-copying-when-mismatch t)

;; turn off auto-save modes
;;
(setq auto-save-interval 0)
(setq auto-save-default nil)

;;---------------------------------------------------------------------------;;
;;									     ;;
;; misc. modes and interactive settings					     ;;
;;									     ;;
;;---------------------------------------------------------------------------;;

;; disable the menu bar
;;
(menu-bar-mode nil)
(unless (display-graphic-p)
   (menu-bar-mode -1))

;; turn off prompts warning you about loading large files
;;
(setq large-file-warning-threshold nil)

;; turn off the annoying suggest key bindings mode
;;
(setq suggest-key-bindings nil)

;; set default mode for new buffers
;;
(setq default-major-mode 'fundamental-mode)

;; turn off message logging
;;
(setq message-log-max 0)

;; activate linenumber mode
;;
(setq line-number-mode t)

;; prompt for terminating files with linefeed
;;
(setq require-final-newline 'ask)

;; set the default printer command
;;
(setq lpr-command "lp")
(setq lpr-switches '("-o nobanner" "-m"))

;; case:
;;  these statements make the downcase/upcase commands less intelligent
;;  by forcing them to ignore case. this is a compromise between the needs
;;  of programmers and text processors.
;;
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;
;; end of file
