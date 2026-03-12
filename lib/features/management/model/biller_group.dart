import 'package:freezed_annotation/freezed_annotation.dart';

part 'biller_group.freezed.dart';
part 'biller_group.g.dart';

@freezed
abstract class BillerGroup with _$BillerGroup {
  const factory BillerGroup({
    required String id,
    required String name,
    @Default('biller') @JsonKey(name: 'group_type') String groupType,
    @Default([]) List<String> permissions,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([]) @JsonKey(name: 'store_ids') List<String> storeIds,
    @Default([]) @JsonKey(name: 'member_user_ids') List<String> memberUserIds,
  }) = _BillerGroup;

  factory BillerGroup.fromJson(Map<String, dynamic> json) =>
      _$BillerGroupFromJson(json);
}
