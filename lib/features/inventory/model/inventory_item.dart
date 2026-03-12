import 'package:freezed_annotation/freezed_annotation.dart';

part 'inventory_item.freezed.dart';
part 'inventory_item.g.dart';

@freezed
abstract class InventoryItem with _$InventoryItem {
  const factory InventoryItem({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    required String name,
    String? sku,
    String? category,
    @JsonKey(name: 'unit_id') String? unitId,
    @Default(0) @JsonKey(name: 'min_stock') double minStock,
    @Default(0) @JsonKey(name: 'max_stock') double maxStock,
    @Default(0) @JsonKey(name: 'reorder_level') double reorderLevel,
    @Default(0) @JsonKey(name: 'reorder_quantity') double reorderQuantity,
    @Default(0) @JsonKey(name: 'last_purchase_price') double lastPurchasePrice,
    @Default(0) @JsonKey(name: 'average_cost') double averageCost,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _InventoryItem;

  factory InventoryItem.fromJson(Map<String, dynamic> json) =>
      _$InventoryItemFromJson(json);
}
