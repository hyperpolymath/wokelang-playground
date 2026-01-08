# SPDX-License-Identifier: AGPL-3.0-or-later
# WokeLang Playground - Task Runner
# Run tasks with: just <recipe>

# Default recipe - show help
default:
    @just --list

# ============================================
# BUILD
# ============================================

# Build everything
build:
    @echo "Building WokeLang..."
    deno task build
    @echo "✓ Build complete"

# Check without running
check:
    @echo "Type checking..."
    deno task check
    @echo "✓ Check passed"

# Clean build artifacts
clean:
    @echo "Cleaning build artifacts..."
    deno task clean
    @echo "✓ Clean complete"

# ============================================
# RUN
# ============================================

# Run a WokeLang file
run example="greeting":
    deno task run examples/{{example}}.woke

# Start REPL (interactive mode)
repl:
    deno task repl

# List available examples
examples:
    @echo "Available examples:"
    @ls -1 examples/*.woke 2>/dev/null | sort

# ============================================
# TEST
# ============================================

# Run all tests
test:
    @echo "Running tests..."
    deno task test
    @echo "✓ Tests passed"

# Run tests in watch mode
test-watch:
    deno task test --watch

# ============================================
# LINT & FORMAT
# ============================================

# Lint code
lint:
    @echo "Linting..."
    deno lint
    @echo "✓ Lint passed"

# Format code
fmt:
    deno fmt

# Check formatting (no changes)
fmt-check:
    deno fmt --check

# ============================================
# ACCESSIBILITY
# ============================================

# Run accessibility checks
a11y-check:
    @echo "Running accessibility checks..."
    deno task a11y-check
    @echo "✓ Accessibility check passed"

# Generate accessibility report
a11y-report:
    deno task a11y-report

# ============================================
# DEVELOPMENT
# ============================================

# Setup dependencies
setup:
    @echo "Setting up WokeLang Playground..."
    deno task setup
    @echo "✓ Setup complete"

# Full check (lint + format + type check)
pre-commit: lint fmt-check check
    @echo "✓ All pre-commit checks passed"

# ============================================
# STATISTICS
# ============================================

# Count lines of code
loc:
    @echo "Lines of Code:"
    @find src -name "*.ts" -exec wc -l {} + 2>/dev/null | tail -1 || echo "  0 total"

# Show project stats
stats:
    @echo "WokeLang Playground Statistics"
    @echo "=============================="
    @echo "Source files: $(find src -name '*.ts' 2>/dev/null | wc -l)"
    @echo "Examples: $(ls -1 examples/*.woke 2>/dev/null | wc -l)"
    @echo "Tests: $(find test -name '*.test.ts' 2>/dev/null | wc -l)"
