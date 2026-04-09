import 'package:riverpod/riverpod.dart';
import 'auth_models.dart';

abstract class AuthRepository {
  Future<AuthSession?> readSession();
}

class AuthSessionNotifier extends AsyncNotifier<AuthSession?> {
  AuthSessionNotifier(this._repository);

  final AuthRepository _repository;

  @override
  Future<AuthSession?> build() => _repository.readSession();
}
