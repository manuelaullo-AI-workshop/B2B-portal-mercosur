import 'trade_rule_models.dart';

class TradeRuleService {
  const TradeRuleService();

  ExplainableRuleResult evaluate({
    required List<TradeRule> rules,
    required DateTime now,
    required double defaultTaxRate,
  }) {
    final effective = rules.where((rule) => rule.isEffectiveAt(now)).toList()
      ..sort((a, b) => a.precedence.compareTo(b.precedence));

    if (effective.isEmpty) {
      return ExplainableRuleResult(
        ruleId: 'default',
        ruleVersion: 0,
        appliedTaxRate: defaultTaxRate,
        explanations: const ['No active rule. Default tax rate applied.'],
      );
    }

    final selected = effective.first;
    return ExplainableRuleResult(
      ruleId: selected.id,
      ruleVersion: selected.version,
      appliedTaxRate: defaultTaxRate,
      explanations: [
        'Rule selected by precedence ${selected.precedence}.',
        'Rule effective window validated for evaluation date.',
        'Reviewer signoff by ${selected.signoff.reviewerId}.',
      ],
    );
  }
}
