import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/common/widgets/app_bottom_nav_bar.dart';
import 'core/providers/current_user_provider.dart';
import 'core/providers/theme_provider.dart';
import 'core/theme/app_theme.dart';
import 'features/auth/view/pages/login_page.dart';
import 'init_dependencies.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
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
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      home: currentUser != null ? const AppBottomNavBar() : const LoginPage(),
    );
  }
}
