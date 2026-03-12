import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../stores/view/pages/stores_page.dart';
import 'admin_groups_page.dart';
import 'biller_groups_page.dart';
import 'cloud_access_page.dart';
import 'zones_page.dart';

class ManagementPage extends ConsumerWidget {
  const ManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Management',
        showBack: true,
        showOutletPicker: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Store Management',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          _ManagementTile(
            icon: Iconsax.shop,
            title: 'Stores',
            subtitle: 'Manage your store outlets',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const StoresPage()),
            ),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.people,
            title: 'Admin Groups',
            subtitle: 'Manage admin access and permissions',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AdminGroupsPage()),
            ),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.user_octagon,
            title: 'Biller Groups',
            subtitle: 'Manage biller roles and permissions',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const BillerGroupsPage()),
            ),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.cloud,
            title: 'Cloud Access',
            subtitle: 'Manage cloud sync and access settings',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const CloudAccessPage()),
            ),
            colorScheme: colorScheme,
          ),
          const SizedBox(height: 24),
          Text(
            'Configuration',
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          _ManagementTile(
            icon: Iconsax.map,
            title: 'Zones',
            subtitle: 'Configure delivery zones',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ZonesPage()),
            ),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.category,
            title: 'Outlet Types',
            subtitle: 'Define and manage outlet categories',
            onTap: () => _showComingSoon(context),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.setting_2,
            title: 'Third Party Config',
            subtitle: 'Configure third-party integrations',
            onTap: () => _showComingSoon(context),
            colorScheme: colorScheme,
          ),
          _ManagementTile(
            icon: Iconsax.status_up,
            title: 'Store Status Tracking',
            subtitle: 'Monitor store operational status',
            onTap: () => _showComingSoon(context),
            colorScheme: colorScheme,
          ),
        ],
      ),
    );
  }

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('This feature is coming soon')),
    );
  }
}

class _ManagementTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final ColorScheme colorScheme;

  const _ManagementTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: colorScheme.primary, size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(fontSize: 12, color: colorScheme.onSurfaceVariant),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: colorScheme.onSurfaceVariant,
          size: 20,
        ),
      ),
    );
  }
}
