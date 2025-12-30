;; SPDX-License-Identifier: AGPL-3.0-or-later
;; META.scm - Project metadata and architecture decisions

(define project-meta
  `((version . "1.0.0")
    (name . "wokelang-playground")
    (architecture-decisions
      ((adr-001
         ((status . "accepted")
          (date . "2025-12-30")
          (context . "Need human-centric programming language")
          (decision . "Prioritize readability, accessibility, and inclusive design")
          (consequences . "Natural syntax, screen reader support, helpful errors")))))
    (development-practices
      ((code-style . "rescript-standard")
       (security . "openssf-scorecard")
       (testing . "property-based")
       (versioning . "semver")
       (documentation . "asciidoc")
       (branching . "trunk-based")))
    (design-rationale
      ((why-natural . "Programming should read like prose")
       (why-accessible . "Everyone should be able to code")
       (why-inclusive . "Language shapes thought")))))
