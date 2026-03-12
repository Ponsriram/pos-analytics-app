import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/models/user.dart';
import '../../../core/providers/current_user_provider.dart';
import '../repository/auth_repository.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AsyncValue<User>? build() => null;

  /// Login with email and password.
  Future<bool> login({required String email, required String password}) async {
    state = const AsyncValue.loading();

    final result = await ref
        .read(authRepositoryProvider)
        .login(email: email, password: password);

    if (!ref.mounted) return false;

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
        return false;
      },
      (authResponse) {
        final user = authResponse.user;

        ref
            .read(currentUserProvider.notifier)
            .setUser(user, authResponse.accessToken);

        log('AuthViewModel: user ${user.id} logged in');
        state = AsyncValue.data(user);
        return true;
      },
    );
  }

  /// Logout.
  Future<void> logout() async {
    ref.read(currentUserProvider.notifier).logout();
    log('AuthViewModel: user logged out');
    state = null;
  }
}
