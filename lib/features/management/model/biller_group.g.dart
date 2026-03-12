// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biller_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BillerGroup _$BillerGroupFromJson(Map<String, dynamic> json) => _BillerGroup(
  id: json['id'] as String,
  name: json['name'] as String,
  groupType: json['group_type'] as String? ?? 'biller',
  permissions:
      (json['permissions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  isActive: json['is_active'] as bool? ?? true,
  storeIds:
      (json['store_ids'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  memberUserIds:
      (json['member_user_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$BillerGroupToJson(_BillerGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'group_type': instance.groupType,
      'permissions': instance.permissions,
      'is_active': instance.isActive,
      'store_ids': instance.storeIds,
      'member_user_ids': instance.memberUserIds,
    };
