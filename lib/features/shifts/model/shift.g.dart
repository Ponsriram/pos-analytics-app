// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Shift _$ShiftFromJson(Map<String, dynamic> json) => _Shift(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  terminalId: json['terminal_id'] as String?,
  employeeId: json['employee_id'] as String?,
  status: json['status'] as String? ?? 'open',
  openingCash: (json['opening_cash'] as num?)?.toDouble() ?? 0,
  closingCash: (json['closing_cash'] as num?)?.toDouble() ?? 0,
  expectedCash: (json['expected_cash'] as num?)?.toDouble() ?? 0,
  cashVariance: (json['cash_variance'] as num?)?.toDouble() ?? 0,
  totalSales: (json['total_sales'] as num?)?.toDouble() ?? 0,
  totalOrders: (json['total_orders'] as num?)?.toInt() ?? 0,
  notes: json['notes'] as String?,
  startedAt: json['started_at'] == null
      ? null
      : DateTime.parse(json['started_at'] as String),
  endedAt: json['ended_at'] == null
      ? null
      : DateTime.parse(json['ended_at'] as String),
  paymentSummaries:
      (json['payment_summaries'] as List<dynamic>?)
          ?.map((e) => ShiftPaymentSummary.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$ShiftToJson(_Shift instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'terminal_id': instance.terminalId,
  'employee_id': instance.employeeId,
  'status': instance.status,
  'opening_cash': instance.openingCash,
  'closing_cash': instance.closingCash,
  'expected_cash': instance.expectedCash,
  'cash_variance': instance.cashVariance,
  'total_sales': instance.totalSales,
  'total_orders': instance.totalOrders,
  'notes': instance.notes,
  'started_at': instance.startedAt?.toIso8601String(),
  'ended_at': instance.endedAt?.toIso8601String(),
  'payment_summaries': instance.paymentSummaries,
};
