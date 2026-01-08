# SPDX-License-Identifier: AGPL-3.0-or-later
# config.ncl - WokeLang Playground Configuration
# Type-safe configuration using Nickel
# See: https://nickel-lang.org

{
  # Project metadata
  project = {
    name = "wokelang-playground",
    version = "0.1.0",
    description = "Teaching playground for WokeLang - human-centric programming",
    license = "AGPL-3.0-or-later",
    author = "Jonathan D.A. Jewell",
    repository = "https://github.com/hyperpolymath/wokelang-playground",
  },

  # Language configuration
  language = {
    name = "WokeLang",
    extension = ".woke",
    paradigm = "multi-paradigm",
    focus = "human-centric",
    features = [
      "natural-syntax",
      "accessibility-first",
      "inclusive-naming",
      "helpful-errors",
    ],
  },

  # CLI configuration
  cli = {
    runtime = "deno",
    entry_point = "src/main.ts",
    permissions = [
      "--allow-read",
      "--allow-write",
      "--allow-env",
    ],
    commands = [
      "run",
      "check",
      "repl",
      "a11y-check",
      "a11y-report",
    ],
  },

  # Accessibility configuration
  accessibility = {
    screen_reader_friendly = true,
    high_contrast_output = true,
    verbose_errors = true,
    inclusive_language = true,
  },

  # Development settings
  development = {
    watch_dirs = [
      "src",
      "examples",
      "test",
    ],
    test_pattern = "test/**/*.test.ts",
    lint_ignore = [
      "node_modules",
      "lib",
    ],
  },

  # Deployment configuration
  deployment = {
    container = {
      enabled = true,
      registry = "ghcr.io/hyperpolymath",
      image = "wokelang-playground",
      base_image = "denoland/deno:alpine",
    },
    platforms = [
      "linux/amd64",
      "linux/arm64",
    ],
  },
}
