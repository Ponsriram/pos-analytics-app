// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InventoryItem _$InventoryItemFromJson(Map<String, dynamic> json) =>
    _InventoryItem(
      id: json['id'] as String,
      storeId: json['store_id'] as String,
      name: json['name'] as String,
      sku: json['sku'] as String?,
      category: json['category'] as String?,
      unitId: json['unit_id'] as String?,
      minStock: (json['min_stock'] as num?)?.toDouble() ?? 0,
      maxStock: (json['max_stock'] as num?)?.toDouble() ?? 0,
      reorderLevel: (json['reorder_level'] as num?)?.toDouble() ?? 0,
      reorderQuantity: (json['reorder_quantity'] as num?)?.toDouble() ?? 0,
      lastPurchasePrice: (json['last_purchase_price'] as num?)?.toDouble() ?? 0,
      averageCost: (json['average_cost'] as num?)?.toDouble() ?? 0,
      isActive: json['is_active'] as bool? ?? true,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$InventoryItemToJson(_InventoryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'name': instance.name,
      'sku': instance.sku,
      'category': instance.category,
      'unit_id': instance.unitId,
      'min_stock': instance.minStock,
      'max_stock': instance.maxStock,
      'reorder_level': instance.reorderLevel,
      'reorder_quantity': instance.reorderQuantity,
      'last_purchase_price': instance.lastPurchasePrice,
      'average_cost': instance.averageCost,
      'is_active': instance.isActive,
      'created_at': instance.createdAt?.toIso8601String(),
    };
