// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_close_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DayCloseReport _$DayCloseReportFromJson(Map<String, dynamic> json) =>
    _DayCloseReport(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      businessDate: json['business_date'] as String,
      totalOrders: (json['total_orders'] as num?)?.toInt() ?? 0,
      grossSales: (json['gross_sales'] as num?)?.toDouble() ?? 0,
      totalTax: (json['total_tax'] as num?)?.toDouble() ?? 0,
      totalDiscounts: (json['total_discounts'] as num?)?.toDouble() ?? 0,
      totalServiceCharge:
          (json['total_service_charge'] as num?)?.toDouble() ?? 0,
      totalTips: (json['total_tips'] as num?)?.toDouble() ?? 0,
      netSales: (json['net_sales'] as num?)?.toDouble() ?? 0,
      totalExpenses: (json['total_expenses'] as num?)?.toDouble() ?? 0,
      netCash: (json['net_cash'] as num?)?.toDouble() ?? 0,
      paymentBreakdown:
          (json['payment_breakdown'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, (e as num).toDouble()),
          ) ??
          const {},
      orderTypeBreakdown:
          json['order_type_breakdown'] as Map<String, dynamic>? ?? const {},
      cancelledOrders: (json['cancelled_orders'] as num?)?.toInt() ?? 0,
      closedBy: json['closed_by'] as String?,
      closedAt: json['closed_at'] == null
          ? null
          : DateTime.parse(json['closed_at'] as String),
    );

Map<String, dynamic> _$DayCloseReportToJson(_DayCloseReport instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'business_date': instance.businessDate,
      'total_orders': instance.totalOrders,
      'gross_sales': instance.grossSales,
      'total_tax': instance.totalTax,
      'total_discounts': instance.totalDiscounts,
      'total_service_charge': instance.totalServiceCharge,
      'total_tips': instance.totalTips,
      'net_sales': instance.netSales,
      'total_expenses': instance.totalExpenses,
      'net_cash': instance.netCash,
      'payment_breakdown': instance.paymentBreakdown,
      'order_type_breakdown': instance.orderTypeBreakdown,
      'cancelled_orders': instance.cancelledOrders,
      'closed_by': instance.closedBy,
      'closed_at': instance.closedAt?.toIso8601String(),
    };
