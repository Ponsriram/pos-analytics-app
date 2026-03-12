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
    @Default({})
    @JsonKey(name: 'payment_breakdown')
    Map<String, double> paymentBreakdown,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsFromJson(json);
}
