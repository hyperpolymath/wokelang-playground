# SPDX-License-Identifier: AGPL-3.0-or-later
# WokeLang Playground justfile

default:
    @just --list

# Setup dependencies
setup:
    deno task setup

# Build the project
build:
    deno task build

# Run tests
test:
    deno task test

# Type check only
check:
    deno task check

# Run an example
run example="greeting":
    deno task run examples/{{example}}.woke

# Start REPL
repl:
    deno task repl

# Accessibility check
a11y-check:
    deno task a11y-check

# Generate accessibility report
a11y-report:
    deno task a11y-report

# Clean build artifacts
clean:
    deno task clean
