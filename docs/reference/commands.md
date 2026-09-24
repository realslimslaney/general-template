# Command reference

Run `just` to list recipes. All commands run from the repository root.

- `just check`: tooling tests, configuration and docs checks, Quarto render,
  plus application checks in the Python template.
- `just tooling-test`: dependency-free hook and tooling tests.
- `just docs-check`: configuration and local documentation link checks.
- `just docs`: preview the Quarto site without opening a browser automatically.
- `just docs-build`: render the website into ignored `docs/_site/`.
