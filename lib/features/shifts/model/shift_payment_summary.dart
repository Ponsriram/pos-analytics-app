import 'package:freezed_annotation/freezed_annotation.dart';

part 'shift_payment_summary.freezed.dart';
part 'shift_payment_summary.g.dart';

@freezed
abstract class ShiftPaymentSummary with _$ShiftPaymentSummary {
  const factory ShiftPaymentSummary({
    required String id,
    @JsonKey(name: 'shift_id') required String shiftId,
    @JsonKey(name: 'payment_method') required String paymentMethod,
    @Default(0) @JsonKey(name: 'expected_amount') double expectedAmount,
    @Default(0) @JsonKey(name: 'actual_amount') double actualAmount,
    @Default(0) double variance,
  }) = _ShiftPaymentSummary;

  factory ShiftPaymentSummary.fromJson(Map<String, dynamic> json) =>
      _$ShiftPaymentSummaryFromJson(json);
}
