;; SPDX-License-Identifier: AGPL-3.0-or-later
;; STATE.scm - Current project state

(state
  (version . "1.0.0")
  (phase . "framework")
  (updated . "2025-12-30T18:00:00Z")

  (project
    (name . "wokelang-playground")
    (tier . "satellite")
    (license . "AGPL-3.0-or-later")
    (language . "rescript"))

  (compliance
    (rsr . #t)
    (security-hardened . #t)
    (ci-cd . #f)
    (guix-primary . #f)
    (nix-fallback . #f))

  (current-position
    ((overall-completion . 10)
     (components
       ((specification . 30)
        (parser . 0)
        (accessibility . 0)
        (error-messages . 0)))
     (working-features
       ("README documentation"
        "Language design concepts"))))

  (milestones
    (v0.1.0
      (status . "planned")
      (features
        "Natural language parser"
        "Accessible output"
        "Helpful error messages"))))
