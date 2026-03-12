import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/common/widgets/ask_ai_fab.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/providers/current_user_provider.dart';
import '../../../../core/providers/theme_provider.dart';
import '../../../ai_agent/view/pages/ai_chat_page.dart';
import '../../../employees/view/pages/employees_page.dart';
import '../../../management/view/pages/management_page.dart';
import '../../../menu/view/pages/menu_page.dart';
import '../../../online_orders/view/pages/online_orders_page.dart';
import '../../../profile/view/pages/user_info_page.dart';
import '../../../running_orders/view/pages/running_orders_page.dart';
import '../../../shifts/view/pages/shifts_page.dart';

class MorePage extends ConsumerWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider);
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: const CommonAppBar(),
      floatingActionButton: const AskAiFab(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // User profile section
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 0,
            color: colorScheme.surface,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: colorScheme.primaryContainer,
                    child: Text(
                      currentUser != null
                          ? currentUser.name
                                .split(' ')
                                .take(2)
                                .map((w) => w.isNotEmpty ? w[0] : '')
                                .join()
                                .toUpperCase()
                          : '?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          currentUser?.name ?? 'Guest',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          currentUser?.email ?? '',
                          style: TextStyle(
                            fontSize: 13,
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                        if (currentUser != null) ...[
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              currentUser.role.toUpperCase(),
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: colorScheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Menu items
          _MoreMenuTile(
            icon: Iconsax.receipt_item,
            iconColor: colorScheme.primary,
            title: 'Running Orders',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const RunningOrdersPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.global,
            iconColor: colorScheme.secondary,
            title: 'Online Orders',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const OnlineOrdersPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.menu_board,
            iconColor: colorScheme.tertiary,
            title: 'Menu / Products',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const MenuPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.people,
            iconColor: colorScheme.primary,
            title: 'Employees',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const EmployeesPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.clock,
            iconColor: colorScheme.secondary,
            title: 'Shifts',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ShiftsPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.setting_2,
            iconColor: colorScheme.tertiary,
            title: 'Management',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ManagementPage()),
            ),
          ),
          _MoreMenuTile(
            icon: Iconsax.smart_home,
            iconColor: colorScheme.primary,
            title: 'Ask AI',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AiChatPage()),
            ),
          ),

          const Divider(height: 32),

          // Edit Profile
          _MoreMenuTile(
            icon: Iconsax.user_edit,
            iconColor: colorScheme.onSurfaceVariant,
            title: 'Edit Profile',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const UserInfoPage()),
            ),
          ),

          // Theme toggle
          _MoreMenuTile(
            icon: isDark ? Iconsax.sun_1 : Iconsax.moon,
            iconColor: colorScheme.onSurfaceVariant,
            title: isDark ? 'Light Mode' : 'Dark Mode',
            onTap: () => ref.read(themeModeProvider.notifier).toggle(),
          ),

          // Logout
          _MoreMenuTile(
            icon: Iconsax.logout,
            iconColor: colorScheme.error,
            title: 'Logout',
            onTap: () => _showLogoutDialog(context, ref),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              ref.read(currentUserProvider.notifier).logout();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}

class _MoreMenuTile extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final VoidCallback onTap;

  const _MoreMenuTile({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: iconColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: iconColor, size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: colorScheme.onSurfaceVariant,
          size: 20,
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
