# Architecture

## Core principles
- Flutter for web + native support.
- MVN: immutable model entities/use-cases (Model), Flutter widgets/screens (View), Riverpod `Notifier`/`AsyncNotifier` (Notifier).
- Melos monorepo for modular bounded contexts.

## Tenant isolation
- Tenant-scoped auth claims drive access control.
- Tenant-scoped feature flags, storage paths, caches, and workflow state.
- First release targets isolated customer portals rather than shared marketplace behavior.

## Compliance and tax bounded context
Implemented in `packages/trade_rules`:
- Versioned rules with effective dates and precedence.
- Reviewer signoff metadata.
- Immutable history records.
- Explainable evaluation outputs.

## Backend boundary
BaaS remains for auth/db/storage primitives.
Sensitive/regulated logic is behind controlled server-side functions/APIs:
- Tariff evaluation execution
- Audit write orchestration
- Document orchestration hooks
- External compliance checks

`packages/trade_workflows` exposes interfaces that make this boundary explicit.
