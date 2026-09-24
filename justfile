set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

python := if os() == "windows" { "python" } else { "python3" }

default:
    @just --list

# Validate repository tooling without application dependencies.
tooling-test:
    {{python}} -m unittest discover -s tooling_tests -v

# Check links, configuration, and complete agent instructions and skills.
docs-check:
    {{python}} scripts/check_repo.py

# Preview documentation without opening a browser.
docs:
    quarto preview docs --no-browser

# Render the documentation website.
docs-build:
    quarto render docs

check: tooling-test docs-check docs-build

# Update complete client files after editing AGENTS.md or a shared skill.
agents-sync:
    {{python}} scripts/sync_agent_instructions.py

# Detect missing or stale client instruction and skill files.
agents-check:
    {{python}} scripts/sync_agent_instructions.py --check
