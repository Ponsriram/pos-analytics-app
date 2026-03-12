part of 'init_dependencies.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  await dotenv.load(fileName: ".env");

  // HTTP Client
  serviceLocator.registerLazySingleton<http.Client>(() => http.Client());

  // SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator
      .registerLazySingleton<SharedPreferences>(() => sharedPreferences);

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
