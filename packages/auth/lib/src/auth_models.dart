import 'package:core/core.dart';

class AuthSession {
  final String userId;
  final TenantContext tenantContext;

  const AuthSession({required this.userId, required this.tenantContext});
}
