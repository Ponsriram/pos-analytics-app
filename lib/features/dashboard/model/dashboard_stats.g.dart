// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) =>
    _DashboardStats(
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

Map<String, dynamic> _$DashboardStatsToJson(_DashboardStats instance) =>
    <String, dynamic>{
      'total_revenue': instance.totalRevenue,
      'total_orders': instance.totalOrders,
      'tax_collected': instance.taxCollected,
      'gross_sales': instance.grossSales,
      'net_sales': instance.netSales,
      'total_discounts': instance.totalDiscounts,
      'payment_breakdown': instance.paymentBreakdown,
    };
