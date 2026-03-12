import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_group.freezed.dart';
part 'admin_group.g.dart';

@freezed
abstract class AdminGroup with _$AdminGroup {
  const factory AdminGroup({
    required String id,
    required String name,
    @Default('admin') @JsonKey(name: 'group_type') String groupType,
    @Default([]) List<String> permissions,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default([]) @JsonKey(name: 'store_ids') List<String> storeIds,
    @Default([]) @JsonKey(name: 'member_user_ids') List<String> memberUserIds,
  }) = _AdminGroup;

  factory AdminGroup.fromJson(Map<String, dynamic> json) =>
      _$AdminGroupFromJson(json);
}
