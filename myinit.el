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

;; Set my agenda files:
(setq org-agenda-files (list "~/OneDrive/Notes"))

;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
