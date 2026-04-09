library rfq;

class RfqRequest {
  final String id;
  final String tenantId;
  final String catalogItemId;

  const RfqRequest({required this.id, required this.tenantId, required this.catalogItemId});
}
