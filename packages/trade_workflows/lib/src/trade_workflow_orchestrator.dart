abstract class ComplianceGateway {
  Future<void> runExternalComplianceCheck(String workflowId);
  Future<void> writeAuditEvent(String workflowId, String event);
}

class TradeWorkflowOrchestrator {
  final ComplianceGateway gateway;

  const TradeWorkflowOrchestrator({required this.gateway});

  Future<void> processSubmission(String workflowId) async {
    await gateway.writeAuditEvent(workflowId, 'submission_received');
    await gateway.runExternalComplianceCheck(workflowId);
    await gateway.writeAuditEvent(workflowId, 'compliance_check_completed');
  }
}
