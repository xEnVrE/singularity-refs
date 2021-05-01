(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq c-default-style "linux" c-basic-offset 4)
(global-subword-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (tango-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'before-save-hook
          (lambda ()
            (when (not (derived-mode-p 'ein:notebook-multilang-mode))
              (delete-trailing-whitespace))))
(global-unset-key "\C-x\C-b")
