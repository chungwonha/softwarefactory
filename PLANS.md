# Milestone 0 — Foundation (Execution Plan)

## Goals
1. Docker Compose starts PostgreSQL successfully.
2. Spring Boot application starts locally without manual steps.
3. Application connects to Postgres using environment variables.
4. At least one endpoint is reachable (e.g., /actuator/health).
5. CI runs build + tests successfully on PR.

## Non-Goals
- No feature UI.
- No planning workspace.
- No security dashboard.
- No marketing module.
- No advanced deployment setup.

## Acceptance Criteria
The milestone is complete when:

1) Local Dev
- `make dev` starts database and application.
- App logs show successful DB connection.
- Visiting http://localhost:8080/actuator/health returns UP.

2) Tests
- `make test` completes successfully.
- At least one basic test exists and passes.

3) CI
- GitHub Actions runs:
  - mvnw test
  - mvnw package
- CI status is green on PR.

4) Documentation
- README includes exact steps to:
  - Start app
  - Run tests
  - Stop services

All work must follow AGENTS.md conventions and Definition of Done.
