// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      isEmailVerified: json['isEmailVerified'] as bool? ?? false,
      mobileNumbers:
          (json['mobileNumbers'] as List<dynamic>?)
              ?.map((e) => MobileNumber.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      is2FAEnabled: json['is_2fa_enabled'] as bool? ?? false,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      createdBy: json['createdBy'] as String?,
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'isEmailVerified': instance.isEmailVerified,
      'mobileNumbers': instance.mobileNumbers,
      'is_2fa_enabled': instance.is2FAEnabled,
      'createdAt': instance.createdAt?.toIso8601String(),
      'createdBy': instance.createdBy,
    };

_MobileNumber _$MobileNumberFromJson(Map<String, dynamic> json) =>
    _MobileNumber(
      id: json['id'] as String? ?? '',
      countryCode: json['countryCode'] as String? ?? '+91',
      number: json['number'] as String,
      isVerified: json['isVerified'] as bool? ?? false,
    );

Map<String, dynamic> _$MobileNumberToJson(_MobileNumber instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'number': instance.number,
      'isVerified': instance.isVerified,
    };
