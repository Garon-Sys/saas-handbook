# ADR 0002 — Text under CC BY 4.0, code under MIT

- **Status:** Accepted
- **Date:** 2026-10-28

## Context

The book is public and aims to be a reference: people should be able to cite it, adapt it, and copy
the templates into their projects. Without an explicit license, none of that is legally allowed.

## Decision

The text is under **CC BY 4.0** (free use with attribution). Code examples, workflows, templates,
and scripts are under **MIT**, so they can be copied without a visible attribution requirement
inside the user's project.

## Alternatives considered

- **CC BY-SA for the text:** derived works would have to use the same license, which complicates a
  possible printed edition with a publisher.
- **CC BY-NC:** would forbid use in paid training and consulting, which is exactly one of the
  audiences.
- **A single license:** CC isn't suited to code, and MIT isn't suited to prose.

## Consequences

- Contributions come in under the same licenses; `CONTRIBUTING.md` and the PR template make this implicit.
- A future book remains possible, including a commercial one.
