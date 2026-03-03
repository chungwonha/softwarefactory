# ROADMAP — Software Factory (One-Stop SDLC + Growth Platform)

## Milestone 0 — Repo + Local Dev Foundation (Week 1)
- Spring Boot app skeleton + Thymeleaf shell
- PostgreSQL via docker-compose
- Makefile commands (dev/test/build/sec)
- CI pipeline (build + test)
Deliverable: reproducible local dev + CI green.

## Milestone 1 — Planning & Project Management MVP (Weeks 2–3)
- Problem definition workspace (Problem → Personas → Goals → Risks)
- Requirement engineering (Epics → Stories → Acceptance Criteria)
- Ticket board (Backlog/In Progress/Done) minimal
- Export to Markdown + GitHub Issues (optional adapter)
Deliverable: builder can define problem, requirements, and track work in one place.

## Milestone 2 — Spec-to-Code + Vibe Coding Loop (Weeks 3–5)
- Spec artifact -> code scaffolding (controller/service/repo stubs)
- "Vibe coding" assistant workflow (prompt -> branch -> patch -> PR)
- Code review checklist + traceability (story -> commit/PR)
Deliverable: requirements drive code stubs + assisted implementation flow.

## Milestone 3 — QA & Test Automation Harness (Weeks 5–7)
- Test generation helpers (starter templates)
- Regression scenarios captured as executable tests
- Test reporting UI (last run status, coverage hook if available)
Deliverable: test-first workflow baked into the factory.

## Milestone 4 — Security Scanning + Remediation Workflow (Weeks 7–9)
- SAST and dependency scans in CI
- Security findings dashboard + remediation suggestions
- “Fix branch” workflow (create patch PR for known issues)
Deliverable: builder sees security posture continuously.

## Milestone 5 — Deployment + DevOps (Weeks 9–12)
- Docker build pipeline
- Env config + promotion (dev → staging) minimal
- Observability basics (health, metrics endpoint, structured logging)
Deliverable: one-click deploy path with basic ops.

## Milestone 6 — Marketing Enablement (Weeks 12–14)
- Landing page generator (simple templates)
- Auto docs (README, quickstart, changelog)
- Release notes + announcement drafts
Deliverable: builder can ship + market with minimal friction.
