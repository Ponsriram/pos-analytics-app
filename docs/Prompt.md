## TABLE OF CONTENTS

1. [Project Identity](#1-project-identity)
2. [Technology Stack & Dependencies](#2-technology-stack--dependencies)
3. [Architecture Blueprint](#3-architecture-blueprint)
4. [Folder Structure — Every File](#4-folder-structure--every-file)
5. [Core Layer — Complete Specification](#5-core-layer--complete-specification)
6. [Feature: Authentication](#6-feature-authentication)
7. [Feature: Dashboard (Home)](#7-feature-dashboard-home)
8. [Feature: Orders](#8-feature-orders)
9. [Feature: Reports](#9-feature-reports)
10. [Feature: Inventory](#10-feature-inventory)
11. [Feature: Employees](#11-feature-employees)
12. [Feature: Shifts](#12-feature-shifts)
13. [Feature: Stores](#13-feature-stores)
14. [Feature: More (Settings & Management)](#14-feature-more-settings--management)
15. [Navigation & Routing](#15-navigation--routing)
16. [Backend API Reference](#16-backend-api-reference)
17. [Code Generation Commands](#17-code-generation-commands)
18. [Implementation Order](#18-implementation-order)
19. [UI/UX Design System](#19-uiux-design-system)
20. [Quality Checklist](#20-quality-checklist)

---

You are a World-Class Flutter Developer

## 1. PROJECT IDENTITY

- **App Name**: POS Analytics
- **Package Name**: `pos_analytics_app`
- **Purpose**: Mobile analytics dashboard for restaurant POS system owners/admins to monitor sales, orders, employees, shifts, inventory, and store performance in real-time.
- **Target Users**: Store owners, admins, managers (NOT cashiers or kitchen staff — those use the Desktop POS app).
- **Backend**: FastAPI + PostgreSQL (already running at configurable URL via `.env`).
- **Platforms**: iOS, Android, Web (responsive mobile-first).

---

## 2. TECHNOLOGY STACK & DEPENDENCIES

### pubspec.yaml

```yaml
name: pos_analytics_app
description: "POS Analytics Dashboard - Restaurant management analytics app"
publish_to: "none"
version: 1.0.0+1

environment:
  sdk: ^3.11.1

dependencies:
  flutter:
    sdk: flutter

  # UI
  cupertino_icons: ^1.0.8
  iconsax_flutter: ^1.0.1
  fl_chart: ^0.70.2

  # State Management
  flutter_riverpod: ^3.0.0
  riverpod_annotation: ^3.0.0

  # Models & Serialization
  freezed_annotation: ^3.1.0
  json_annotation: ^4.9.0

  # Networking
  http: ^1.5.0

  # Error Handling
  fpdart: ^1.1.1

  # Dependency Injection
  get_it: ^8.0.3

  # Local Storage
  shared_preferences: ^2.5.4

  # Utilities
  intl: ^0.20.0
  flutter_dotenv: ^6.0.0
  internet_connection_checker_plus: ^2.9.0
  uuid: ^4.5.1

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
  riverpod_generator: ^3.0.0
  build_runner: ^2.5.4
  json_serializable: ^6.11.1
  freezed: ^3.2.3
  riverpod_lint: ^3.0.0

flutter:
  uses-material-design: true
  assets:
    - .env
```

### .env file

```env
API_BASE_URL=http://localhost:8000
```

---

## 3. ARCHITECTURE BLUEPRINT

This app follows **MVVM with Clean Architecture**, matching the Playo app pattern:

```
┌─────────────────────────────────────────────┐
│                    VIEW                      │
│  (ConsumerWidget / ConsumerStatefulWidget)   │
│  - Reads state from ViewModel via ref.watch  │
│  - Dispatches actions via ref.read           │
└──────────────────────┬──────────────────────┘
                       │
┌──────────────────────▼──────────────────────┐
│                 VIEWMODEL                    │
│  (@riverpod Notifier / AsyncNotifier)        │
│  - Manages AsyncValue<T> state               │
│  - Calls Repository methods                  │
│  - Returns Either<Failure, T> from repos     │
└──────────────────────┬──────────────────────┘
                       │
┌──────────────────────▼──────────────────────┐
│                REPOSITORY                    │
│  (@riverpod function provider)               │
│  - HTTP calls via ApiClient from GetIt       │
│  - Returns Either<Failure, T>                │
│  - Handles network errors, parsing           │
└──────────────────────┬──────────────────────┘
                       │
┌──────────────────────▼──────────────────────┐
│              NETWORK / API CLIENT            │
│  - http package with interceptor             │
│  - JWT token injection from SharedPreferences│
│  - Base URL from .env                        │
└─────────────────────────────────────────────┘
```

### Key Architecture Rules

1. **Every Riverpod provider** uses `@riverpod` annotation with code generation (`.g.dart`).
2. **Every model** uses `@freezed` with JSON serialization (`.freezed.dart` + `.g.dart`).
3. **Dependency Injection**: `GetIt` for singletons (HTTP client, SharedPreferences). Riverpod for everything else.
4. **Error handling**: `Either<Failure, T>` from `fpdart` in all repositories.
5. **State**: ViewModels expose `AsyncValue<T>` for loading/error/data states.
6. **Views**: Use `ConsumerWidget` or `ConsumerStatefulWidget`, never plain `StatefulWidget`.
7. **Navigation**: Bottom navigation with `IndexedStack` + `Navigator.push` for sub-pages.

---

## 4. FOLDER STRUCTURE — EVERY FILE

```
lib/
├── main.dart
├── init_dependencies.dart
├── init_dependencies.main.dart
│
├── core/
│   ├── common/
│   │   └── widgets/
│   │       ├── common_app_bar.dart
│   │       ├── common_scaffold.dart
│   │       ├── empty_state_widget.dart
│   │       ├── error_widget.dart
│   │       ├── loader.dart
│   │       ├── outlet_picker_dialog.dart
│   │       ├── stat_card.dart
│   │       └── date_range_picker.dart
│   │
│   ├── constants/
│   │   └── server_constants.dart
│   │
│   ├── error/
│   │   ├── failure.dart
│   │   └── server_exception.dart
│   │
│   ├── models/
│   │   ├── user.dart
│   │   ├── user.freezed.dart
│   │   ├── user.g.dart
│   │   ├── store.dart
│   │   ├── store.freezed.dart
│   │   └── store.g.dart
│   │
│   ├── network/
│   │   ├── api_client.dart
│   │   └── connection_checker.dart
│   │
│   ├── providers/
│   │   ├── current_user_provider.dart
│   │   ├── current_user_provider.g.dart
│   │   ├── selected_store_provider.dart
│   │   ├── selected_store_provider.g.dart
│   │   ├── theme_provider.dart
│   │   ├── theme_provider.g.dart
│   │   ├── bottom_nav_provider.dart
│   │   └── stores_provider.dart
│   │   └── stores_provider.g.dart
│   │
│   ├── theme/
│   │   └── app_theme.dart
│   │
│   └── utils/
│       ├── show_snackbar.dart
│       ├── date_formatter.dart
│       └── currency_formatter.dart
│
└── features/
    ├── auth/
    │   ├── model/
    │   │   ├── auth_response.dart
    │   │   ├── auth_response.freezed.dart
    │   │   └── auth_response.g.dart
    │   ├── repository/
    │   │   ├── auth_repository.dart
    │   │   └── auth_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   └── login_page.dart
    │   │   └── widgets/
    │   │       └── login_form.dart
    │   └── viewmodel/
    │       ├── auth_viewmodel.dart
    │       └── auth_viewmodel.g.dart
    │
    ├── dashboard/
    │   ├── model/
    │   │   ├── dashboard_stats.dart
    │   │   ├── dashboard_stats.freezed.dart
    │   │   ├── dashboard_stats.g.dart
    │   │   ├── outlet_stats.dart
    │   │   ├── outlet_stats.freezed.dart
    │   │   ├── outlet_stats.g.dart
    │   │   ├── order_trend.dart
    │   │   ├── order_trend.freezed.dart
    │   │   └── order_trend.g.dart
    │   ├── repository/
    │   │   ├── dashboard_repository.dart
    │   │   └── dashboard_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   └── dashboard_page.dart
    │   │   └── widgets/
    │   │       ├── total_sales_card.dart
    │   │       ├── stats_grid.dart
    │   │       ├── outlet_statistics_section.dart
    │   │       ├── orders_chart_section.dart
    │   │       ├── order_category_card.dart
    │   │       └── wave_painter.dart
    │   └── viewmodel/
    │       ├── dashboard_viewmodel.dart
    │       └── dashboard_viewmodel.g.dart
    │
    ├── orders/
    │   ├── model/
    │   │   ├── order.dart
    │   │   ├── order.freezed.dart
    │   │   ├── order.g.dart
    │   │   ├── order_item.dart
    │   │   ├── order_item.freezed.dart
    │   │   ├── order_item.g.dart
    │   │   ├── payment.dart
    │   │   ├── payment.freezed.dart
    │   │   └── payment.g.dart
    │   ├── repository/
    │   │   ├── order_repository.dart
    │   │   └── order_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   ├── orders_page.dart
    │   │   │   └── order_detail_page.dart
    │   │   └── widgets/
    │   │       ├── order_card.dart
    │   │       ├── order_filter_chips.dart
    │   │       └── order_status_badge.dart
    │   └── viewmodel/
    │       ├── orders_viewmodel.dart
    │       └── orders_viewmodel.g.dart
    │
    ├── reports/
    │   ├── model/
    │   │   ├── sales_report.dart
    │   │   ├── sales_report.freezed.dart
    │   │   ├── sales_report.g.dart
    │   │   ├── day_close_report.dart
    │   │   ├── day_close_report.freezed.dart
    │   │   └── day_close_report.g.dart
    │   ├── repository/
    │   │   ├── report_repository.dart
    │   │   └── report_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   ├── reports_page.dart
    │   │   │   └── sales_report_detail_page.dart
    │   │   └── widgets/
    │   │       ├── report_type_card.dart
    │   │       └── report_chart.dart
    │   └── viewmodel/
    │       ├── reports_viewmodel.dart
    │       └── reports_viewmodel.g.dart
    │
    ├── inventory/
    │   ├── model/
    │   │   ├── inventory_item.dart
    │   │   ├── inventory_item.freezed.dart
    │   │   ├── inventory_item.g.dart
    │   │   ├── stock_level.dart
    │   │   ├── stock_level.freezed.dart
    │   │   └── stock_level.g.dart
    │   ├── repository/
    │   │   ├── inventory_repository.dart
    │   │   └── inventory_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   └── inventory_page.dart
    │   │   └── widgets/
    │   │       ├── stock_level_card.dart
    │   │       ├── out_of_stock_list.dart
    │   │       └── inventory_item_tile.dart
    │   └── viewmodel/
    │       ├── inventory_viewmodel.dart
    │       └── inventory_viewmodel.g.dart
    │
    ├── employees/
    │   ├── model/
    │   │   ├── employee.dart
    │   │   ├── employee.freezed.dart
    │   │   └── employee.g.dart
    │   ├── repository/
    │   │   ├── employee_repository.dart
    │   │   └── employee_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   └── employees_page.dart
    │   │   └── widgets/
    │   │       └── employee_card.dart
    │   └── viewmodel/
    │       ├── employees_viewmodel.dart
    │       └── employees_viewmodel.g.dart
    │
    ├── shifts/
    │   ├── model/
    │   │   ├── shift.dart
    │   │   ├── shift.freezed.dart
    │   │   ├── shift.g.dart
    │   │   ├── shift_payment_summary.dart
    │   │   ├── shift_payment_summary.freezed.dart
    │   │   └── shift_payment_summary.g.dart
    │   ├── repository/
    │   │   ├── shift_repository.dart
    │   │   └── shift_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   ├── shifts_page.dart
    │   │   │   └── shift_detail_page.dart
    │   │   └── widgets/
    │   │       ├── shift_card.dart
    │   │       └── payment_summary_table.dart
    │   └── viewmodel/
    │       ├── shifts_viewmodel.dart
    │       └── shifts_viewmodel.g.dart
    │
    ├── stores/
    │   ├── model/
    │   │   (uses core/models/store.dart)
    │   ├── repository/
    │   │   ├── store_repository.dart
    │   │   └── store_repository.g.dart
    │   ├── view/
    │   │   ├── pages/
    │   │   │   └── stores_page.dart
    │   │   └── widgets/
    │   │       └── store_card.dart
    │   └── viewmodel/
    │       ├── stores_viewmodel.dart
    │       └── stores_viewmodel.g.dart
    │
    └── more/
        ├── view/
        │   ├── pages/
        │   │   └── more_page.dart
        │   └── widgets/
        │       └── more_menu_tile.dart
        └── (no model/viewmodel — routes to other features)
```

---

## 5. CORE LAYER — COMPLETE SPECIFICATION

### 5.1 main.dart

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pos_analytics_app/core/providers/current_user_provider.dart';
import 'package:pos_analytics_app/core/providers/theme_provider.dart';
import 'package:pos_analytics_app/core/theme/app_theme.dart';
import 'package:pos_analytics_app/core/widgets/bottom_navigation_bar.dart';
import 'package:pos_analytics_app/features/auth/view/pages/login_page.dart';
import 'package:pos_analytics_app/init_dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(const ProviderScope(child: PosAnalyticsApp()));
}

class PosAnalyticsApp extends ConsumerWidget {
  const PosAnalyticsApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    final currentUser = ref.watch(currentUserProvider);

    return MaterialApp(
      title: 'POS Analytics',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      home: currentUser != null ? const AppBottomNavBar() : const LoginPage(),
    );
  }
}
```

### 5.2 init_dependencies.dart

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'core/network/api_client.dart';
import 'core/network/connection_checker.dart';

part 'init_dependencies.main.dart';
```

### 5.3 init_dependencies.main.dart

```dart
part of 'init_dependencies.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load(fileName: ".env");

  // HTTP Client
  serviceLocator.registerLazySingleton<http.Client>(() => http.Client());

  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  // API Client
  serviceLocator.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: dotenv.env['API_BASE_URL'] ?? 'http://localhost:8000',
      httpClient: serviceLocator<http.Client>(),
      sharedPreferences: serviceLocator<SharedPreferences>(),
    ),
  );

  // Connection Checker
  serviceLocator.registerLazySingleton<ConnectionChecker>(
    () => ConnectionCheckerImpl(),
  );
}
```

### 5.4 core/network/api_client.dart

```dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../error/server_exception.dart';

class ApiClient {
  final String baseUrl;
  final http.Client httpClient;
  final SharedPreferences sharedPreferences;

  ApiClient({
    required this.baseUrl,
    required this.httpClient,
    required this.sharedPreferences,
  });

  String? get _token => sharedPreferences.getString('auth_token');

  Map<String, String> get _headers => {
    'Content-Type': 'application/json',
    if (_token != null) 'Authorization': 'Bearer $_token',
  };

  Future<Map<String, dynamic>> get(String path, {Map<String, String>? queryParams}) async {
    final uri = Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
    final response = await httpClient.get(uri, headers: _headers);
    return _handleResponse(response);
  }

  Future<List<dynamic>> getList(String path, {Map<String, String>? queryParams}) async {
    final uri = Uri.parse('$baseUrl$path').replace(queryParameters: queryParams);
    final response = await httpClient.get(uri, headers: _headers);
    return _handleListResponse(response);
  }

  Future<Map<String, dynamic>> post(String path, {Map<String, dynamic>? body}) async {
    final uri = Uri.parse('$baseUrl$path');
    final response = await httpClient.post(uri, headers: _headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<Map<String, dynamic>> put(String path, {Map<String, dynamic>? body}) async {
    final uri = Uri.parse('$baseUrl$path');
    final response = await httpClient.put(uri, headers: _headers, body: jsonEncode(body));
    return _handleResponse(response);
  }

  Future<void> delete(String path) async {
    final uri = Uri.parse('$baseUrl$path');
    final response = await httpClient.delete(uri, headers: _headers);
    if (response.statusCode >= 400) {
      throw ServerException(_parseError(response));
    }
  }

  Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    throw ServerException(_parseError(response));
  }

  List<dynamic> _handleListResponse(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body) as List<dynamic>;
    }
    throw ServerException(_parseError(response));
  }

  String _parseError(http.Response response) {
    try {
      final body = jsonDecode(response.body);
      return body['detail'] ?? 'Request failed with status ${response.statusCode}';
    } catch (_) {
      return 'Request failed with status ${response.statusCode}';
    }
  }
}
```

### 5.5 core/network/connection_checker.dart

```dart
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class ConnectionChecker {
  Future<bool> get isConnected;
}

class ConnectionCheckerImpl implements ConnectionChecker {
  final InternetConnection _checker = InternetConnection();

  @override
  Future<bool> get isConnected => _checker.hasInternetAccess;
}
```

### 5.6 core/error/failure.dart

```dart
class Failure {
  final String message;
  Failure([this.message = 'An unexpected error occurred']);

  @override
  String toString() => message;
}
```

### 5.7 core/error/server_exception.dart

```dart
class ServerException implements Exception {
  final String message;
  const ServerException(this.message);

  @override
  String toString() => 'ServerException: $message';
}
```

### 5.8 core/constants/server_constants.dart

```dart
class ServerConstants {
  // Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String userProfile = '/users/me';

  // Analytics
  static const String analyticsSummary = '/analytics/summary';
  static const String analyticsByStore = '/analytics/summary/by-store';

  // Stores
  static const String stores = '/stores';

  // Orders
  static const String orders = '/orders';
  static const String payments = '/orders/payments';

  // Products & Categories
  static const String products = '/products';
  static const String categories = '/products/categories';

  // Employees
  static const String employees = '/employees';

  // Shifts
  static const String shifts = '/shifts';
  static const String dayClose = '/shifts/day-close';

  // Inventory
  static const String inventoryItems = '/inventory/items';
  static const String inventoryStock = '/inventory/stock';
  static const String inventoryUnits = '/inventory/units';
  static const String inventoryLocations = '/inventory/locations';
  static const String inventoryRecipes = '/inventory/recipes';
  static const String inventoryTransfers = '/inventory/transfers';
  static const String inventoryOutOfStock = '/inventory/out-of-stock';

  // Reports
  static const String reportTypes = '/reports/types';
  static const String reportGenerate = '/reports/generate';
  static const String reports = '/reports';

  // Billing
  static const String invoices = '/billing/invoices';

  // Kitchen
  static const String kitchenOrders = '/kitchen/orders';
}
```

### 5.9 core/models/user.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String id,
    required String name,
    required String email,
    String? phone,
    @Default('owner') String role,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
```

### 5.10 core/models/store.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class Store with _$Store {
  const factory Store({
    required String id,
    @JsonKey(name: 'owner_id') required String ownerId,
    required String name,
    String? location,
    String? phone,
    String? email,
    @Default('Asia/Kolkata') String timezone,
    @Default('INR') String currency,
    @Default(false) @JsonKey(name: 'tax_inclusive') bool taxInclusive,
    @JsonKey(name: 'chain_id') String? chainId,
    String? state,
    String? city,
    @JsonKey(name: 'outlet_type') String? outletType,
    @Default(0) @JsonKey(name: 'table_count') int tableCount,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
```

### 5.11 core/providers/current_user_provider.dart

```dart
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

    if (token != null && userId != null && userName != null && userEmail != null) {
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
```

### 5.12 core/providers/selected_store_provider.dart

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../models/store.dart';

part 'selected_store_provider.g.dart';

/// null means "All Outlets"
@Riverpod(keepAlive: true)
class SelectedStoreNotifier extends _$SelectedStoreNotifier {
  @override
  Store? build() => null;

  void select(Store? store) => state = store;
}
```

### 5.13 core/providers/stores_provider.dart

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../features/stores/repository/store_repository.dart';
import '../models/store.dart';

part 'stores_provider.g.dart';

@Riverpod(keepAlive: true)
class StoresNotifier extends _$StoresNotifier {
  @override
  Future<List<Store>> build() async {
    final repository = ref.watch(storeRepositoryProvider);
    final result = await repository.getStores();
    return result.fold(
      (failure) => throw failure,
      (stores) => stores,
    );
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    final repository = ref.read(storeRepositoryProvider);
    final result = await repository.getStores();
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      (stores) => AsyncValue.data(stores),
    );
  }
}
```

### 5.14 core/providers/theme_provider.dart

```dart
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(keepAlive: true)
class ThemeMode_ extends _$ThemeMode_ {
  @override
  ThemeMode build() => ThemeMode.light;

  void toggle() {
    state = state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }
}

// Alias for convenience
final themeModeProvider = themeMode_Provider;
```

### 5.15 core/providers/bottom_nav_provider.dart

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
```

### 5.16 core/theme/app_theme.dart

```dart
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 18, 144, 255),
      dynamicSchemeVariant: DynamicSchemeVariant.vibrant,
      brightness: Brightness.light,
    ),
    fontFamily: 'Poppins',
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 18, 144, 255),
      dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
      brightness: Brightness.dark,
    ),
    fontFamily: 'Poppins',
  );
}
```

### 5.17 core/common/widgets/common_app_bar.dart

Build a reusable AppBar that includes:

- Left: Menu icon (opens drawer) OR back button
- Center: Outlet selector dropdown showing selected store name (tap opens `OutletPickerDialog`)
- Right: Theme toggle icon button + notification bell icon

```dart
// ConsumerWidget that:
// - ref.watch(selectedStoreProvider) to show current store name (or "All Outlets")
// - ref.watch(storesProvider) to get list of stores for the picker
// - ref.read(themeModeProvider.notifier).toggle() on theme button press
// Style: Use colorScheme.surface background, elevation 0, with bottom border
```

### 5.18 core/common/widgets/outlet_picker_dialog.dart

Modal bottom sheet or dialog that:

- Lists all stores from `storesProvider`
- Has an "All Outlets" option at the top
- Each item shows store name + city
- Selecting one updates `selectedStoreProvider`
- Currently selected store has a checkmark icon

### 5.19 core/common/widgets/stat_card.dart

Reusable metric card (from pos_app pattern):

```dart
// Container with:
// - White/surface background, rounded corners (12), subtle shadow
// - Leading: Icon in colored circular background (icon color at 15% opacity)
// - Title: 10pt gray text
// - Value: 18pt bold
// - Subtitle: 10pt gray info text
// Takes: IconData icon, Color iconColor, String title, String value, String? subtitle
```

### 5.20 core/common/widgets/loader.dart

```dart
import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
```

### 5.21 core/common/widgets/empty_state_widget.dart

```dart
// Center widget with:
// - Large icon (64px, gray)
// - Title text (16pt, medium)
// - Description text (14pt, gray)
// Takes: IconData icon, String title, String description
```

### 5.22 core/common/widgets/error_widget.dart

```dart
// Center widget with:
// - Error icon (red, 64px)
// - Error message
// - "Retry" button
// Takes: String message, VoidCallback onRetry
```

### 5.23 core/common/widgets/date_range_picker.dart

Widget that:

- Shows current date/range as formatted text (e.g., "12 Mar" or "12 Mar - 15 Mar")
- Tap opens a date/range picker
- Returns selected date(s) via callback
- Used by dashboard for date filtering

### 5.24 core/utils/show_snackbar.dart

```dart
import 'package:flutter/material.dart';

enum SnackBarType { success, error, info }

void showSnackBar(BuildContext context, String message, [SnackBarType type = SnackBarType.info]) {
  final colorScheme = Theme.of(context).colorScheme;
  final bgColor = switch (type) {
    SnackBarType.success => colorScheme.primaryContainer,
    SnackBarType.error => colorScheme.errorContainer,
    SnackBarType.info => colorScheme.surfaceContainerHighest,
  };
  final textColor = switch (type) {
    SnackBarType.success => colorScheme.onPrimaryContainer,
    SnackBarType.error => colorScheme.onErrorContainer,
    SnackBarType.info => colorScheme.onSurface,
  };

  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
      content: Text(message, style: TextStyle(color: textColor)),
      backgroundColor: bgColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ));
}
```

### 5.25 core/utils/date_formatter.dart

```dart
import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(DateTime date) {
    return DateFormat('d MMM yyyy').format(date);
  }

  static String formatShortDate(DateTime date) {
    final day = date.day;
    final suffix = _getDaySuffix(day);
    return '$day$suffix ${DateFormat('MMM').format(date)}';
  }

  static String formatDateTime(DateTime date) {
    return DateFormat('d MMM yyyy, hh:mm a').format(date);
  }

  static String formatTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static String _getDaySuffix(int day) {
    if (day >= 11 && day <= 13) return 'th';
    return switch (day % 10) {
      1 => 'st',
      2 => 'nd',
      3 => 'rd',
      _ => 'th',
    };
  }
}
```

### 5.26 core/utils/currency_formatter.dart

```dart
import 'package:intl/intl.dart';

class CurrencyFormatter {
  static final _formatter = NumberFormat.currency(locale: 'en_IN', symbol: '₹', decimalDigits: 2);

  static String format(double amount) => _formatter.format(amount);

  static String formatCompact(double amount) {
    if (amount >= 100000) {
      return '₹${(amount / 100000).toStringAsFixed(1)}L';
    } else if (amount >= 1000) {
      return '₹${(amount / 1000).toStringAsFixed(1)}K';
    }
    return format(amount);
  }
}
```

---

## 6. FEATURE: AUTHENTICATION

### 6.1 Model — auth_response.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/models/user.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'token_type') required String tokenType,
    required User user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
}
```

### 6.2 Repository — auth_repository.dart

```dart
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/auth_response.dart';

part 'auth_repository.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(apiClient: serviceLocator<ApiClient>());
}

class AuthRepository {
  final ApiClient apiClient;

  AuthRepository({required this.apiClient});

  Future<Either<Failure, AuthResponse>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await apiClient.post(
        ServerConstants.login,
        body: {'email': email, 'password': password},
      );
      return Right(AuthResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure('Login failed: ${e.toString()}'));
    }
  }
}
```

### 6.3 ViewModel — auth_viewmodel.dart

```dart
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/current_user_provider.dart';
import '../repository/auth_repository.dart';

part 'auth_viewmodel.g.dart';

@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AsyncValue<void>? build() => null;

  Future<bool> login({required String email, required String password}) async {
    state = const AsyncValue.loading();
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.login(email: email, password: password);

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure.message, StackTrace.current);
        return false;
      },
      (authResponse) {
        ref.read(currentUserNotifierProvider.notifier).setUser(
          authResponse.user,
          authResponse.accessToken,
        );
        state = const AsyncValue.data(null);
        return true;
      },
    );
  }
}
```

### 6.4 View — login_page.dart

**Layout** (matches actual pos_app login):

- Centered card on a gradient/surface background
- App logo/title at top: "POS Analytics" with an analytics icon
- Email `TextField` with email validation
- Password `TextField` with show/hide toggle
- "Login" elevated button (full width, rounded)
- Loading overlay when `authViewModel` is loading
- Error display via SnackBar on failure
- On success, `currentUserProvider` updates → MaterialApp rebuilds → shows `AppBottomNavBar`

Use `ConsumerStatefulWidget`. Watch `authViewModelProvider` for loading/error states.

---

## 7. FEATURE: DASHBOARD (HOME)

This is the **primary screen** — the hero of the app. It replicates the pos_app dashboard.

### 7.1 Model — dashboard_stats.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';
part 'dashboard_stats.g.dart';

@freezed
abstract class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    @Default(0) @JsonKey(name: 'total_revenue') double totalRevenue,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    @Default(0) @JsonKey(name: 'tax_collected') double taxCollected,
    @Default(0) @JsonKey(name: 'gross_sales') double grossSales,
    @Default(0) @JsonKey(name: 'net_sales') double netSales,
    @Default(0) @JsonKey(name: 'total_discounts') double totalDiscounts,
    @Default({}) @JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);
}
```

### 7.2 Model — outlet_stats.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'outlet_stats.freezed.dart';
part 'outlet_stats.g.dart';

@freezed
abstract class OutletStats with _$OutletStats {
  const factory OutletStats({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'store_name') required String storeName,
    @Default(0) @JsonKey(name: 'total_revenue') double totalRevenue,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    @Default(0) @JsonKey(name: 'tax_collected') double taxCollected,
    @Default(0) @JsonKey(name: 'gross_sales') double grossSales,
    @Default(0) @JsonKey(name: 'net_sales') double netSales,
    @Default(0) @JsonKey(name: 'total_discounts') double totalDiscounts,
    @Default({}) @JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,
  }) = _OutletStats;

  factory OutletStats.fromJson(Map<String, dynamic> json) => _$OutletStatsFromJson(json);
}

@freezed
abstract class OutletAnalyticsResponse with _$OutletAnalyticsResponse {
  const factory OutletAnalyticsResponse({
    required List<OutletStats> outlets,
    required DashboardStats totals,
  }) = _OutletAnalyticsResponse;

  factory OutletAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletAnalyticsResponseFromJson(json);
}
```

### 7.3 Repository — dashboard_repository.dart

```dart
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/constants/server_constants.dart';
import '../../../core/error/failure.dart';
import '../../../core/error/server_exception.dart';
import '../../../core/network/api_client.dart';
import '../../../init_dependencies.dart';
import '../model/dashboard_stats.dart';
import '../model/outlet_stats.dart';

part 'dashboard_repository.g.dart';

@riverpod
DashboardRepository dashboardRepository(Ref ref) {
  return DashboardRepository(apiClient: serviceLocator<ApiClient>());
}

class DashboardRepository {
  final ApiClient apiClient;

  DashboardRepository({required this.apiClient});

  Future<Either<Failure, DashboardStats>> getSummary({
    required String storeId,
    String? startDate,
    String? endDate,
  }) async {
    try {
      final params = <String, String>{'store_id': storeId};
      if (startDate != null) params['start_date'] = startDate;
      if (endDate != null) params['end_date'] = endDate;

      final response = await apiClient.get(ServerConstants.analyticsSummary, queryParams: params);
      return Right(DashboardStats.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  Future<Either<Failure, OutletAnalyticsResponse>> getSummaryByStore({
    String? startDate,
    String? endDate,
  }) async {
    try {
      final params = <String, String>{};
      if (startDate != null) params['start_date'] = startDate;
      if (endDate != null) params['end_date'] = endDate;

      final response = await apiClient.get(ServerConstants.analyticsByStore, queryParams: params);
      return Right(OutletAnalyticsResponse.fromJson(response));
    } on ServerException catch (e) {
      return Left(Failure(e.message));
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
```

### 7.4 ViewModel — dashboard_viewmodel.dart

```dart
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../core/providers/selected_store_provider.dart';
import '../model/dashboard_stats.dart';
import '../model/outlet_stats.dart';
import '../repository/dashboard_repository.dart';

part 'dashboard_viewmodel.g.dart';

@riverpod
class DashboardViewModel extends _$DashboardViewModel {
  @override
  AsyncValue<DashboardStats> build() {
    final selectedStore = ref.watch(selectedStoreNotifierProvider);
    _loadDashboard(selectedStore?.id);
    return const AsyncValue.loading();
  }

  DateTime _selectedDate = DateTime.now();
  int _activeStatsTab = 0; // For outlet stats tabs

  DateTime get selectedDate => _selectedDate;
  int get activeStatsTab => _activeStatsTab;

  void setActiveStatsTab(int index) => _activeStatsTab = index;

  Future<void> setDate(DateTime date) async {
    _selectedDate = date;
    final selectedStore = ref.read(selectedStoreNotifierProvider);
    await _loadDashboard(selectedStore?.id);
  }

  Future<void> _loadDashboard(String? storeId) async {
    state = const AsyncValue.loading();
    final repo = ref.read(dashboardRepositoryProvider);
    final dateStr = DateFormat('yyyy-MM-dd').format(_selectedDate);

    if (storeId != null) {
      final result = await repo.getSummary(
        storeId: storeId,
        startDate: dateStr,
        endDate: dateStr,
      );
      state = result.fold(
        (failure) => AsyncValue.error(failure.message, StackTrace.current),
        (stats) => AsyncValue.data(stats),
      );
    } else {
      // All outlets
      final result = await repo.getSummaryByStore(
        startDate: dateStr,
        endDate: dateStr,
      );
      state = result.fold(
        (failure) => AsyncValue.error(failure.message, StackTrace.current),
        (response) => AsyncValue.data(response.totals),
      );
    }
  }

  Future<void> refresh() async {
    final selectedStore = ref.read(selectedStoreNotifierProvider);
    await _loadDashboard(selectedStore?.id);
  }
}

/// Separate provider for outlet-wise breakdown
@riverpod
class OutletStatsViewModel extends _$OutletStatsViewModel {
  @override
  AsyncValue<List<OutletStats>> build() {
    _loadOutletStats();
    return const AsyncValue.loading();
  }

  Future<void> _loadOutletStats() async {
    state = const AsyncValue.loading();
    final repo = ref.read(dashboardRepositoryProvider);
    final dateStr = DateFormat('yyyy-MM-dd').format(DateTime.now());

    final result = await repo.getSummaryByStore(startDate: dateStr, endDate: dateStr);
    state = result.fold(
      (failure) => AsyncValue.error(failure.message, StackTrace.current),
      (response) => AsyncValue.data(response.outlets),
    );
  }

  Future<void> refresh() async => _loadOutletStats();
}
```

### 7.5 View — dashboard_page.dart

**Layout** (replicated from pos_app with Playo styling):

```
Scaffold
├── AppBar: CommonAppBar (outlet selector + theme toggle + notification bell)
│
├── Body: RefreshIndicator
│   └── SingleChildScrollView
│       └── Column
│           ├── Header Row: "Dashboard" title + Date picker button
│           ├── SizedBox(16)
│           │
│           ├── TotalSalesCard (hero gradient card)
│           │   - Wave decoration (CustomPainter)
│           │   - "Total Sales" label
│           │   - "₹45,000.00" large value
│           │   - "Of X Outlets" subtitle
│           │   - "Total Sales of Y Orders" footer
│           │
│           ├── SizedBox(16)
│           │
│           ├── StatsGrid (2-column, 6 cards)
│           │   Row 1: [Online Sales card] [Cash Collected card]
│           │   Row 2: [Net Sales card]    [Expenses card]
│           │   Row 3: [Taxes card]        [Discounts card]
│           │
│           ├── SizedBox(16)
│           │
│           ├── OutletStatisticsSection
│           │   - Header: "Outlet Wise Statistics"
│           │   - Scrollable TabBar: Orders | Sales | Net Sales | Tax | Discounts
│           │   - Table rows: outlet name → value (per selected tab metric)
│           │   - Total row at bottom (bold)
│           │
│           ├── SizedBox(16)
│           │
│           └── OrdersChartSection (expandable)
│               - Header: "Last 5 Days Orders (Show Chart)" + toggle arrow
│               - Expanded: fl_chart LineChart with last 5 days order counts
│               - X-axis: date labels (e.g., "8-Mar")
│               - Y-axis: order count
│               - Line color: primary
```

### 7.6 Widget — total_sales_card.dart

```dart
// Container with gradient from colorScheme.primaryContainer to colorScheme.surface
// Has CustomPaint wave decoration (see wave_painter.dart)
// Shows:
//   - "Total Sales" in 14pt
//   - Amount in 28pt bold (CurrencyFormatter.format)
//   - "Of {storeCount} Outlets" in 12pt
//   - "Total Sales of {orderCount} Orders" in 10pt gray
// Takes: double totalSales, int totalOrders, int outletCount
```

### 7.7 Widget — stats_grid.dart

```dart
// Wrap or Column of Row widgets
// 3 Rows × 2 Columns of StatCard widgets
// Cards:
// 1. Online Sales (Icons.wifi, primary color)     2. Cash Collected (Icons.account_balance_wallet, tertiary)
// 3. Net Sales (Icons.bar_chart, secondary)       4. Expenses (Icons.receipt_long, primaryContainer)
// 5. Taxes (Icons.receipt, outline color)          6. Discounts (Icons.local_offer, error color)
//
// Values come from DashboardStats:
// - Online Sales = paymentBreakdown['upi'] + paymentBreakdown['card'] (or 0)
// - Cash Collected = paymentBreakdown['cash'] (or 0)
// - Net Sales = netSales
// - Expenses = 0 (expense endpoint not yet aggregated in analytics)
// - Taxes = taxCollected
// - Discounts = totalDiscounts
```

### 7.8 Widget — outlet_statistics_section.dart

```dart
// Card with:
// - Header row: chart icon + "Outlet Wise Statistics" title
// - Horizontal scrollable tab bar with tabs:
//   ["Orders", "Sales", "Net Sales", "Tax", "Discounts"]
// - Active tab has primary color underline (2pt)
// - Table below: each outlet as a row
//   - Left: bullet dot (colored) + outlet name
//   - Right: value for selected tab metric
// - Last row: "Total" in bold with summed value
//
// ConsumerWidget: watches outletStatsViewModelProvider
// Uses the activeStatsTab from dashboardViewModel to pick which metric to show
```

### 7.9 Widget — orders_chart_section.dart

```dart
// Expandable card:
// - Header (InkWell to toggle):
//   - Chart icon in colored container
//   - "Last 5 Days Orders (Show Chart)" text
//   - AnimatedRotation arrow icon
// - AnimatedContainer for body:
//   - SizedBox(height: 200)
//   - fl_chart LineChart:
//     - 5 data points (last 5 days' order counts)
//     - X-axis: formatted dates
//     - Y-axis: auto-scaled order counts
//     - Line: primary color, curved, area fill at 10% opacity
//     - Dots: primary color circles
//
// If no chart data, show "No data available" text
// This uses a separate simple provider or derives from dashboard stats
```

### 7.10 Widget — wave_painter.dart

```dart
// CustomPainter that draws a 2-layer wave pattern
// Used as decoration in TotalSalesCard
// Input: 2 colors (typically primary at 20% and 10% opacity)
// Draws bezier curves creating wave effect in top-left quadrant
```

---

## 8. FEATURE: ORDERS

### 8.1 Model — order.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'order_item.dart';

part 'order.freezed.dart';
part 'order.g.dart';

@freezed
abstract class Order with _$Order {
  const factory Order({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'employee_id') String? employeeId,
    @JsonKey(name: 'order_number') required String orderNumber,
    @JsonKey(name: 'order_type') @Default('dine_in') String orderType,
    @Default('open') String status,
    String? channel,
    @JsonKey(name: 'table_number') int? tableNumber,
    @Default(0) @JsonKey(name: 'gross_amount') double grossAmount,
    @Default(0) @JsonKey(name: 'tax_amount') double taxAmount,
    @Default(0) @JsonKey(name: 'discount_amount') double discountAmount,
    @Default(0) @JsonKey(name: 'service_charge') double serviceCharge,
    @Default(0) @JsonKey(name: 'net_amount') double netAmount,
    @Default('pending') @JsonKey(name: 'payment_status') String paymentStatus,
    String? notes,
    @JsonKey(name: 'cancel_reason') String? cancelReason,
    @Default([]) List<OrderItem> items,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}
```

### 8.2 Model — order_item.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_item.freezed.dart';
part 'order_item.g.dart';

@freezed
abstract class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'product_id') String? productId,
    @JsonKey(name: 'product_name') required String productName,
    @Default(1) int quantity,
    @Default(0) double price,
    @Default(0) @JsonKey(name: 'tax_amount') double taxAmount,
    @Default(0) @JsonKey(name: 'discount_amount') double discountAmount,
    @Default(0) double total,
    @Default('active') String status,
    String? notes,
    @JsonKey(name: 'kitchen_status') String? kitchenStatus,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
}
```

### 8.3 Model — payment.dart

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment.freezed.dart';
part 'payment.g.dart';

@freezed
abstract class Payment with _$Payment {
  const factory Payment({
    required String id,
    @JsonKey(name: 'order_id') required String orderId,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @Default(0) double amount,
    @Default(0) @JsonKey(name: 'tip_amount') double tipAmount,
    String? reference,
    @Default(false) @JsonKey(name: 'is_refund') bool isRefund,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
  }) = _Payment;

  factory Payment.fromJson(Map<String, dynamic> json) => _$PaymentFromJson(json);
}
```

### 8.4 Repository — order_repository.dart

```dart
// @riverpod function that returns OrderRepository
// Methods:
//   getOrders({storeId, status?, paymentStatus?, orderType?, limit, offset}) → Either<Failure, List<Order>>
//   getOrder(orderId) → Either<Failure, Order>
//   getPayments({storeId}) → Either<Failure, List<Payment>>
//
// GET /orders?store_id=X&status=Y&payment_status=Z&limit=50&offset=0
// GET /orders/{orderId}
// GET /orders/payments?store_id=X
```

### 8.5 ViewModel — orders_viewmodel.dart

```dart
// @riverpod class OrdersViewModel
// State: AsyncValue<List<Order>>
// Watches: selectedStoreProvider for store filter
//
// Properties:
//   statusFilter: String? (pending, preparing, ready, completed, cancelled)
//   paymentFilter: String? (pending, partial, completed, refunded)
//
// Methods:
//   setStatusFilter(String?)
//   setPaymentFilter(String?)
//   refresh()
//
// Auto-loads on build with current filters
```

### 8.6 View — orders_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body:
├── Column
│   ├── Padding(16): Row of filter chips
│   │   - Status filters: All | Pending | Preparing | Ready | Completed | Cancelled
│   │   - Each is a FilterChip/ChoiceChip
│   │   - Active chip: primary color fill
│   │
│   ├── Padding(16): Row of payment filter chips
│   │   - Payment: All | Unpaid | Partial | Paid | Refunded
│   │
│   └── Expanded: orders list
│       - AsyncValue.when pattern:
│         loading: Loader()
│         error: AppErrorWidget(message, onRetry)
│         data: ListView.builder of OrderCard widgets
│              If empty: EmptyStateWidget("No orders found")
│
│       - Each OrderCard shows:
│         - Order # (bold) + date/time (gray)
│         - Order type badge (Dine In / Take Away / Delivery)
│         - Table number (if dine_in)
│         - Total amount (bold)
│         - Status badge (colored chip)
│         - Payment status badge
│         - Tap → navigates to OrderDetailPage
```

### 8.7 View — order_detail_page.dart

**Layout**:

```
Scaffold with AppBar showing "Order #{orderNumber}"
Body: SingleChildScrollView
├── Card: Order Info
│   - Order #, Date, Time
│   - Order type, Table number
│   - Status badge, Payment status badge
│
├── Card: Order Items Table
│   - Header: Item | Qty | Price | Total
│   - ListTile for each item
│   - Subtotal, Tax, Discount, Total rows
│
└── Card: Payment Info
    - Payment method
    - Amount paid
    - Tip amount
    - Reference
```

---

## 9. FEATURE: REPORTS

### 9.1 Model — sales_report.dart

```dart
// @freezed SalesReport with fields:
//   storeId, storeName, date, totalOrders, grossSales, netSales,
//   taxCollected, totalDiscounts, paymentBreakdown (Map<String, double>),
//   orderTypeBreakdown (Map<String, dynamic> - {type: {count, amount}})
```

### 9.2 Model — day_close_report.dart

```dart
// @freezed DayCloseReport matching backend DayCloseResponse:
//   id, storeId, businessDate, totalOrders, grossSales, totalTax,
//   totalDiscounts, totalServiceCharge, totalTips, netSales,
//   totalExpenses, netCash, paymentBreakdown, orderTypeBreakdown,
//   cancelledOrders, closedBy, closedAt
```

### 9.3 Repository — report_repository.dart

```dart
// Methods:
//   getReportTypes() → Either<Failure, List<Map<String, dynamic>>>
//   generateReport({templateCode, storeId, params}) → Either<Failure, Map<String, dynamic>>
//   getDayCloseReports({storeId, startDate, endDate}) → Either<Failure, List<DayCloseReport>>
//
// Endpoints:
//   GET /reports/types
//   POST /reports/generate
//   GET /shifts/day-close?store_id=X&start_date=Y&end_date=Z
```

### 9.4 ViewModel — reports_viewmodel.dart

```dart
// @riverpod class ReportsViewModel
// State: AsyncValue<List<DayCloseReport>>
// Loads day-close reports for selected store and date range
//
// Methods:
//   setDateRange(start, end)
//   refresh()
```

### 9.5 View — reports_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body: Column
├── Date range picker (start + end date)
├── SizedBox(16)
├── Expanded: ListView of DayCloseReport cards
│   Each card shows:
│   - Business date (bold)
│   - Grid: Total Orders | Gross Sales | Net Sales | Tax | Discounts
│   - Payment breakdown row (Cash | Card | UPI amounts)
│   - Net Cash
│   - Tap → SalesReportDetailPage
```

### 9.6 View — sales_report_detail_page.dart

**Layout**:

```
Scaffold with AppBar showing date
Body: SingleChildScrollView
├── Summary cards row (Total Orders, Gross, Net, Tax, Discounts)
├── Payment breakdown section (bar chart or list)
├── Order type breakdown section (pie or list)
├── Cancelled orders count
├── Expenses total
├── Net Cash
```

---

## 10. FEATURE: INVENTORY

### 10.1 Model — inventory_item.dart

```dart
// @freezed InventoryItem matching backend:
//   id, storeId, name, sku, category, unitId, minStock, maxStock,
//   reorderLevel, reorderQuantity, lastPurchasePrice, averageCost,
//   isActive, createdAt
```

### 10.2 Model — stock_level.dart

```dart
// @freezed StockLevel:
//   id, itemId, locationId, quantity, updatedAt
```

### 10.3 Repository — inventory_repository.dart

```dart
// Methods:
//   getItems({storeId, activeOnly}) → Either<Failure, List<InventoryItem>>
//   getStockLevels({storeId}) → Either<Failure, List<StockLevel>>
//   getOutOfStockItems({storeId}) → Either<Failure, List<InventoryItem>>
//
// Endpoints:
//   GET /inventory/items?store_id=X&active_only=true
//   GET /inventory/stock?store_id=X
//   GET /inventory/out-of-stock?store_id=X
```

### 10.4 ViewModel — inventory_viewmodel.dart

```dart
// @riverpod class InventoryViewModel
// State: AsyncValue<List<InventoryItem>>
// Watches: selectedStoreProvider
//
// Also: OutOfStockViewModel → AsyncValue<List<InventoryItem>> (out-of-stock items)
//
// Methods: refresh()
```

### 10.5 View — inventory_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body: DefaultTabController(length: 2)
├── TabBar: [Stock Levels | Out of Stock]
├── TabBarView:
│   Tab 1 (Stock Levels):
│   - ListView of inventory items with current stock quantity
│   - Each tile: item name, SKU, category, quantity, min/reorder indicator
│   - Color coding: green (ok), orange (low), red (critical/out)
│
│   Tab 2 (Out of Stock):
│   - ListView of out-of-stock items
│   - Each tile: item name, current qty, reorder level
│   - Red warning indicators
```

---

## 11. FEATURE: EMPLOYEES

### 11.1 Model — employee.dart

```dart
// @freezed Employee matching backend:
//   id, storeId, userId, name, employeeCode, phone, email,
//   role, isActive, permissions (Map), createdAt
```

### 11.2 Repository — employee_repository.dart

```dart
// Methods:
//   getEmployees({storeId}) → Either<Failure, List<Employee>>
//
// Endpoint: GET /employees?store_id=X
```

### 11.3 ViewModel — employees_viewmodel.dart

```dart
// @riverpod class EmployeesViewModel
// State: AsyncValue<List<Employee>>
// Watches: selectedStoreProvider
//
// Properties: searchQuery (filters locally by name/role/phone)
// Methods: setSearchQuery(String), refresh()
```

### 11.4 View — employees_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body: Column
├── Search bar (TextField with search icon)
├── SizedBox(12)
├── Expanded: ListView of EmployeeCard widgets
│   Each card:
│   - Leading: CircleAvatar with initials
│   - Title: employee name (bold)
│   - Subtitle: role badge + employee code
│   - Trailing: active/inactive indicator dot
│   - Below: phone + email (gray text)
```

---

## 12. FEATURE: SHIFTS

### 12.1 Model — shift.dart

```dart
// @freezed Shift matching backend:
//   id, storeId, terminalId, employeeId, status,
//   openingCash, closingCash, expectedCash, cashVariance,
//   totalSales, totalOrders, notes,
//   startedAt, endedAt, paymentSummaries (List<ShiftPaymentSummary>)
```

### 12.2 Model — shift_payment_summary.dart

```dart
// @freezed ShiftPaymentSummary:
//   id, shiftId, paymentMethod, expectedAmount, actualAmount, variance
```

### 12.3 Repository — shift_repository.dart

```dart
// Methods:
//   getShifts({storeId, status?}) → Either<Failure, List<Shift>>
//   getShift(shiftId) → Either<Failure, Shift>
//
// Endpoints:
//   GET /shifts?store_id=X&status=Y
//   GET /shifts/{shiftId}
```

### 12.4 ViewModel — shifts_viewmodel.dart

```dart
// @riverpod class ShiftsViewModel
// State: AsyncValue<List<Shift>>
// Watches: selectedStoreProvider
//
// Properties: statusFilter ('open' | 'closed' | null)
// Methods: setStatusFilter(String?), refresh()
```

### 12.5 View — shifts_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body: Column
├── Filter chips: All | Open | Closed
├── SizedBox(12)
├── Expanded: ListView of ShiftCard widgets
│   Each card:
│   - Employee name + shift status badge (open=green, closed=gray)
│   - Started at → Ended at (or "Active" if open)
│   - Row: Opening Cash | Closing Cash | Variance
│   - Row: Total Sales | Total Orders
│   - Tap → ShiftDetailPage
```

### 12.6 View — shift_detail_page.dart

**Layout**:

```
Scaffold with AppBar
Body: SingleChildScrollView
├── Card: Shift Info (Employee, Terminal, Status, Duration)
├── Card: Cash Summary (Opening, Closing, Expected, Variance with color)
├── Card: Sales Summary (Total Sales, Total Orders)
├── Card: Payment Breakdown Table
│   - Columns: Method | Expected | Actual | Variance
│   - Rows: One per ShiftPaymentSummary
│   - Variance colored (green if 0, red if negative)
```

---

## 13. FEATURE: STORES

### 13.1 Repository — store_repository.dart

```dart
// @riverpod function that returns StoreRepository
// Methods:
//   getStores() → Either<Failure, List<Store>>
//   getStore(storeId) → Either<Failure, Store>
//
// Endpoints:
//   GET /stores
//   GET /stores/{storeId}
```

### 13.2 ViewModel — stores_viewmodel.dart

```dart
// Uses the core storesProvider (shared across the app)
// No separate viewmodel needed unless the stores_page needs additional state
```

### 13.3 View — stores_page.dart

**Layout**:

```
Scaffold with CommonAppBar
Body: storesProvider.when
├── loading: Loader()
├── error: AppErrorWidget
├── data: ListView of StoreCard widgets
│   Each card:
│   - Store name (bold, 16pt)
│   - Location/address
│   - City, State
│   - Phone, Email
│   - Outlet type badge (COFO, FOFO, etc.)
│   - Table count
│   - Active status indicator
```

---

## 14. FEATURE: MORE (SETTINGS & MANAGEMENT)

### 14.1 View — more_page.dart

**Layout** (similar to Playo "More" page):

```
Scaffold with CommonAppBar
Body: ListView
├── User profile section
│   - Avatar (initials circle)
│   - Name
│   - Email
│   - Role badge
│
├── Divider
│
├── ListTile: "Orders Management" → navigates to OrdersPage
├── ListTile: "Reports" → navigates to ReportsPage
├── ListTile: "Inventory" → navigates to InventoryPage
├── ListTile: "Employees" → navigates to EmployeesPage
├── ListTile: "Shifts" → navigates to ShiftsPage
├── ListTile: "Stores" → navigates to StoresPage
│
├── Divider
│
├── ListTile: "Theme" → toggle dark/light
├── ListTile: "Logout" → confirmation dialog → logout
│
│ Each ListTile:
│ - Leading icon in colored circle
│ - Title text
│ - Trailing chevron icon
│ - Tap navigates via Navigator.push(MaterialPageRoute(...))
```

---

## 15. NAVIGATION & ROUTING

### Bottom Navigation Bar (AppBottomNavBar)

```dart
// core/widgets/bottom_navigation_bar.dart
// ConsumerStatefulWidget
//
// 4 tabs with IndexedStack:
// Index 0: DashboardPage (Home/Sales)     — icon: Iconsax.chart_2
// Index 1: OrdersPage                     — icon: Iconsax.receipt_item
// Index 2: ReportsPage                    — icon: Iconsax.document_text
// Index 3: MorePage                       — icon: Iconsax.more
//
// Bottom nav bar styling (from Playo):
// - BottomNavigationBarType.fixed
// - Active icon: Container(height: 40, width: 60) with secondaryContainer bg, borderRadius 30
// - Inactive icon: same container but surface bg
// - Selected color: colorScheme.primary
// - Unselected color: colorScheme.onSurface
//
// AnimatedSwitcher + FadeTransition between pages
// PopScope: back button goes to Dashboard (index 0) first, then exits
//
// Uses: bottomNavIndexProvider for state
```

### Navigation Flow

```
AppBottomNavBar
├── Tab 0: DashboardPage
├── Tab 1: OrdersPage
│   └── push → OrderDetailPage(orderId)
├── Tab 2: ReportsPage
│   └── push → SalesReportDetailPage(report)
├── Tab 3: MorePage
│   ├── push → OrdersPage (reuses)
│   ├── push → InventoryPage
│   ├── push → EmployeesPage
│   ├── push → ShiftsPage
│   │   └── push → ShiftDetailPage(shiftId)
│   └── push → StoresPage
```

---

## 16. BACKEND API REFERENCE

All endpoints are authenticated with `Authorization: Bearer {token}` header. Backend runs on the URL from `.env` `API_BASE_URL`.

### Authentication

| Method | Endpoint         | Body                                   | Response                                    |
| ------ | ---------------- | -------------------------------------- | ------------------------------------------- |
| POST   | `/auth/login`    | `{email, password}`                    | `{access_token, token_type, user}`          |
| POST   | `/auth/register` | `{name, email, phone, password, role}` | `{id, name, email, ...}`                    |
| GET    | `/users/me`      | —                                      | `{id, name, email, phone, role, is_active}` |

### Analytics

| Method | Endpoint                      | Params                                 | Response                                                                                                   |
| ------ | ----------------------------- | -------------------------------------- | ---------------------------------------------------------------------------------------------------------- |
| GET    | `/analytics/summary`          | `store_id`, `start_date?`, `end_date?` | `{total_revenue, total_orders, tax_collected, gross_sales, net_sales, total_discounts, payment_breakdown}` |
| GET    | `/analytics/summary/by-store` | `start_date?`, `end_date?`             | `{outlets: [{store_id, store_name, ...}], totals: {...}}`                                                  |

### Stores

| Method | Endpoint             | Params | Response                                              |
| ------ | -------------------- | ------ | ----------------------------------------------------- |
| GET    | `/stores`            | —      | `[{id, owner_id, name, location, phone, email, ...}]` |
| GET    | `/stores/{store_id}` | —      | `{id, owner_id, name, ...}`                           |

### Orders

| Method | Endpoint             | Params                                                                       | Response                                             |
| ------ | -------------------- | ---------------------------------------------------------------------------- | ---------------------------------------------------- |
| GET    | `/orders`            | `store_id`, `status?`, `payment_status?`, `order_type?`, `limit?`, `offset?` | `[{id, order_number, order_type, status, ...items}]` |
| GET    | `/orders/{order_id}` | —                                                                            | `{id, order_number, ...items, ...payments}`          |
| GET    | `/orders/payments`   | `store_id`                                                                   | `[{id, order_id, payment_method, amount, ...}]`      |

### Employees

| Method | Endpoint     | Params     | Response                                                          |
| ------ | ------------ | ---------- | ----------------------------------------------------------------- |
| GET    | `/employees` | `store_id` | `[{id, name, employee_code, phone, email, role, is_active, ...}]` |

### Shifts

| Method | Endpoint             | Params                                 | Response                                                          |
| ------ | -------------------- | -------------------------------------- | ----------------------------------------------------------------- |
| GET    | `/shifts`            | `store_id`, `status?`                  | `[{id, employee_id, status, opening_cash, ...payment_summaries}]` |
| GET    | `/shifts/{shift_id}` | —                                      | `{id, ...payment_summaries}`                                      |
| GET    | `/shifts/day-close`  | `store_id`, `start_date?`, `end_date?` | `[{id, business_date, total_orders, ...}]`                        |

### Inventory

| Method | Endpoint                  | Params                     | Response                                      |
| ------ | ------------------------- | -------------------------- | --------------------------------------------- |
| GET    | `/inventory/items`        | `store_id`, `active_only?` | `[{id, name, sku, category, ...}]`            |
| GET    | `/inventory/stock`        | `store_id`                 | `[{id, item_id, location_id, quantity, ...}]` |
| GET    | `/inventory/out-of-stock` | `store_id`                 | `[{id, name, ...}]`                           |

### Reports

| Method | Endpoint            | Params                                  | Response                               |
| ------ | ------------------- | --------------------------------------- | -------------------------------------- |
| GET    | `/reports/types`    | `category?`                             | `[{id, code, name, description, ...}]` |
| POST   | `/reports/generate` | `{template_code, store_id, parameters}` | `{id, status, result, ...}`            |

---

## 17. CODE GENERATION COMMANDS

After creating all files, run:

```bash
cd pos_analytics_app

# Install dependencies
flutter pub get

# Generate Freezed models + Riverpod providers
dart run build_runner build --delete-conflicting-outputs
```

**Files that need `.g.dart` generation (Riverpod annotation)**:

- `core/providers/current_user_provider.dart`
- `core/providers/selected_store_provider.dart`
- `core/providers/theme_provider.dart`
- `core/providers/stores_provider.dart`
- `features/auth/repository/auth_repository.dart`
- `features/auth/viewmodel/auth_viewmodel.dart`
- `features/dashboard/repository/dashboard_repository.dart`
- `features/dashboard/viewmodel/dashboard_viewmodel.dart`
- `features/orders/repository/order_repository.dart`
- `features/orders/viewmodel/orders_viewmodel.dart`
- `features/reports/repository/report_repository.dart`
- `features/reports/viewmodel/reports_viewmodel.dart`
- `features/inventory/repository/inventory_repository.dart`
- `features/inventory/viewmodel/inventory_viewmodel.dart`
- `features/employees/repository/employee_repository.dart`
- `features/employees/viewmodel/employees_viewmodel.dart`
- `features/shifts/repository/shift_repository.dart`
- `features/shifts/viewmodel/shifts_viewmodel.dart`
- `features/stores/repository/store_repository.dart`

**Files that need `.freezed.dart` + `.g.dart` generation (Freezed models)**:

- `core/models/user.dart`
- `core/models/store.dart`
- `features/auth/model/auth_response.dart`
- `features/dashboard/model/dashboard_stats.dart`
- `features/dashboard/model/outlet_stats.dart`
- `features/orders/model/order.dart`
- `features/orders/model/order_item.dart`
- `features/orders/model/payment.dart`
- `features/reports/model/sales_report.dart`
- `features/reports/model/day_close_report.dart`
- `features/inventory/model/inventory_item.dart`
- `features/inventory/model/stock_level.dart`
- `features/employees/model/employee.dart`
- `features/shifts/model/shift.dart`
- `features/shifts/model/shift_payment_summary.dart`

---

## 18. IMPLEMENTATION ORDER

Execute in this exact sequence:

1. **Update `pubspec.yaml`** with all dependencies listed in Section 2.
2. **Create `.env`** file with `API_BASE_URL`.
3. **Create `core/` layer** (Sections 5.4 through 5.26) — all files.
4. **Create `init_dependencies.dart`** and `init_dependencies.main.dart`.
5. **Create `core/models/`** (user.dart, store.dart).
6. **Create `core/providers/`** (all provider files).
7. **Create `core/common/widgets/`** (all shared widgets).
8. **Create Feature: Auth** (model → repository → viewmodel → view).
9. **Create Feature: Dashboard** (model → repository → viewmodel → widgets → page).
10. **Create Feature: Orders** (model → repository → viewmodel → widgets → pages).
11. **Create Feature: Reports** (model → repository → viewmodel → widgets → pages).
12. **Create Feature: Inventory** (model → repository → viewmodel → widgets → page).
13. **Create Feature: Employees** (model → repository → viewmodel → widgets → page).
14. **Create Feature: Shifts** (model → repository → viewmodel → widgets → pages).
15. **Create Feature: Stores** (repository → viewmodel → widgets → page).
16. **Create Feature: More** (page + menu tiles).
17. **Create Bottom Navigation Bar** widget.
18. **Create `main.dart`** (entry point).
19. **Run `flutter pub get`**.
20. **Run `dart run build_runner build --delete-conflicting-outputs`**.
21. **Test compilation**: `flutter build apk --debug`.

---

## 19. UI/UX DESIGN SYSTEM

### Color Palette (Material 3 Dynamic from seed `#1290FF`)

| Usage      | Light      | Dark         |
| ---------- | ---------- | ------------ |
| Primary    | Blue       | Blue tonal   |
| Secondary  | Purple-ish | Purple tonal |
| Tertiary   | Cyan-ish   | Cyan tonal   |
| Surface    | White      | Dark gray    |
| Error      | Red        | Red tonal    |
| Background | Near-white | Near-black   |

### Typography

| Element             | Size | Weight         | Color            |
| ------------------- | ---- | -------------- | ---------------- |
| Page title          | 20   | Bold (700)     | onSurface        |
| Card title          | 16   | SemiBold (600) | onSurface        |
| Card value (large)  | 28   | Bold           | onSurface        |
| Card value (medium) | 18   | Bold           | onSurface        |
| Body text           | 14   | Regular (400)  | onSurface        |
| Caption/info        | 12   | Regular        | onSurfaceVariant |
| Small label         | 10   | Regular        | onSurfaceVariant |

### Spacing

| Element               | Value        |
| --------------------- | ------------ |
| Page padding          | 16           |
| Card padding          | 16           |
| Card border radius    | 12           |
| Card elevation/shadow | 0.05 opacity |
| Between sections      | 16           |
| Between items         | 8–12         |
| Icon size (nav)       | 24           |
| Icon container (stat) | 40           |

### Status Badge Colors

| Status               | Color Scheme                                  |
| -------------------- | --------------------------------------------- |
| Open / Pending       | `secondaryContainer` / `onSecondaryContainer` |
| Preparing            | `tertiaryContainer` / `onTertiaryContainer`   |
| Ready                | `primaryContainer` / `onPrimaryContainer`     |
| Completed / Paid     | `primary` (with white text)                   |
| Cancelled / Refunded | `errorContainer` / `onErrorContainer`         |

### Animations & Transitions

- Page transitions: `FadeTransition` via `AnimatedSwitcher` (300ms)
- Expandable sections: `AnimatedContainer` (300ms)
- Pull-to-refresh: `RefreshIndicator`
- Loading states: `CircularProgressIndicator `

---

## 20. QUALITY CHECKLIST

Before considering the app complete, verify:

- [ ] `flutter pub get` succeeds with no errors
- [ ] `dart run build_runner build --delete-conflicting-outputs` generates all `.g.dart` and `.freezed.dart` files
- [ ] `flutter analyze` returns no errors
- [ ] App compiles: `flutter build apk --debug`
- [ ] Login page renders and authenticates against backend
- [ ] Dashboard loads with real data from `/analytics/summary`
- [ ] Outlet picker works across all pages
- [ ] Theme toggle (light/dark) works
- [ ] Bottom navigation works with all 4 tabs
- [ ] Orders page loads, filters work
- [ ] Order detail page shows items and payment info
- [ ] Reports page loads day-close reports
- [ ] Inventory page shows stock levels and out-of-stock items
- [ ] Employees page lists employees with search
- [ ] Shifts page lists shifts with filter
- [ ] Shift detail shows payment breakdown
- [ ] Stores page lists all stores
- [ ] More page menu items navigate correctly
- [ ] Logout clears token and returns to login
- [ ] All AsyncValue states handled (loading, error, data)
- [ ] Error snackbars display on API failures
- [ ] Pull-to-refresh works on Dashboard, Orders, Shifts, Employees, Inventory
- [ ] No hardcoded API URLs (uses .env)
- [ ] No hardcoded auth tokens (uses SharedPreferences)
- [ ] All Riverpod providers use `@riverpod` annotation (not legacy)
- [ ] All models use `@freezed` annotation
- [ ] Architecture: core/ + features/ folder structure maintained
- [ ] MVVM pattern: model → repository → viewmodel → view per feature
- [ ] `Either<Failure, T>` pattern in all repositories

---

## FINAL NOTES

- **This prompt is self-contained.** Every model field, every API endpoint, every screen layout, every widget specification is included. The implementing agent should NOT need to read any other files.
- **The backend is already running** at the URL specified in `.env`. Do not create or modify any backend code.
- **Only modify files inside `pos_analytics_app/lib/`** and `pos_analytics_app/pubspec.yaml` and `pos_analytics_app/.env`.
- **Do NOT create the `.g.dart` or `.freezed.dart` files manually.** Create only the source `.dart` files. The generated files are produced by `build_runner`.
- **When the prompt says "ConsumerWidget" or "ConsumerStatefulWidget", it means from `flutter_riverpod`.** All view classes must extend one of these.
- **Every `ref.watch` in a widget triggers rebuild on change.** Use `ref.read` for one-time actions (button presses, init calls).
- **The app must compile and function correctly** against the existing POS backend without any modifications to the backend.
