// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeliveryZone _$DeliveryZoneFromJson(Map<String, dynamic> json) =>
    _DeliveryZone(
      id: json['id'] as String,
      name: json['name'] as String,
      state: json['state'] as String? ?? '',
      city: json['city'] as String? ?? '',
      subOrderType: json['sub_order_type'] as String? ?? '',
      deliveryFee: (json['delivery_fee'] as num?)?.toDouble() ?? 0,
      minOrderAmount: (json['min_order_amount'] as num?)?.toDouble() ?? 0,
      isActive: json['is_active'] as bool? ?? true,
      storeIds:
          (json['store_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$DeliveryZoneToJson(_DeliveryZone instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'city': instance.city,
      'sub_order_type': instance.subOrderType,
      'delivery_fee': instance.deliveryFee,
      'min_order_amount': instance.minOrderAmount,
      'is_active': instance.isActive,
      'store_ids': instance.storeIds,
    };
