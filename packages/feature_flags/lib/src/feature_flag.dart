class FeatureFlag {
  final String key;
  final String tenantId;
  final bool enabled;

  const FeatureFlag({
    required this.key,
    required this.tenantId,
    required this.enabled,
  });
}

abstract class FeatureFlagStore {
  Future<Map<String, bool>> forTenant(String tenantId);
}
