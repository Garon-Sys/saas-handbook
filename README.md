# SaaS Handbook

An open book on **managing and operating software as a service for small teams** of one to eight people.

What sets it apart is that **this repository is its own example**: it uses everything it teaches. The chapter on GitHub Projects points to this repo's board; the chapter on CI points to the workflow that publishes the book; the PR and issue templates live in `.github/`; the book's own decisions live in `adr/`.

📖 **Read online:** <https://garon-sys.github.io/saas-handbook/>

🇧🇷 **Portuguese edition:** [Manual SaaS](https://github.com/Garon-Sys/manual-saas)

## What's inside

| Part | Topics |
| --- | --- |
| I — Management | Method, where things live, GitHub Projects, agile with iterations, documentation, people |
| II — Delivery | Code flow and PRs, the flow in VS Code, CI/CD and environments, safe migrations and feature flags |
| III — Operations | Observability, backups, incidents and postmortems, security |
| Appendices | Ready-to-use templates, rollout plan, reading path, glossary |

The examples use **Farol**, a fictional personal-finance SaaS with a Django backend and a React frontend. It is invented on purpose: no data, address, or infrastructure detail from a real product appears in the book.

## Running it locally

1. Install [Quarto](https://quarto.org/docs/get-started/) (version 1.5 or newer).
2. From the repository folder:

   ```bash
   quarto preview
   ```

3. The book opens in your browser and reloads every time you save a file.

To build the final version into `_book/`, run `quarto render`.

## Contributing

Feedback from people who do this for a living is what improves the book most.

- **Conversation, opinions, disagreement:** open a Discussion.
- **A specific error or suggestion:** open an issue with the "Fix or suggestion" template.
- **New text or a correction:** open a PR. The guide is in [CONTRIBUTING.md](CONTRIBUTING.md).

## License

- Book text: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/). Copy and adapt freely, with attribution.
- Code and configuration examples: [MIT](LICENSE-CODE).

Details in [LICENSE.md](LICENSE.md).
