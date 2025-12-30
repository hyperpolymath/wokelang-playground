;; SPDX-License-Identifier: AGPL-3.0-or-later
;; NEUROSYM.scm - Neurosymbolic integration config

(define neurosym-config
  `((version . "1.0.0")
    (project . "wokelang-playground")
    (symbolic-layer
      ((type . "scheme")
       (reasoning . "deductive")
       (verification . "accessibility")
       (language-specific
         ((syntax . "natural-language")
          (errors . "empathetic")
          (semantics . "operational")))))
    (neural-layer
      ((embeddings . #f)
       (fine-tuning . #f)
       (inference . #f)))
    (integration
      ((ai-assisted-development . "duet-style")
       (naming-suggestions . #t)))))
