// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Store _$StoreFromJson(Map<String, dynamic> json) => _Store(
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
  name: json['name'] as String,
  location: json['location'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  timezone: json['timezone'] as String? ?? 'Asia/Kolkata',
  currency: json['currency'] as String? ?? 'INR',
  taxInclusive: json['tax_inclusive'] as bool? ?? false,
  chainId: json['chain_id'] as String?,
  state: json['state'] as String?,
  city: json['city'] as String?,
  outletType: json['outlet_type'] as String?,
  tableCount: (json['table_count'] as num?)?.toInt() ?? 0,
  isActive: json['is_active'] as bool? ?? true,
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$StoreToJson(_Store instance) => <String, dynamic>{
  'id': instance.id,
  'owner_id': instance.ownerId,
  'name': instance.name,
  'location': instance.location,
  'phone': instance.phone,
  'email': instance.email,
  'timezone': instance.timezone,
  'currency': instance.currency,
  'tax_inclusive': instance.taxInclusive,
  'chain_id': instance.chainId,
  'state': instance.state,
  'city': instance.city,
  'outlet_type': instance.outletType,
  'table_count': instance.tableCount,
  'is_active': instance.isActive,
  'created_at': instance.createdAt?.toIso8601String(),
};
