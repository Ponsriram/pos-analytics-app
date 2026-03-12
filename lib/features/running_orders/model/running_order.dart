import 'package:freezed_annotation/freezed_annotation.dart';

part 'running_order.freezed.dart';
part 'running_order.g.dart';

@freezed
abstract class RunningOrderCategory with _$RunningOrderCategory {
  const factory RunningOrderCategory({
    required String name,
    @Default(0) int orderCount,
    @Default(0) double totalAmount,
    @Default('active') String status,
  }) = _RunningOrderCategory;

  factory RunningOrderCategory.fromJson(Map<String, dynamic> json) =>
      _$RunningOrderCategoryFromJson(json);
}

@freezed
abstract class RunningOrdersSummary with _$RunningOrdersSummary {
  const factory RunningOrdersSummary({
    @Default([]) List<RunningOrderCategory> categories,
    @Default(0) int totalOrderCount,
    @Default(0) int totalTableCount,
    @Default(0) double totalEstimatedAmount,
  }) = _RunningOrdersSummary;

  factory RunningOrdersSummary.fromJson(Map<String, dynamic> json) =>
      _$RunningOrdersSummaryFromJson(json);
}
