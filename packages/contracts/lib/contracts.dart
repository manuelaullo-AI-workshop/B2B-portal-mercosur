library contracts;

class TradeContract {
  final String id;
  final String tenantId;
  final String status;

  const TradeContract({required this.id, required this.tenantId, required this.status});
}
