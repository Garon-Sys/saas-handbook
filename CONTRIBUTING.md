# Contributing

Thanks for wanting to improve the book. This repository follows the same flow the book teaches, so contributing is also a way to practice it.

## Before you start

- **A big idea or disagreement?** Open a Discussion first. Changing the book's structure calls for a conversation.
- **An error, broken link, or confusing passage?** Open an issue with the "Fix or suggestion" template, or go straight to a PR.
- **Writing a chapter or section?** Find the matching issue on the project board and comment that you'll take it.

## The flow

1. Every change starts from an issue (except typo fixes).
2. Create a short branch from `main`: `12-incidents-chapter`.
3. Run `quarto preview` and check the result in your browser.
4. Open the PR and fill in the template. Write `Closes #12` so the issue closes on merge.
5. CI renders the book and checks the links. Only green CI gets merged.
6. After the merge, the book is published to GitHub Pages automatically.

## Commit messages

We use [Conventional Commits](https://www.conventionalcommits.org/), with the chapter as the scope:

```
docs(ch-03): explain custom fields in Projects
fix(ch-09): fix the CI workflow example
ci: add link checking
chore: bump the Quarto version
```

## Writing style

- **Plain English**, direct, in the second person ("you").
- **Lead every section with the conclusion.** The why comes after.
- **Short sentences**, ideally under 25 words.
- **A concrete example whenever possible**, ideally pointing to something real in this repository.
- **The case study is Farol**, a fictional SaaS. Don't use names, addresses, providers, or infrastructure details from real products.
- **Established technical terms** (pull request, deploy, runbook) are used as is; the first time one appears, explain it and add it to the glossary (Appendix D).
- **Diagrams in Mermaid**, inside the `.qmd` itself, so they are reviewed as text.

## Decisions

Changes to the book's structure, tooling, or license become an ADR in `adr/`. Use `adr/0000-template.md`.
