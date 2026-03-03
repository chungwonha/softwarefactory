# BACKLOG — Software Factory

## EPIC A: Foundation
### A1 — Create Docker Compose (Postgres + App)
Acceptance Criteria:
- `docker compose up -d` starts Postgres
- App can connect with env vars
- README includes local start steps

### A2 — Add Makefile + scripts
Acceptance Criteria:
- `make dev` starts compose + app (or app via `./mvnw spring-boot:run`)
- `make test` runs tests
- `make build` builds jar
- `make sec` runs at least one scan (can be stubbed with echo initially)

### A3 — GitHub Actions CI
Acceptance Criteria:
- On PR: build + test
- Artifacts uploaded (jar) optional
- Fails on test failure

## EPIC B: Planning Workspace (UI + DB)
### B1 — Data model for Planning
Entities:
- ProblemStatement(id, title, context, constraints, successMetrics)
- Persona(id, name, description, pains, gains)
- RequirementEpic(id, title, description, priority)
- Story(id, epicId, title, acceptanceCriteria, status)
Acceptance Criteria:
- Flyway/Liquibase migrations created
- CRUD UI pages in Thymeleaf
- Basic validation

### B2 — Kanban-lite Board
Acceptance Criteria:
- Stories displayed by status columns
- Drag/drop optional (later); for MVP use status dropdown
- Filter by epic

## EPIC C: Spec-to-Code + Vibe Coding
### C1 — “Spec Export” (Markdown)
Acceptance Criteria:
- Export epic/story to `docs/specs/<epic>.md`
- Includes acceptance criteria and test hints

### C2 — Code Scaffold Generator
Acceptance Criteria:
- Given story spec, generate stubs:
  - Controller, Service, Repository, DTO
- Generated code compiles
- Outputs file list

### C3 — Vibe Coding Workflow (Branch + Patch)
Acceptance Criteria:
- Documented workflow:
  - create branch
  - apply patch
  - run tests
  - open PR
- Tooling can be manual initially; later integrate via API

## EPIC D: QA Harness
### D1 — Test Templates + Runner UI
Acceptance Criteria:
- Provide templates for unit/integration tests
- Page shows last test run timestamp + status (stored in DB)

## EPIC E: Security
### E1 — Dependency Scan in CI
Acceptance Criteria:
- OWASP Dependency-Check OR Trivy filesystem scan runs in CI
- Results stored as artifact

### E2 — Findings Dashboard (MVP)
Acceptance Criteria:
- Upload/parse scan results (basic)
- Display list with severity + suggested action (manual text allowed)

## EPIC F: Deploy/DevOps
### F1 — Container Image Build
Acceptance Criteria:
- Dockerfile builds app image
- GH Action builds image (push optional)

### F2 — Health + Metrics
Acceptance Criteria:
- `/actuator/health` enabled
- basic logging format documented

## EPIC G: Marketing
### G1 — Landing Page + Release Notes Generator
Acceptance Criteria:
- Template pages generated from project metadata
- Generates:
  - README section
  - Release notes draft
  - LinkedIn announcement draft
