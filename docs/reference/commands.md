# Command reference

Run `just` to list recipes. All commands run from the repository root.

- `just check`: tooling tests, configuration and docs checks, Quarto render,
  plus application checks in the Python template.
- `just tooling-test`: dependency-free hook and tooling tests.
- `just docs-check`: configuration, agent synchronization, and local documentation link checks.
- `just agents-sync`: regenerate full client files from AGENTS.md and the built-in shared skills.
- `just agents-check`: detect missing or stale client files without writing them.
- `just docs`: preview the Quarto site without opening a browser automatically.
- `just docs-build`: render the website into ignored `docs/_site/`.
