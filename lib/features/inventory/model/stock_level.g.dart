// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StockLevel _$StockLevelFromJson(Map<String, dynamic> json) => _StockLevel(
  id: json['id'] as String,
  itemId: json['item_id'] as String,
  locationId: json['location_id'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
  updatedAt: json['updated_at'] == null
      ? null
      : DateTime.parse(json['updated_at'] as String),
);

Map<String, dynamic> _$StockLevelToJson(_StockLevel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'location_id': instance.locationId,
      'quantity': instance.quantity,
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
