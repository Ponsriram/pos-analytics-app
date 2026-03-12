// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuItemModel _$MenuItemModelFromJson(Map<String, dynamic> json) =>
    _MenuItemModel(
      id: json['id'] as String,
      name: json['name'] as String,
      categoryId: json['category_id'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      taxPercent: (json['tax_percent'] as num?)?.toDouble() ?? 0,
      isActive: json['is_active'] as bool? ?? true,
      description: json['description'] as String?,
      storeId: json['store_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$MenuItemModelToJson(_MenuItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category_id': instance.categoryId,
      'price': instance.price,
      'tax_percent': instance.taxPercent,
      'is_active': instance.isActive,
      'description': instance.description,
      'store_id': instance.storeId,
      'created_at': instance.createdAt?.toIso8601String(),
    };
