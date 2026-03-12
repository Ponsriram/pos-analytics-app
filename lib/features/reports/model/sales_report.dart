import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_report.freezed.dart';
part 'sales_report.g.dart';

@freezed
abstract class SalesReport with _$SalesReport {
  const factory SalesReport({
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'store_name') String? storeName,
    String? date,
    @Default(0) @JsonKey(name: 'total_orders') int totalOrders,
    @Default(0) @JsonKey(name: 'gross_sales') double grossSales,
    @Default(0) @JsonKey(name: 'net_sales') double netSales,
    @Default(0) @JsonKey(name: 'tax_collected') double taxCollected,
    @Default(0) @JsonKey(name: 'total_discounts') double totalDiscounts,
    @Default({}) @JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,
    @Default({}) @JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown,
  }) = _SalesReport;

  factory SalesReport.fromJson(Map<String, dynamic> json) =>
      _$SalesReportFromJson(json);
}
