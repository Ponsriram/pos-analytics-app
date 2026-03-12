// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  id: json['id'] as String,
  storeId: json['store_id'] as String,
  userId: json['user_id'] as String?,
  name: json['name'] as String,
  employeeCode: json['employee_code'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  role: json['role'] as String? ?? 'staff',
  isActive: json['is_active'] as bool? ?? true,
  permissions: json['permissions'] as Map<String, dynamic>? ?? const {},
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'user_id': instance.userId,
  'name': instance.name,
  'employee_code': instance.employeeCode,
  'phone': instance.phone,
  'email': instance.email,
  'role': instance.role,
  'is_active': instance.isActive,
  'permissions': instance.permissions,
  'created_at': instance.createdAt?.toIso8601String(),
};
