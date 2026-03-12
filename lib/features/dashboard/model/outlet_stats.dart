import 'package:freezed_annotation/freezed_annotation.dart';
import 'dashboard_stats.dart';

part 'outlet_stats.freezed.dart';
part 'outlet_stats.g.dart';

@freezed
abstract class OutletStats with _$OutletStats {
  const factory OutletStats({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'store_name') required String storeName,
    @Default(0) @JsonKey(name: 'total_revenue') double totalRevenue,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    @Default(0) @JsonKey(name: 'tax_collected') double taxCollected,
    @Default(0) @JsonKey(name: 'gross_sales') double grossSales,
    @Default(0) @JsonKey(name: 'net_sales') double netSales,
    @Default(0) @JsonKey(name: 'total_discounts') double totalDiscounts,
    @Default({})
    @JsonKey(name: 'payment_breakdown')
    Map<String, double> paymentBreakdown,
  }) = _OutletStats;

  factory OutletStats.fromJson(Map<String, dynamic> json) =>
      _$OutletStatsFromJson(json);
}

@freezed
abstract class OutletAnalyticsResponse with _$OutletAnalyticsResponse {
  const factory OutletAnalyticsResponse({
    required List<OutletStats> outlets,
    required DashboardStats totals,
  }) = _OutletAnalyticsResponse;

  factory OutletAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$OutletAnalyticsResponseFromJson(json);
}
