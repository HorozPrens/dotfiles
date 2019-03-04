
(require 'lorem-ipsum)

(general-nmap
  :prefix "SPC l"
  "p" 'lorem-ipsum-insert-paragraphs
  "s" 'lorem-ipsum-insert-sentences
  "l" 'lorem-ipsum-insert-list)


(provide 'init-lorem-ipsum)
