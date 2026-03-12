import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
abstract class Employee with _$Employee {
  const factory Employee({
    required String id,
    @JsonKey(name: 'store_id') required String storeId,
    @JsonKey(name: 'user_id') String? userId,
    required String name,
    @JsonKey(name: 'employee_code') String? employeeCode,
    String? phone,
    String? email,
    @Default('staff') String role,
    @Default(true) @JsonKey(name: 'is_active') bool isActive,
    @Default({}) Map<String, dynamic> permissions,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _Employee;

  factory Employee.fromJson(Map<String, dynamic> json) =>
      _$EmployeeFromJson(json);
}
