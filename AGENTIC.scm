;; SPDX-License-Identifier: AGPL-3.0-or-later
;; AGENTIC.scm - AI agent interaction patterns

(define agentic-config
  `((version . "1.0.0")
    (project . "wokelang-playground")
    (claude-code
      ((model . "claude-opus-4-5-20251101")
       (tools . ("read" "edit" "bash" "grep" "glob"))
       (permissions . "read-all")))
    (patterns
      ((code-review . "thorough")
       (refactoring . "conservative")
       (testing . "comprehensive")
       (accessibility . "mandatory")))
    (constraints
      ((languages . ("rescript" "scheme"))
       (banned . ("typescript" "go" "python" "makefile"))))
    (project-specific
      ((naming . "inclusive-guidelines")
       (errors . "helpful-non-judgmental")
       (output . "screen-reader-friendly")))))
