library documents;

class TradeDocument {
  final String id;
  final String tenantId;
  final String type;
  final DateTime createdAt;

  const TradeDocument({
    required this.id,
    required this.tenantId,
    required this.type,
    required this.createdAt,
  });
}
