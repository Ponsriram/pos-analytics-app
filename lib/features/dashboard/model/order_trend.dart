import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_trend.freezed.dart';
part 'order_trend.g.dart';

@freezed
abstract class OrderTrend with _$OrderTrend {
  const factory OrderTrend({
    required String date,
    @Default(0) @JsonKey(name: 'order_count') int orderCount,
  }) = _OrderTrend;

  factory OrderTrend.fromJson(Map<String, dynamic> json) =>
      _$OrderTrendFromJson(json);
}
