# B2B-portal-mercosur

B2B portal for consumable goods import/export between Mercosur countries.

## Stack
- Flutter (native + web) with FVM
- Melos-managed monorepo
- MVN (Model-View-Notifier) with Riverpod `Notifier` and `AsyncNotifier`
- Tenant-scoped multi-portal model (admin + consumer)

## Monorepo layout
- `apps/admin_portal`: admin portal Flutter app
- `apps/consumer_portal`: consumer portal Flutter app
- `packages/app_shell`: cross-app shell and navigation entry points
- `packages/core`: shared entities/value objects/use-case foundations
- `packages/auth`: auth models and notifier interfaces
- `packages/feature_flags`: tenant-scoped feature-flagging
- `packages/trade_rules`: tax/compliance bounded context with versioned rules
- `packages/trade_workflows`: workflow orchestration and backend boundaries
- `packages/catalog`: catalog domain
- `packages/rfq`: RFQ domain
- `packages/contracts`: contracts domain
- `packages/documents`: document domain
- `packages/admin_console`: admin operations domain
- `packages/shared_ui`: shared Flutter widgets/theme

## Setup
1. Install FVM.
2. Run `fvm install`.
3. Run `dart pub global activate melos`.
4. Run `melos bootstrap`.

## Architecture references
- `docs/architecture.md`
- `docs/agent_skills_and_instructions.md`
- `docs/github_issues_backlog.md`
