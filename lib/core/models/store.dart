import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
abstract class Store with _$Store {
  const factory Store({
    required String id,
    @JsonKey(name: 'owner_id') required String ownerId,
    required String name,
    String? location,
    String? phone,
    String? email,
    @Default('Asia/Kolkata') String timezone,
    @Default('INR') String currency,
    @Default(false) @JsonKey(name: 'tax_inclusive') bool taxInclusive,
    @JsonKey(name: 'chain_id') String? chainId,
    String? state,
    String? city,
    @JsonKey(name: 'outlet_type') String? outletType,
    @Default(0) @JsonKey(name: 'table_count') int tableCount,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
