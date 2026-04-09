import 'package:riverpod/riverpod.dart';
import 'feature_flag.dart';

class TenantFeatureFlagNotifier extends FamilyAsyncNotifier<Map<String, bool>, String> {
  TenantFeatureFlagNotifier(this._store);

  final FeatureFlagStore _store;

  @override
  Future<Map<String, bool>> build(String tenantId) => _store.forTenant(tenantId);
}
