import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/current_user_provider.dart';
import '../repository/auth_repository.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AsyncValue<void>? build() => null;

  Future<bool> login(
      {required String email, required String password}) async {
    state = const AsyncValue.loading();
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.login(email: email, password: password);

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
        return false;
      },
      (authResponse) {
        ref.read(currentUserProvider.notifier).setUser(
              authResponse.user,
              authResponse.accessToken,
            );
        state = const AsyncValue.data(null);
        return true;
      },
    );
  }
}
