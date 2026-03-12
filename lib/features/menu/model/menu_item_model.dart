import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item_model.freezed.dart';
part 'menu_item_model.g.dart';

@freezed
abstract class MenuItemModel with _$MenuItemModel {
  const factory MenuItemModel({
    required String id,
    required String name,
    @Default('') @JsonKey(name: 'category_id') String categoryId,
    @Default(0) double price,
    @Default(0) @JsonKey(name: 'tax_percent') double taxPercent,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    String? description,
    @JsonKey(name: 'store_id') String? storeId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemModelFromJson(json);
}
