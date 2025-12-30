;; SPDX-License-Identifier: AGPL-3.0-or-later
;; ECOSYSTEM.scm - Ecosystem positioning

(ecosystem
  (version . "1.0.0")
  (name . "wokelang-playground")
  (type . "language-playground")
  (purpose . "Human-centric accessible programming language")

  (position-in-ecosystem
    ((parent . "language-playgrounds")
     (grandparent . "nextgen-languages")
     (category . "human-centric-languages")))

  (related-projects
    ((mylang-playground
       ((relationship . "sibling-standard")
        (description . "Progressive language family")))
     (phronesis-playground
       ((relationship . "sibling-standard")
        (description . "Ethics and human values")))
     (scratch
       ((relationship . "inspiration")
        (description . "Accessible programming concepts")))))

  (what-this-is
    ("Human-centric language design"
     "Accessibility-first programming"
     "Inclusive naming conventions"))

  (what-this-is-not
    ("Performance-focused"
     "Systems programming"
     "Compiler optimization")))
