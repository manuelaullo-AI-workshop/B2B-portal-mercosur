# GitHub Issues Backlog (User Stories)

## 1) Monorepo + Tooling Foundation
**User story:** As a platform engineer, I want a Melos + FVM monorepo so teams can deliver modular Flutter apps consistently.
- Scope: workspace setup, package wiring, shared scripts.
- DoD: bootstrap/analyze/test scripts documented and runnable.

## 2) Tenant-Scoped Authentication and RBAC
**User story:** As a tenant admin, I want tenant-scoped roles so users only access authorized portal resources.
- Scope: claims model, session resolution, role checks.
- DoD: tenant and role authorization scenarios validated.

## 3) Feature Flag Governance
**User story:** As operations, I want feature flags by tenant so I can enable/disable functions during maintenance.
- Scope: flag model/store/notifier, fallback behavior.
- DoD: admin toggles reflected in both portals.

## 4) Trade Rules Engine v1
**User story:** As a trade analyst, I want versioned compliance rules with explainable outcomes so tax decisions are auditable.
- Scope: rule versioning, precedence, effective dates, signoff, immutable history.
- DoD: deterministic rule selection and human-readable explanations.

## 5) Controlled Server-Side Evaluation Boundary
**User story:** As compliance, I want tariff and external checks behind controlled APIs so regulated logic stays centralized.
- Scope: server function contracts, retries/timeouts, audit hooks.
- DoD: no direct client-side bypass of regulated logic.

## 6) Consumer Portal MVP
**User story:** As a buyer/seller user, I want to view catalog, create RFQs, and track workflow states.
- Scope: shell, auth state, catalog/RFQ/workflow views.
- DoD: end-to-end happy path for one tenant.

## 7) Admin Portal MVP
**User story:** As a tenant admin, I want to manage flags, rules metadata, and documents.
- Scope: admin app shell, rule lifecycle controls, maintenance toggles.
- DoD: admin can update non-destructive configuration by tenant.

## 8) Documents and Contracts Domain
**User story:** As a trade operator, I want document and contract lifecycle tracking for each transaction.
- Scope: metadata, status transitions, workflow links.
- DoD: immutable status history and tenant-scoped retrieval.

## 9) Observability and Audit Trail
**User story:** As support/compliance, I want traceable audit events so incidents and regulatory checks can be investigated.
- Scope: event schema, audit writer integration, dashboard-ready fields.
- DoD: critical operations emit queryable audit records.

## 10) Quality Gates and Release Playbook
**User story:** As release manager, I want standardized CI checks and rollback instructions so releases are safe.
- Scope: lint/test gates, flag-based rollout checklist, rollback steps.
- DoD: deployment checklist used for each release candidate.
