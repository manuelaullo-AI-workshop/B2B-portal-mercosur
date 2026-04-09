class ReviewerSignoff {
  final String reviewerId;
  final DateTime signedAt;

  const ReviewerSignoff({required this.reviewerId, required this.signedAt});
}

class TradeRule {
  final String id;
  final int version;
  final DateTime effectiveFrom;
  final DateTime? effectiveTo;
  final int precedence;
  final ReviewerSignoff signoff;
  final String expression;

  const TradeRule({
    required this.id,
    required this.version,
    required this.effectiveFrom,
    required this.effectiveTo,
    required this.precedence,
    required this.signoff,
    required this.expression,
  });

  bool isEffectiveAt(DateTime date) {
    final starts = !date.isBefore(effectiveFrom);
    final ends = effectiveTo == null || date.isBefore(effectiveTo!);
    return starts && ends;
  }
}

class RuleHistoryEntry {
  final String ruleId;
  final int version;
  final DateTime changedAt;
  final String changedBy;
  final String changeSummary;

  const RuleHistoryEntry({
    required this.ruleId,
    required this.version,
    required this.changedAt,
    required this.changedBy,
    required this.changeSummary,
  });
}

class ExplainableRuleResult {
  final String ruleId;
  final int ruleVersion;
  final double appliedTaxRate;
  final List<String> explanations;

  const ExplainableRuleResult({
    required this.ruleId,
    required this.ruleVersion,
    required this.appliedTaxRate,
    required this.explanations,
  });
}
