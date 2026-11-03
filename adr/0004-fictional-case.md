# ADR 0004 — Examples use a fictional SaaS, Farol

- **Status:** Accepted
- **Date:** 2026-10-28

## Context

The book grew out of experience with a real product whose repository is private. Concrete examples
teach far better than abstract ones, but publishing a real product's internal paths, providers,
domains, or security details maps out its attack surface.

## Decision

All examples use **Farol** (Portuguese for "lighthouse"), a fictional personal-finance SaaS with a
Django backend, a React frontend, and a fictional bank aggregator. No name, address, provider, or
infrastructure detail from a real product goes into the book.

## Alternatives considered

- **Using the real product as the case:** more authentic, but risky and hard to review in every PR.
- **Generic examples with no product:** safe, but too abstract to teach.

## Consequences

- Reviewers must block, in the PR, any detail that identifies a real system.
- Farol may get its own example repository in the future, with real code for the CI, migrations,
  and feature-flag chapters.
