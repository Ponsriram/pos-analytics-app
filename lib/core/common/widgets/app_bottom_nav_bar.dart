import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../providers/bottom_nav_provider.dart';
import '../../../features/dashboard/view/pages/dashboard_page.dart';
import '../../../features/reports/view/pages/reports_page.dart';
import '../../../features/inventory/view/pages/inventory_page.dart';
import '../../../features/more/view/pages/more_page.dart';
import '../../../features/stores/view/pages/stores_page.dart';

class AppBottomNavBar extends ConsumerStatefulWidget {
  const AppBottomNavBar({super.key});

  @override
  ConsumerState<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends ConsumerState<AppBottomNavBar> {
  static const _pages = <Widget>[
    StoresPage(),
    ReportsPage(),
    DashboardPage(),
    InventoryPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(bottomNavIndexProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return PopScope(
      canPop: currentIndex == 2,
      onPopInvokedWithResult: (didPop, _) {
        if (!didPop) {
          ref.read(bottomNavIndexProvider.notifier).setIndex(2);
        }
      },
      child: Scaffold(
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) =>
              FadeTransition(opacity: animation, child: child),
          child: IndexedStack(
            key: ValueKey(currentIndex),
            index: currentIndex,
            children: _pages,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) {
            ref.read(bottomNavIndexProvider.notifier).setIndex(index);
          },
          selectedItemColor: colorScheme.primary,
          unselectedItemColor: colorScheme.onSurfaceVariant,
          backgroundColor: colorScheme.surface,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: _buildNavIcon(Iconsax.shop, 0),
              activeIcon: _buildActiveNavIcon(Iconsax.shop, 0),
              label: 'Stores',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Iconsax.document_text, 1),
              activeIcon: _buildActiveNavIcon(Iconsax.document_text, 1),
              label: 'Reports',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Iconsax.chart_2, 2),
              activeIcon: _buildActiveNavIcon(Iconsax.chart_21, 2),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Iconsax.box, 3),
              activeIcon: _buildActiveNavIcon(Iconsax.box_1, 3),
              label: 'Inventory',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Iconsax.more, 4),
              activeIcon: _buildActiveNavIcon(Iconsax.more, 4),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, int index) {
    return Container(
      height: 40,
      width: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Icon(icon),
    );
  }

  Widget _buildActiveNavIcon(IconData icon, int index) {
    return Container(
      height: 40,
      width: 60,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.secondaryContainer,
      ),
      child: Icon(icon),
    );
  }
}
