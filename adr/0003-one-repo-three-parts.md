# ADR 0003 — One repository, with Management, Delivery, and Operations

- **Status:** Accepted
- **Date:** 2026-10-28

## Context

The initial idea was one repository for project management and, later, another for operations.
But the topics overlap: CI shows up in both, every incident creates backlog items, and runbooks
are documentation.

## Decision

A single repository, split into three parts: **Management**, **Delivery**, and **Operations**,
plus appendices with templates.

## Alternatives considered

- **Two repositories:** would duplicate configuration, CI, and templates, and break the
  cross-references between chapters.

## Consequences

- One site, one search, one work board.
- If a part grows into a book of its own, it can move to its own repository, with a new ADR.
