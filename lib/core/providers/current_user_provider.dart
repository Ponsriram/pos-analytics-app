import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../init_dependencies.dart';
import '../models/user.dart';

part 'current_user_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  User? build() {
    _loadFromStorage();
    return null;
  }

  void _loadFromStorage() {
    final prefs = serviceLocator<SharedPreferences>();
    final token = prefs.getString('auth_token');
    final userId = prefs.getString('user_id');
    final userName = prefs.getString('user_name');
    final userEmail = prefs.getString('user_email');
    final userRole = prefs.getString('user_role');

    if (token != null &&
        userId != null &&
        userName != null &&
        userEmail != null) {
      state = User(
        id: userId,
        name: userName,
        email: userEmail,
        role: userRole ?? 'owner',
      );
    }
  }

  void setUser(User user, String token) {
    final prefs = serviceLocator<SharedPreferences>();
    prefs.setString('auth_token', token);
    prefs.setString('user_id', user.id);
    prefs.setString('user_name', user.name);
    prefs.setString('user_email', user.email);
    prefs.setString('user_role', user.role);
    state = user;
  }

  void logout() {
    final prefs = serviceLocator<SharedPreferences>();
    prefs.remove('auth_token');
    prefs.remove('user_id');
    prefs.remove('user_name');
    prefs.remove('user_email');
    prefs.remove('user_role');
    state = null;
  }
}
