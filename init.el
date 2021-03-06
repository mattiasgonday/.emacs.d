
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(setq package-archives '(("ELPA" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; Keep emacs Custom-settings in separate file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(defvar my-packages '(better-defaults paredit idle-highlight-mode ido-ubiquitous
                                      find-file-in-project magit smex spacemacs-theme flycheck))

(package-initialize)
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(load "spacemacs-dark-theme.el")
(global-flycheck-mode)

;Remove trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
