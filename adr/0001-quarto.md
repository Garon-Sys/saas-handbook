# ADR 0001 — The book is written in Quarto and published on GitHub Pages

- **Status:** Accepted
- **Date:** 2026-10-28

## Context

The book needs to be written in Markdown, versioned in Git, reviewed through PRs, published as a
website and, perhaps later, built as a PDF or EPUB. Diagrams must be text (Mermaid) so they are
reviewed in the PR like any other change.

## Decision

Use [Quarto](https://quarto.org/) in `book` mode, published automatically to GitHub Pages by a
GitHub Actions workflow on every merge to `main`.

## Alternatives considered

- **MkDocs Material:** excellent for technical documentation, with very good search, but it doesn't
  build book-style PDF and EPUB without third-party plugins.
- **mdBook:** simple and fast, but with fewer book features (parts, appendices, cross-references)
  and no native PDF output.
- **Docusaurus:** powerful, but it requires the Node ecosystem and is designed for product
  documentation, not books.

## Consequences

- The same source can produce a website, a PDF, and an EPUB. For now only HTML is enabled in
  `_quarto.yml`; PDF requires LaTeX, and EPUB with diagrams requires rendering Mermaid to images,
  which slows CI down. We'll turn them on when there's demand.
- Contributors need Quarto installed to preview. Editing in the browser on GitHub still works for
  small fixes.
