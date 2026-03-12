import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_close_report.freezed.dart';
part 'day_close_report.g.dart';

@freezed
abstract class DayCloseReport with _$DayCloseReport {
  const factory DayCloseReport({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'business_date') required String businessDate,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    @Default(0) @JsonKey(name: 'gross_sales') double grossSales,
    @Default(0) @JsonKey(name: 'total_tax') double totalTax,
    @Default(0) @JsonKey(name: 'total_discounts') double totalDiscounts,
    @Default(0) @JsonKey(name: 'total_service_charge') double totalServiceCharge,
    @Default(0) @JsonKey(name: 'total_tips') double totalTips,
    @Default(0) @JsonKey(name: 'net_sales') double netSales,
    @Default(0) @JsonKey(name: 'total_expenses') double totalExpenses,
    @Default(0) @JsonKey(name: 'net_cash') double netCash,
    @Default({}) @JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,
    @Default({}) @JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown,
    @Default(0) @JsonKey(name: 'cancelled_orders') int cancelledOrders,
    @JsonKey(name: 'closed_by') String? closedBy,
    @JsonKey(name: 'closed_at') DateTime? closedAt,
  }) = _DayCloseReport;

  factory DayCloseReport.fromJson(Map<String, dynamic> json) =>
      _$DayCloseReportFromJson(json);
}
