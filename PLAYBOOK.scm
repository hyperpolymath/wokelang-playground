;; SPDX-License-Identifier: AGPL-3.0-or-later
;; PLAYBOOK.scm - Operational runbook

(define playbook
  `((version . "1.0.0")
    (project . "wokelang-playground")
    (procedures
      ((build
         (("setup" . "deno task setup")
          ("build" . "deno task build")
          ("test" . "deno task test")))
       (run
         (("repl" . "deno task repl")
          ("example" . "deno task run examples/greeting.woke")))
       (accessibility
         (("check" . "deno task a11y-check")
          ("report" . "deno task a11y-report")))))
    (alerts ())
    (contacts ())))
