import 'package:freezed_annotation/freezed_annotation.dart';
import 'shift_payment_summary.dart';

part 'shift.freezed.dart';
part 'shift.g.dart';

@freezed
abstract class Shift with _$Shift {
  const factory Shift({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'terminal_id') String? terminalId,
    @JsonKey(name: 'employee_id') String? employeeId,
    @Default('open') String status,
    @Default(0) @JsonKey(name: 'opening_cash') double openingCash,
    @Default(0) @JsonKey(name: 'closing_cash') double closingCash,
    @Default(0) @JsonKey(name: 'expected_cash') double expectedCash,
    @Default(0) @JsonKey(name: 'cash_variance') double cashVariance,
    @Default(0) @JsonKey(name: 'total_sales') double totalSales,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    String? notes,
    @JsonKey(name: 'started_at') DateTime? startedAt,
    @JsonKey(name: 'ended_at') DateTime? endedAt,
    @Default([]) @JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> paymentSummaries,
  }) = _Shift;

  factory Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);
}
