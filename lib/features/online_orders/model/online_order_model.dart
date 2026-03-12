import 'package:freezed_annotation/freezed_annotation.dart';

part 'online_order_model.freezed.dart';
part 'online_order_model.g.dart';

enum OrderStatus {
  all,
  waitingForAcceptance,
  accepted,
  preparingFoodKotCreated,
  foodIsReady,
  delivered,
}

@freezed
abstract class OnlineOrderModel with _$OnlineOrderModel {
  const factory OnlineOrderModel({
    @Default('') String id,
    @Default('') @JsonKey(name: 'order_type') String orderType,
    @Default('') String channel,
    @Default('') String status,
    @Default('') @JsonKey(name: 'payment_status') String paymentStatus,
    @Default(0) @JsonKey(name: 'net_amount') double netAmount,
    @Default(0) @JsonKey(name: 'gross_amount') double grossAmount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'table_number') String? tableNumber,
  }) = _OnlineOrderModel;

  factory OnlineOrderModel.fromJson(Map<String, dynamic> json) =>
      _$OnlineOrderModelFromJson(json);
}
