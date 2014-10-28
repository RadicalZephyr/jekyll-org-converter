(progn
  (require 'org)
  (condition-case nil (while t (insert (read-string "") "
")) (error nil))
  (set-buffer (org-export-to-buffer 'html
                  "*Org HTML Export*"
                nil
                nil
                nil
                t
                nil
                (lambda nil t)))
  (message "%s" (buffer-string)))
