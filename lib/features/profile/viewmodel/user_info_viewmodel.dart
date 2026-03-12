import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/current_user_provider.dart';
import '../model/user_info_model.dart';

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
    _loadUserInfo();
    return const UserInfoState(isLoading: true);
  }

  Future<void> _loadUserInfo() async {
    state = state.copyWith(isLoading: true);
    final currentUser = ref.read(currentUserProvider);
    if (currentUser != null) {
      final now = DateTime.now();
      state = state.copyWith(
        isLoading: false,
        userInfo: UserInfoModel(
          id: currentUser.id,
          name: currentUser.name,
          email: currentUser.email,
          isEmailVerified: true,
          mobileNumbers: const [
            MobileNumber(
              id: 'mob_1',
              countryCode: '+91',
              number: '9876543210',
              isVerified: true,
            ),
          ],
          createdAt: now.subtract(const Duration(days: 90)),
          createdBy: 'System',
        ),
        logs: [
          UserLogEntry(
            id: '1',
            changes: 'User logged in',
            doneByName: currentUser.name,
            doneByEmail: currentUser.email,
            browser: 'Flutter App',
            ipAddress: '192.168.1.100',
            timestamp: now,
          ),
          UserLogEntry(
            id: '2',
            changes: 'Profile updated',
            doneByName: currentUser.name,
            doneByEmail: currentUser.email,
            browser: 'Flutter App',
            ipAddress: '192.168.1.100',
            timestamp: now.subtract(const Duration(hours: 2)),
          ),
          UserLogEntry(
            id: '3',
            changes: '2FA enabled',
            doneByName: currentUser.name,
            doneByEmail: currentUser.email,
            browser: 'Flutter App',
            ipAddress: '192.168.1.101',
            timestamp: now.subtract(const Duration(days: 1)),
          ),
        ],
      );
    } else {
      state = state.copyWith(isLoading: false, error: 'User not found');
    }
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
    if (state.userInfo != null) {
      state = state.copyWith(
        isSaving: false,
        userInfo: state.userInfo!.copyWith(
          name: name,
          email: email,
          mobileNumbers: mobileNumbers,
        ),
      );
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
    state = state.copyWith(isSaving: false);
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}
