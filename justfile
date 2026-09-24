set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

python := if os() == "windows" { "python" } else { "python3" }

default:
    @just --list

# Validate repository tooling without application dependencies.
tooling-test:
    {{python}} -m unittest discover -s tooling_tests -v

# Check links, configuration, and the shared agent adapters.
docs-check:
    {{python}} scripts/check_repo.py

# Preview documentation without opening a browser.
docs:
    quarto preview docs --no-browser

# Render the documentation website.
docs-build:
    quarto render docs

check: tooling-test docs-check docs-build
