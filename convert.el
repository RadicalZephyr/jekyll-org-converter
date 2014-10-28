(progn
  (require 'org)
  (setq org-html-head-include-default-style nil)
  (setq org-html-head-include-scripts       nil)
  (condition-case nil (while t (insert (read-string "") "")) (error nil))
  (set-buffer (org-export-to-buffer 'html
                  "*Org HTML Export*"
                nil
                nil
                nil
                t
                nil
                (lambda nil t)))
  (message "%s" (buffer-string)))
