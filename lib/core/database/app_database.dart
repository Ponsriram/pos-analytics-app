import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

// =====================================================================
// TABLE DEFINITIONS
// =====================================================================

/// Table for storing user session information
class Users extends Table {
  TextColumn get id => text()();
  TextColumn get name => text().withDefault(const Constant(''))();
  TextColumn get email => text().withDefault(const Constant(''))();
  TextColumn get phone => text().withDefault(const Constant(''))();
  TextColumn get token => text().withDefault(const Constant(''))();
  TextColumn get role => text().withDefault(const Constant(''))();
  BoolColumn get isLoggedIn => boolean().withDefault(const Constant(false))();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

/// Table for app-level settings
class AppSettings extends Table {
  IntColumn get id => integer().autoIncrement()();
  BoolColumn get isDarkMode => boolean().withDefault(const Constant(false))();
  TextColumn get serverEndpoint => text().withDefault(const Constant(''))();
  TextColumn get locale => text().withDefault(const Constant('en'))();
  DateTimeColumn get updatedAt => dateTime().nullable()();
}

@DriftDatabase(tables: [Users, AppSettings])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async {
      await m.createAll();
    },
  );

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'pos_analytics_database');
  }

  // =====================================================================
  // USER OPERATIONS
  // =====================================================================

  Future<User?> getUser(String id) async {
    return (select(users)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<User?> getLoggedInUser() async {
    return (select(
      users,
    )..where((t) => t.isLoggedIn.equals(true))).getSingleOrNull();
  }

  Future<int> insertUser(UsersCompanion user) async {
    return into(users).insert(user, mode: InsertMode.insertOrReplace);
  }

  Future<bool> updateUser(UsersCompanion user) async {
    return update(users).replace(user);
  }

  Future<int> deleteUser(String id) async {
    return (delete(users)..where((t) => t.id.equals(id))).go();
  }

  Future<void> logoutUser(String id) async {
    await (update(users)..where((t) => t.id.equals(id))).write(
      const UsersCompanion(isLoggedIn: Value(false)),
    );
  }

  Future<String?> getLoggedInUserToken() async {
    final user = await getLoggedInUser();
    return user?.token.isEmpty == true ? null : user?.token;
  }

  // =====================================================================
  // CLEAR ALL DATA
  // =====================================================================

  Future<void> clearAllData() async {
    await transaction(() async {
      await delete(users).go();
      await delete(appSettings).go();
    });
  }

  // =====================================================================
  // APP SETTINGS OPERATIONS
  // =====================================================================

  Future<AppSetting> getSettings() async {
    final settings = await select(appSettings).getSingleOrNull();
    if (settings != null) return settings;
    await into(
      appSettings,
    ).insert(AppSettingsCompanion.insert(), mode: InsertMode.insertOrIgnore);
    return (await select(appSettings).getSingle());
  }

  Future<void> updateIsDarkMode(bool isDarkMode) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        isDarkMode: Value(isDarkMode),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateServerEndpoint(String endpoint) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        serverEndpoint: Value(endpoint),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> updateLocale(String locale) async {
    await (update(appSettings)..where((t) => t.id.equals(1))).write(
      AppSettingsCompanion(
        locale: Value(locale),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }
}
