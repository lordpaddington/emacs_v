;; My Custom Shit:
;; Add this to init.el to load it: (load-file "~/.emacs.v/myinit.el")

(global-visual-line-mode t)
(desktop-save-mode 1)

;; WINDOWS:
(setq visible-bell 1)

;; Autofill mode:
(add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook 'turn-on-auto-fill)

;; Make CMD the Meta key instead of Alt, so I can use alt to enter
;; special characters.
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)

;; Platform dependent Dropbox Path:
(cond ((eq system-type 'windows-nt)
       (defvar homepath "C:/Users/vweyde")
       )
      ((eq system-type 'darwin)
       (defvar homepath "~")
       ))

(defvar orgpath (expand-file-name "Dropbox/Org" homepath))

;; Set my agenda files:
(setq org-agenda-files (list orgpath))


;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Other Shit
(display-time-mode 1)
(setq backup-directory-alist '(("." . "~/.emacs.v/backups")))
(prefer-coding-system 'utf-8)

;; Moving windows naturally:
(use-package windmove
  :bind
  (("<f2> <right>" . windmove-right)
   ("<f2> <left>" . windmove-left)
   ("<f2> <up>" . windmove-up)
   ("<f2> <down>" . windmove-down)
   ))

;; Capture Templates
(defvar notepad (expand-file-name "Notepad.org" orgpath))
(defvar todo (expand-file-name "Todo.org" orgpath))

(setq org-capture-templates
      '(
        ("t" "Todo" entry (file+headline todo "Tasks:")
         "* TODO %?\n")
        ("n" "Note" entry (file notepad)
         "* %U %?\n ")
        )
      )
