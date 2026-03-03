# AGENTS.md — Software Factory (AI-Native SDLC OS)

## Goal
Build a one-stop platform where a single builder can cover:
- Problem definition & requirement engineering
- Planning & project management
- Spec-to-code + "vibe coding" assistance
- QA & automated testing
- Security scanning + remediation suggestions
- Deployment + DevOps
- Bug tracking
- Marketing enablement (docs, landing page, release notes)
- Maintenance (monitoring, triage, patch workflow)

This repository is the reference implementation.

## Stack (Default)
- Backend: Java 21, Spring Boot
- UI: Thymeleaf + HTMX (preferred for fast iteration)
- DB: PostgreSQL
- Local dev: Docker Compose
- CI: GitHub Actions
- Security hooks: Semgrep, Trivy, OWASP Dependency-Check (pluggable)
- Testing: JUnit 5, Spring Boot Test, Testcontainers (later milestone)

## Repository Conventions
- Keep tasks small and mergeable.
- Do not introduce new frameworks unless necessary.
- Prefer simple, composable modules over big-bang redesigns.
- Every feature must include:
  - Minimal tests
  - Basic error handling
  - Clear UI behavior
  - Updated docs (if user-facing)

## Commands (single source of truth)
These commands must work. If they don't exist yet, create them (Makefile + scripts).

### Local
- `make dev`     -> start app + db locally
- `make test`    -> run unit/integration tests
- `make lint`    -> format/lint checks (java + frontend if any)
- `make sec`     -> run security scans (fast mode)
- `make build`   -> produce build artifacts

### Docker
- `docker compose up -d` to start services
- `docker compose logs -f app` for logs

## Definition of Done (DoD)
A task/PR is done when:
1) App starts locally via `make dev`
2) Tests pass: `make test`
3) No secrets are added; no credentials committed
4) Any new endpoints have:
   - validation
   - basic tests
   - minimal docs in README or module docs
5) Any DB changes are handled via migration tooling (Flyway/Liquibase)

## Risk / Safety Rules
- Never commit secrets, tokens, private keys, or real customer data.
- Avoid destructive DB migrations unless explicitly required; call out risks.
- Do not weaken security defaults (authz, CSRF, input validation) silently.
- Prefer least-privilege patterns and explicit allowlists.

## How Codex Should Work Here
When implementing a ticket:
1) Read the ticket in `BACKLOG.md`
2) Identify impacted modules/files
3) Implement in smallest coherent increment
4) Run: `make test` + `make build`
5) Summarize changes + list files modified
6) Provide verification steps + any known limitations
