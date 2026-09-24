# Customize a generated project

Create a new repository with GitHub's template button, then clone it. Templates copy
files, not repository settings, secrets, variables, or release history.

Change the README heading, description, repository links, Quarto title, and example
commands. Choose your project's license; preserve existing MIT notices when reusing
this starter's code. Update copyright for your additions. Review AGENTS.md and
the default branch setting in `.github/repository-policy.json`.


Add your language's source layout, package manager, and tests when you choose a stack.
Extend `just check` with those checks and add their setup steps to CI. Preserve the
existing tooling tests and documentation checks. Change release-please's strategy
from `simple` when a language-specific package version becomes authoritative.


Review and trust the client hooks as described in [AI tooling](ai-tooling.md).
Follow [versioning](versioning.md) for the new repository's release setup.
Run the complete README setup from a fresh clone before inviting contributors.
