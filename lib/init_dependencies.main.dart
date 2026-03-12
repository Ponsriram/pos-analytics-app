part of 'init_dependencies.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load(fileName: ".env");

  // HTTP Client
  serviceLocator.registerLazySingleton<http.Client>(() => http.Client());

  // Database
  final database = AppDatabase();
  serviceLocator.registerLazySingleton<AppDatabase>(() => database);

  // API Client
  serviceLocator.registerLazySingleton<ApiClient>(
    () => ApiClient(
      baseUrl: dotenv.env['API_BASE_URL'] ?? 'http://localhost:8000',
      httpClient: serviceLocator<http.Client>(),
      database: serviceLocator<AppDatabase>(),
    ),
  );

  // Connection Checker
  serviceLocator.registerLazySingleton<ConnectionChecker>(
    () => ConnectionCheckerImpl(),
  );
}
