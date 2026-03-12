import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_zone.freezed.dart';
part 'delivery_zone.g.dart';

@freezed
abstract class DeliveryZone with _$DeliveryZone {
  const factory DeliveryZone({
    required String id,
    required String name,
    @Default('') String state,
    @Default('') String city,
    @Default('') @JsonKey(name: 'sub_order_type') String subOrderType,
    @Default(0) @JsonKey(name: 'delivery_fee') double deliveryFee,
    @Default(0) @JsonKey(name: 'min_order_amount') double minOrderAmount,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([]) @JsonKey(name: 'store_ids') List<String> storeIds,
  }) = _DeliveryZone;

  factory DeliveryZone.fromJson(Map<String, dynamic> json) =>
      _$DeliveryZoneFromJson(json);
}
