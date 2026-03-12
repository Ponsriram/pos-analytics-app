// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalesReport _$SalesReportFromJson(Map<String, dynamic> json) => _SalesReport(
  storeId: json['store_id'] as String,
  storeName: json['store_name'] as String?,
  date: json['date'] as String?,
  totalOrders: (json['total_orders'] as num?)?.toInt() ?? 0,
  grossSales: (json['gross_sales'] as num?)?.toDouble() ?? 0,
  netSales: (json['net_sales'] as num?)?.toDouble() ?? 0,
  taxCollected: (json['tax_collected'] as num?)?.toDouble() ?? 0,
  totalDiscounts: (json['total_discounts'] as num?)?.toDouble() ?? 0,
  paymentBreakdown:
      (json['payment_breakdown'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toDouble()),
      ) ??
      const {},
  orderTypeBreakdown:
      json['order_type_breakdown'] as Map<String, dynamic>? ?? const {},
);

Map<String, dynamic> _$SalesReportToJson(_SalesReport instance) =>
    <String, dynamic>{
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'date': instance.date,
      'total_orders': instance.totalOrders,
      'gross_sales': instance.grossSales,
      'net_sales': instance.netSales,
      'tax_collected': instance.taxCollected,
      'total_discounts': instance.totalDiscounts,
      'payment_breakdown': instance.paymentBreakdown,
      'order_type_breakdown': instance.orderTypeBreakdown,
    };
