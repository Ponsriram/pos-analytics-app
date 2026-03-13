import 'dart:developer';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/current_user_provider.dart';
import '../model/user_info_model.dart';
import '../repository/user_info_repository.dart';

part 'user_info_viewmodel.g.dart';

class UserInfoState {
  final UserInfoModel? userInfo;
  final List<UserLogEntry> logs;
  final bool isLoading;
  final bool isSaving;
  final String? error;

  const UserInfoState({
    this.userInfo,
    this.logs = const [],
    this.isLoading = false,
    this.isSaving = false,
    this.error,
  });

  UserInfoState copyWith({
    UserInfoModel? userInfo,
    List<UserLogEntry>? logs,
    bool? isLoading,
    bool? isSaving,
    String? error,
  }) {
    return UserInfoState(
      userInfo: userInfo ?? this.userInfo,
      logs: logs ?? this.logs,
      isLoading: isLoading ?? this.isLoading,
      isSaving: isSaving ?? this.isSaving,
      error: error,
    );
  }
}

@riverpod
class UserInfoViewModel extends _$UserInfoViewModel {
  @override
  UserInfoState build() {
    Future.microtask(_loadUserInfo);
    return const UserInfoState(isLoading: true);
  }

  Future<void> _loadUserInfo() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await ref.read(userInfoRepositoryProvider).getUserInfo();
    if (!ref.mounted) return;

    result.fold(
      (failure) {
        log('UserInfoViewModel: failed to load user info - ${failure.message}');
        state = state.copyWith(isLoading: false, error: failure.message);
      },
      (userInfo) {
        final currentUser = ref.read(currentUserProvider);
        final now = DateTime.now();

        state = state.copyWith(
          isLoading: false,
          userInfo: userInfo,
          logs: [
            UserLogEntry(
              id: '1',
              changes: 'User logged in',
              doneByName: currentUser?.name ?? userInfo.name,
              doneByEmail: currentUser?.email ?? userInfo.email,
              browser: 'Flutter App',
              ipAddress: '192.168.1.100',
              timestamp: now,
            ),
            UserLogEntry(
              id: '2',
              changes: 'Profile loaded from server',
              doneByName: currentUser?.name ?? userInfo.name,
              doneByEmail: currentUser?.email ?? userInfo.email,
              browser: 'Flutter App',
              ipAddress: '192.168.1.100',
              timestamp: now.subtract(const Duration(minutes: 2)),
            ),
          ],
        );
        log('UserInfoViewModel: user info loaded for ${userInfo.id}');
      },
    );
  }

  void toggle2FA(bool value) {
    if (state.userInfo != null) {
      state = state.copyWith(
        userInfo: state.userInfo!.copyWith(is2FAEnabled: value),
      );
    }
  }

  Future<void> updateUserInfo({
    required String name,
    required String email,
    required List<MobileNumber> mobileNumbers,
  }) async {
    state = state.copyWith(isSaving: true);
    // Simulate API call
    await Future.delayed(const Duration(milliseconds: 500));
    if (!ref.mounted) return;

    if (state.userInfo != null) {
      state = state.copyWith(
        isSaving: false,
        userInfo: state.userInfo!.copyWith(
          name: name,
          email: email,
          mobileNumbers: mobileNumbers,
        ),
      );
      log('UserInfoViewModel: user profile updated');
    } else {
      state = state.copyWith(isSaving: false, error: 'User not found');
      log('UserInfoViewModel: failed to update profile - user not found');
    }
  }

  Future<void> addMobileNumber(MobileNumber mobile) async {
    if (state.userInfo != null) {
      final updated = [...state.userInfo!.mobileNumbers, mobile];
      state = state.copyWith(
        userInfo: state.userInfo!.copyWith(mobileNumbers: updated),
      );
    }
  }

  Future<void> removeMobileNumber(String mobileId) async {
    if (state.userInfo != null) {
      final updated = state.userInfo!.mobileNumbers
          .where((m) => m.id != mobileId)
          .toList();
      state = state.copyWith(
        userInfo: state.userInfo!.copyWith(mobileNumbers: updated),
      );
    }
  }

  Future<void> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    state = state.copyWith(isSaving: true);
    await Future.delayed(const Duration(milliseconds: 500));
    if (!ref.mounted) return;

    state = state.copyWith(isSaving: false);
    log('UserInfoViewModel: password changed');
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}
