import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../providers/selected_store_provider.dart';
import '../../providers/stores_provider.dart';
import '../../providers/theme_provider.dart';
import '../../../features/dashboard/view/pages/notification_page.dart';
import 'outlet_picker_dialog.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String? title;
  final bool showOutletPicker;
  final List<Widget>? extraActions;

  const CommonAppBar({
    super.key,
    this.title,
    this.showOutletPicker = true,
    this.extraActions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedStore = ref.watch(selectedStoreProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: showOutletPicker
          ? InkWell(
              onTap: () => _showOutletPicker(context, ref),
              borderRadius: BorderRadius.circular(8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    selectedStore?.name ?? 'All Outlets',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: colorScheme.onSurface,
                    size: 20,
                  ),
                ],
              ),
            )
          : title != null
          ? Text(
              title!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            )
          : null,
      centerTitle: true,
      actions: [
        if (extraActions != null) ...extraActions!,
        IconButton(
          icon: Icon(
            ref.watch(themeModeProvider) == ThemeMode.light
                ? Iconsax.moon
                : Iconsax.sun_1,
            size: 22,
          ),
          onPressed: () => ref.read(themeModeProvider.notifier).toggle(),
        ),
        IconButton(
          icon: const Icon(Iconsax.notification, size: 22),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const NotificationPage()),
            );
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: colorScheme.outlineVariant.withValues(alpha: 0.3),
          height: 1,
        ),
      ),
    );
  }

  void _showOutletPicker(BuildContext context, WidgetRef ref) {
    final stores = ref.read(storesProvider);
    stores.whenData((storeList) {
      showModalBottomSheet(
        context: context,
        builder: (_) => OutletPickerDialog(stores: storeList),
      );
    });
  }
}
