# General Template

A language-neutral starting point with just, Quarto, and reusable Claude/Codex workflows.

Use GitHub's **Use this template** button to create a new repository, then clone it.
Start on a feature branch: `git switch -c chore/customize-template`.

## Get started

Follow the [step-by-step first-project tutorial](docs/tutorials/first-project.md)
to create your repository, install the tools, run the checks, and open your first PR.
For an existing copy, use the [customization how-to](docs/how-to/customize.md).

## Install the tools

- [Git](https://git-scm.com/downloads) and [just](https://just.systems/man/en/).
- [Quarto](https://quarto.org/docs/get-started/), installed as a standalone CLI.
- Python 3.13+ for repository tooling and commit hooks. On Windows, expose `python` on PATH;
  on macOS/Linux, expose `python3` and provide `python` for Claude command hooks.

There is no application package manager or Python application here. The small Python scripts
use only the standard library for repository checks and hooks; uv is not required.

On Windows, just uses PowerShell. On macOS/Linux it uses the default shell.
Verify `git --version`, `just --version`, `quarto --version`, and your Python command first.

## Start working

```sh
just tooling-test
just check
just docs
```

The first run builds the documentation as part of the checks. Preview prints a local URL;
stop it with Ctrl+C. Generated files are ignored.

## Make it yours

Follow [customization](docs/how-to/customize.md) to change the project name, links,
license, and configuration. Read [versioning](docs/how-to/versioning.md) before dependency
changes or releases. The [command reference](docs/reference/commands.md) describes each recipe.

The Quarto site has all four Diataxis sections: tutorials, how-to, reference, and explanation.
Start with [your first change](docs/tutorials/first-project.md).

## AI workflows

Shared instructions live in [AGENTS.md](AGENTS.md). Both Claude and Codex get committer,
PR manager, and docs maintainer agents, backed by canonical skills. Review and trust their
runtime hooks using [the setup guide](docs/how-to/ai-tooling.md). Agents require explicit
commit authorization and preserve authorization already given for the task.

CI runs on Windows and Ubuntu. Documentation builds locally and in CI; publishing the site
is an [opt-in step](docs/how-to/documentation.md).

## License

MIT. Preserve the supplied notice for reused template code and choose an appropriate license for your additions.
