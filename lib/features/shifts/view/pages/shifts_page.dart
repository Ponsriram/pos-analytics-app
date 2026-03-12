import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/common_app_bar.dart';
import '../../../../core/common/widgets/empty_state_widget.dart';
import '../../../../core/common/widgets/error_widget.dart';
import '../../../../core/common/widgets/loader.dart';
import '../../viewmodel/shifts_viewmodel.dart';
import '../widgets/shift_card.dart';
import 'shift_detail_page.dart';

class ShiftsPage extends ConsumerWidget {
  const ShiftsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shiftsState = ref.watch(shiftsViewModelProvider);
    final shiftsVM = ref.read(shiftsViewModelProvider.notifier);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Text(
              'Shifts',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: Row(
              children: [
                _filterChip(
                  'All',
                  null,
                  shiftsVM.statusFilter,
                  (v) => shiftsVM.setStatusFilter(v),
                  colorScheme,
                ),
                const SizedBox(width: 8),
                _filterChip(
                  'Open',
                  'open',
                  shiftsVM.statusFilter,
                  (v) => shiftsVM.setStatusFilter(v),
                  colorScheme,
                ),
                const SizedBox(width: 8),
                _filterChip(
                  'Closed',
                  'closed',
                  shiftsVM.statusFilter,
                  (v) => shiftsVM.setStatusFilter(v),
                  colorScheme,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: shiftsState.when(
              loading: () => const Loader(),
              error: (error, _) => AppErrorWidget(
                message: error.toString(),
                onRetry: () => shiftsVM.refresh(),
              ),
              data: (shifts) {
                if (shifts.isEmpty) {
                  return RefreshIndicator(
                    onRefresh: () => shiftsVM.refresh(),
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: const [
                        SizedBox(height: 100),
                        EmptyStateWidget(
                          icon: Icons.access_time,
                          title: 'No shifts found',
                          description: 'No shifts match your filter.',
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () => shiftsVM.refresh(),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: shifts.length,
                    itemBuilder: (context, index) => ShiftCard(
                      shift: shifts[index],
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                ShiftDetailPage(shiftId: shifts[index].id),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _filterChip(
    String label,
    String? value,
    String? current,
    ValueChanged<String?> onSelected,
    ColorScheme colorScheme,
  ) {
    final isActive = current == value;
    return ChoiceChip(
      label: Text(label),
      selected: isActive,
      onSelected: (_) => onSelected(value),
      selectedColor: colorScheme.primary,
      labelStyle: TextStyle(
        fontSize: 12,
        color: isActive ? colorScheme.onPrimary : colorScheme.onSurfaceVariant,
      ),
      backgroundColor: colorScheme.surfaceContainerHighest,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: BorderSide.none,
      showCheckmark: false,
    );
  }
}
