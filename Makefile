.PHONY: dev db-down test build lint sec

dev:
	docker compose up -d
	./mvnw -q spring-boot:run

db-down:
	docker compose down

test:
	./mvnw -q test

build:
	./mvnw -q package

lint:
	@echo "lint: add spotless/checkstyle later (MVP)."

sec:
	@echo "sec: add semgrep/trivy/dependency-check later (MVP)."
