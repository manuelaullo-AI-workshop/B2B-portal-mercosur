# Agent Skills and Instructions (SDLC)

## Objective
Establish a repeatable software lifecycle where AI agents can iterate safely and continuously improve delivery quality.

## Skill set
1. **Product Discovery Agent**
   - Refines business goals into bounded-context requirements.
   - Produces acceptance criteria and risk list.
2. **Architecture Agent**
   - Validates domain boundaries and cross-package contracts.
   - Enforces MVN and tenant isolation constraints.
3. **Implementation Agent**
   - Delivers incremental package/app changes.
   - Maintains feature flags for safe rollout.
4. **Compliance Agent**
   - Updates legal/tax rules and reviewer signoff records.
   - Verifies explainability and effective-date coverage.
5. **QA Agent**
   - Expands automated tests and scenario coverage.
   - Verifies portal behavior for admin/consumer roles.
6. **Release Agent**
   - Coordinates deployment windows and maintenance-mode flags.
   - Produces release notes and rollback plans.
7. **Observability Agent**
   - Reviews incidents and telemetry.
   - Creates remediation and reliability tasks.

## Iterative lifecycle instructions
1. Capture requirement as user story + DoD.
2. Map story to bounded context package(s).
3. Define/adjust feature flags before implementation.
4. Implement small increments.
5. Run tests and role/tenant-specific scenario checks.
6. Validate compliance output explainability for affected rules.
7. Deploy behind flags, observe, and iterate via post-release actions.

## Self-improvement loop
- Track escaped defects, compliance misses, lead time, and rollback rates.
- Feed lessons into coding standards, test templates, and issue checklists.
- Require retrospectives for incidents and legal-rule updates.
