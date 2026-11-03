# ADR 0005 — The English edition lives in its own repository

- **Status:** Accepted
- **Date:** 2026-11-02

## Context

The book was first written in Portuguese, in [Garon-Sys/manual-saas](https://github.com/Garon-Sys/manual-saas).
An English edition is needed to reach a wider audience and to serve as a portfolio piece.

## Decision

The English edition is a separate repository, `Garon-Sys/saas-handbook`, with English file names,
section IDs, templates, and workflow. ADRs 0001 to 0004 are carried over from the Portuguese
edition.

## Alternatives considered

- **Both languages in one Quarto project:** Quarto has no first-class multilingual book support;
  it would mean two `_quarto.yml` profiles, doubled CI, and mixed-language issues and PRs.
- **English only, retiring the Portuguese edition:** loses the original audience, for whom good
  material in Portuguese is scarce.

## Consequences

- Each edition has its own board, issues, and site, in its own language.
- Changes to content must be ported by hand between editions. A content change in one edition
  should open a matching issue in the other.
