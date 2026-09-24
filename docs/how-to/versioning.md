# Release a language-neutral project

Release-please owns `version.txt`, `CHANGELOG.md`, and its manifest. The starter
begins at 0.1.0. Do not bump these files in ordinary feature commits.

Use Conventional Commits: `fix:` creates a patch release, `feat:` creates a minor
release, and `feat!:` or a `BREAKING CHANGE:` footer creates a major release.
This template uses those rules even before 1.0. Other commit types alone do not
necessarily create a release. Use a Conventional Commit title for squash merges.

On a push to main, the workflow opens or updates a release PR. Review its version
and changelog. Merging that PR causes the next workflow run to create a tag and
GitHub release. It never merges the PR automatically or publishes a package.

## Configure a generated repository

In Settings > Actions > General, allow GitHub Actions to create pull requests.
The workflow grants contents, issues, and pull-requests write permissions.
It uses `GITHUB_TOKEN` unless you provide a `RELEASE_PLEASE_TOKEN` secret.

GitHub prevents most workflows from being triggered by changes made with its
default token, so bot-created release PRs may not run ordinary PR CI. Before merging,
run CI manually with `workflow_dispatch` on the release branch, or configure a
fine-grained token with repository Contents, Issues, and Pull requests read/write
permissions (or an equivalent GitHub App token) as `RELEASE_PLEASE_TOKEN`.
A template does not copy these settings or secrets to a generated repository.

Keep the manifest at the initial version for a fresh project; do not copy release
history from a different project. If you rename the default branch, update both
workflows. To use manual versioning, disable the release workflow and document
the new version source before making manual bumps.


## Choosing another policy

Both policies use semantic versions and Conventional Commits. They differ in when
the version changes: alongside implementation, or in a dedicated release PR.
Use one authoritative policy at a time so agents and automation do not compete.

Release-please supports Python's `pyproject.toml` and changelog. A uv project also
needs `uv lock` after the release PR changes its package version; add that update to
the release-PR workflow and retain `uv sync --locked` in CI. Do not assume the Python
strategy refreshes `uv.lock`. PyPI publishing is a separate, explicitly configured job.

See [release-please](https://github.com/googleapis/release-please-action) and
its [Python strategy](https://github.com/googleapis/release-please/blob/main/src/strategies/python.ts).
