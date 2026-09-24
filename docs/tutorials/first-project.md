# Create your first project

By the end, you will have your own repository based on General Template, passing checks,
a local documentation website, and a first draft PR.

## 1. Create and clone your repository

Open [general-template](https://github.com/realslimslaney/general-template) and select
**Use this template > Create a new repository**. Choose your owner, name, and visibility.
This creates an independent project; use the template button rather than forking if
you want a fresh history.

Clone your new repository. Replace YOUR-OWNER and MY-PROJECT in these commands:

```sh
git clone https://github.com/YOUR-OWNER/MY-PROJECT.git
cd MY-PROJECT
git switch -c chore/customize-template
```

Run the remaining commands from this folder.

## 2. Install the tools and verify the starter

Install [Git](https://git-scm.com/downloads), [just](https://just.systems/man/en/),
[Quarto](https://quarto.org/docs/get-started/), and Python 3.13+.
On Windows, make `python` available on PATH. On macOS/Linux use `python3`,
and provide `python` for Claude's command hook. just uses PowerShell on Windows.

Python runs only the dependency-free repository checks and hooks. You do not need
uv, a Python package, Node, or a notebook engine to complete this tutorial.

Check `git --version`, `just --version`, `quarto --version`, and your Python command,
then run:

```sh
just check
```

`just check` should finish successfully. It runs the repository tests,
checks documentation links and configuration, and builds the Quarto site.
If a command is missing, finish installing that tool before continuing.
The [command reference](../reference/commands.md) explains each recipe.

## 3. Make the starter yours

Change the README title and description and the website title in `docs/_quarto.yml`.
Keep the shared tooling while you choose an application language. When you add
your stack, add its checks to `just check` and its installation to the CI workflow.
See [the customization how-to](../how-to/customize.md) for the full checklist.

Update the license for your additions while preserving the supplied MIT notice for
reused starter code. Review AGENTS.md and the [AI tooling guide](../how-to/ai-tooling.md)
before trusting repository hooks in Claude or Codex.

Read [versioning](../how-to/versioning.md) to enable GitHub Actions PR creation
for release-please. The files are copied from the template, but repository settings
and secrets are not. You can finish this documentation-only exercise without creating a release.

## 4. Preview a documentation change

Change this tutorial's title to one meaningful to your project, then run:

```sh
just docs
```

Open the localhost URL printed by Quarto and find the changed page under Tutorials.
Stop preview with Ctrl+C. Run `just check` again and inspect `git diff`.
Rendered output in docs/_site is ignored and should not appear in your changes.

## 5. Commit and open a draft PR

Stage only the files you intentionally changed. For example, if you changed only
this tutorial:

```sh
git add docs/tutorials/first-project.md
git commit -m "docs: personalize the first-project tutorial"
git push -u origin chore/customize-template
```

If you also customized other files, inspect and stage those explicit paths before
committing. Keep the commit command separate from staging and directory changes.

Open a draft PR on GitHub describing the changes and `just check` result.
CI should pass on Windows and Ubuntu. When using an agent, explicitly authorize
the intended commit and push; the supplied committer and PR manager handle those
steps within that authorization.

Your repository is ready for project work. Add documentation to the appropriate
Diataxis category as behavior grows. [Publishing the website](../how-to/documentation.md)
is optional and separate from publishing the source repository.
