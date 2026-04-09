import 'package:test/test.dart';
import 'package:trade_rules/trade_rules.dart';

void main() {
  test('selects active rule by precedence with explanation', () {
    final now = DateTime.utc(2026, 1, 1);
    final service = TradeRuleService();

    final result = service.evaluate(
      now: now,
      defaultTaxRate: 0.12,
      rules: [
        TradeRule(
          id: 'rule-low-priority',
          version: 1,
          effectiveFrom: DateTime.utc(2025, 1, 1),
          effectiveTo: null,
          precedence: 10,
          signoff: ReviewerSignoff(
            reviewerId: 'compliance-a',
            signedAt: DateTime.utc(2025, 1, 2),
          ),
          expression: 'default',
        ),
        TradeRule(
          id: 'rule-high-priority',
          version: 2,
          effectiveFrom: DateTime.utc(2025, 6, 1),
          effectiveTo: null,
          precedence: 1,
          signoff: ReviewerSignoff(
            reviewerId: 'compliance-b',
            signedAt: DateTime.utc(2025, 6, 2),
          ),
          expression: 'preferential',
        ),
      ],
    );

    expect(result.ruleId, 'rule-high-priority');
    expect(result.ruleVersion, 2);
    expect(result.explanations, isNotEmpty);
  });
}
