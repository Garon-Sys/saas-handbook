#!/usr/bin/env bash
# Creates the book's labels and initial issues on GitHub.
# Live example for Chapter 3 (Issues and GitHub Projects).
#
# Requirements: GitHub CLI (`gh`) installed and authenticated (`gh auth login`).
# Usage: ./scripts/bootstrap-issues.sh
#
# Safe to run again: labels are updated (--force) and issues whose title
# already exists are skipped.

set -euo pipefail

REPO="Garon-Sys/saas-handbook"

label() { gh label create "$1" --repo "$REPO" --color "$2" --description "$3" --force >/dev/null; echo "label: $1"; }

label "chapter"             "1d76db" "Write or rewrite a chapter"
label "fix"                 "d93f0b" "Error, broken link, or confusing passage"
label "structure"           "5319e7" "Book structure, tooling, or publishing"
label "live-example"        "0e8a16" "Repo configuration that serves as a chapter's example"
label "part-1-management"   "c5def5" "Part I — Management"
label "part-2-delivery"     "bfdadc" "Part II — Delivery"
label "part-3-operations"   "fef2c0" "Part III — Operations"
label "good first issue"    "7057ff" "Good for a first contribution"

issue() {
  local title="$1" labels="$2" body="$3"
  if gh issue list --repo "$REPO" --state all --search "in:title \"$title\"" --json title -q '.[].title' | grep -Fxq "$title"; then
    echo "exists:  $title"
    return
  fi
  gh issue create --repo "$REPO" --title "$title" --label "$labels" --body "$body" >/dev/null
  echo "created: $title"
}

review() {
  local n="$1" title="$2" file="$3" part="$4"
  issue "Review chapter $n: $title" "chapter,$part" "First draft in \`$file\`.

## Acceptance criteria
- [ ] Read end to end on the rendered site
- [ ] Examples checked, with no details from real systems
- [ ] The \"In this repository\" box points to something that exists
- [ ] At least one outside reader has commented"
}

# Repository setup (live examples)
issue "Enable GitHub Pages with GitHub Actions as the source" "structure,live-example" "Settings → Pages → Source: **GitHub Actions**. Without this, the workflow's publish job fails.

## Acceptance criteria
- [ ] The book opens at https://garon-sys.github.io/saas-handbook/"
issue "Create the book's board in GitHub Projects" "structure,live-example,part-1-management" "Fields, views, and automations exactly as in Chapter 3.

## Acceptance criteria
- [ ] Fields: Status, Priority, Part, Estimate, Iteration (2 weeks)
- [ ] Views: Backlog (Table), Current iteration (Board), Roadmap
- [ ] Automations: item added → Backlog; PR opened → In review; closed → Done
- [ ] Project is public and linked to the repository"
issue "Enable branch protection on main" "structure,live-example,part-2-delivery" "Require a PR and the *Render* and *Check links* checks before merging (Chapter 7)."
issue "Enable Discussions with conversation categories" "structure" "Suggested categories: Ideas, Q&A, Disagreements, Field reports."
issue "Evaluate PDF and EPUB output" "structure" "See ADR 0001. Measure CI time with LaTeX and with Mermaid rendered to images."

# Chapter reviews
review 1  "Method before tools"                "chapters/01-method.qmd"               "part-1-management"
review 2  "Where things live"                  "chapters/02-where-things-live.qmd"    "part-1-management"
review 3  "Issues and GitHub Projects"         "chapters/03-github-projects.qmd"      "part-1-management"
review 4  "Agile with iterations"              "chapters/04-agile.qmd"                "part-1-management"
review 5  "Documentation"                      "chapters/05-documentation.qmd"        "part-1-management"
review 6  "People"                             "chapters/06-people.qmd"               "part-1-management"
review 7  "Code flow and pull requests"        "chapters/07-code-flow.qmd"            "part-2-delivery"
review 8  "The flow in VS Code"                "chapters/08-vscode.qmd"               "part-2-delivery"
review 9  "CI/CD and environments"             "chapters/09-ci-cd.qmd"                "part-2-delivery"
review 10 "Safe migrations and feature flags"  "chapters/10-migrations-and-flags.qmd" "part-2-delivery"
review 11 "Observability and alerts"           "chapters/11-observability.qmd"        "part-3-operations"
review 12 "Backups, RPO, and RTO"              "chapters/12-backups.qmd"              "part-3-operations"
review 13 "Incidents and postmortems"          "chapters/13-incidents.qmd"            "part-3-operations"
review 14 "Security, secrets, and access"      "chapters/14-security.qmd"             "part-3-operations"

issue "Fix links and typos found on first read" "fix,good first issue" "An umbrella issue for small fixes. Comment with what you find, or open a PR directly."

echo "Done. Add the issues to the project board (or enable the auto-add workflow)."
