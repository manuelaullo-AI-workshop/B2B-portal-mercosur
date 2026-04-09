import 'user_role.dart';

class TenantContext {
  final String tenantId;
  final Set<UserRole> roles;

  const TenantContext({required this.tenantId, required this.roles});

  bool hasRole(UserRole role) => roles.contains(role);
}
