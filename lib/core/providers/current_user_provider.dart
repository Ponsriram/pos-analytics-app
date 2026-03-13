import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../init_dependencies.dart';
import '../database/app_database.dart';
import '../models/user.dart' as model;

part 'current_user_provider.g.dart';

@Riverpod(keepAlive: true)
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  model.User? build() {
    _loadFromStorage();
    return null;
  }

  Future<void> _loadFromStorage() async {
    final db = serviceLocator<AppDatabase>();
    final dbUser = await db.getLoggedInUser();

    if (dbUser != null) {
      state = model.User(
        id: dbUser.id,
        name: dbUser.name,
        email: dbUser.email,
        phone: dbUser.phone,
        role: dbUser.role,
        isActive: dbUser.isActive,
        createdAt: dbUser.createdAt,
      );
    }
  }

  Future<void> setUser(model.User user, String token) async {
    final db = serviceLocator<AppDatabase>();
    await db.insertUser(
      UsersCompanion(
        id: Value(user.id),
        name: Value(user.name),
        email: Value(user.email),
        phone: Value(user.phone),
        token: Value(token),
        role: Value(user.role),
        isLoggedIn: const Value(true),
        isActive: Value(user.isActive),
      ),
    );
    state = user;
  }

  Future<void> logout() async {
    final db = serviceLocator<AppDatabase>();
    final dbUser = await db.getLoggedInUser();
    if (dbUser != null) {
      await db.logoutUser(dbUser.id);
    }
    state = null;
  }
}
