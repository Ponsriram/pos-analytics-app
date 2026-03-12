// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'outlet_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OutletStats _$OutletStatsFromJson(Map<String, dynamic> json) => _OutletStats(
  storeId: json['store_id'] as String,
  storeName: json['store_name'] as String,
  totalRevenue: (json['total_revenue'] as num?)?.toDouble() ?? 0,
  totalOrders: (json['total_orders'] as num?)?.toInt() ?? 0,
  taxCollected: (json['tax_collected'] as num?)?.toDouble() ?? 0,
  grossSales: (json['gross_sales'] as num?)?.toDouble() ?? 0,
  netSales: (json['net_sales'] as num?)?.toDouble() ?? 0,
  totalDiscounts: (json['total_discounts'] as num?)?.toDouble() ?? 0,
  paymentBreakdown:
      (json['payment_breakdown'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ) ??
      const {},
);

Map<String, dynamic> _$OutletStatsToJson(_OutletStats instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'total_revenue': instance.totalRevenue,
      'total_orders': instance.totalOrders,
      'tax_collected': instance.taxCollected,
      'gross_sales': instance.grossSales,
      'net_sales': instance.netSales,
      'total_discounts': instance.totalDiscounts,
      'payment_breakdown': instance.paymentBreakdown,
    };

_OutletAnalyticsResponse _$OutletAnalyticsResponseFromJson(
  Map<String, dynamic> json,
) => _OutletAnalyticsResponse(
  outlets: (json['outlets'] as List<dynamic>)
      .map((e) => OutletStats.fromJson(e as Map<String, dynamic>))
      .toList(),
  totals: DashboardStats.fromJson(json['totals'] as Map<String, dynamic>),
);

Map<String, dynamic> _$OutletAnalyticsResponseToJson(
  _OutletAnalyticsResponse instance,
) => <String, dynamic>{'outlets': instance.outlets, 'totals': instance.totals};
