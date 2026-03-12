// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shift_payment_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShiftPaymentSummary _$ShiftPaymentSummaryFromJson(Map<String, dynamic> json) =>
    _ShiftPaymentSummary(
      id: json['id'] as String,
      shiftId: json['shift_id'] as String,
      paymentMethod: json['payment_method'] as String,
      expectedAmount: (json['expected_amount'] as num?)?.toDouble() ?? 0,
      actualAmount: (json['actual_amount'] as num?)?.toDouble() ?? 0,
      variance: (json['variance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ShiftPaymentSummaryToJson(
  _ShiftPaymentSummary instance,
) => <String, dynamic>{
  'id': instance.id,
  'shift_id': instance.shiftId,
  'payment_method': instance.paymentMethod,
  'expected_amount': instance.expectedAmount,
  'actual_amount': instance.actualAmount,
  'variance': instance.variance,
};
