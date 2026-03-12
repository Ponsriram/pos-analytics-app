import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock_level.freezed.dart';
part 'stock_level.g.dart';

@freezed
abstract class StockLevel with _$StockLevel {
  const factory StockLevel({
    required String id,
    @JsonKey(name: 'item_id') required String itemId,
    @JsonKey(name: 'location_id') String? locationId,
    @Default(0) double quantity,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _StockLevel;

  factory StockLevel.fromJson(Map<String, dynamic> json) =>
      _$StockLevelFromJson(json);
}
