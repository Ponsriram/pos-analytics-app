import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
abstract class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    required String id,
    required String name,
    required String email,
    @Default(false) bool isEmailVerified,
    @Default([]) List<MobileNumber> mobileNumbers,
    @Default(false) @JsonKey(name: 'is_2fa_enabled') bool is2FAEnabled,
    DateTime? createdAt,
    String? createdBy,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}

@freezed
abstract class MobileNumber with _$MobileNumber {
  const factory MobileNumber({
    @Default('') String id,
    @Default('+91') String countryCode,
    required String number,
    @Default(false) bool isVerified,
  }) = _MobileNumber;

  factory MobileNumber.fromJson(Map<String, dynamic> json) =>
      _$MobileNumberFromJson(json);
}

extension MobileNumberX on MobileNumber {
  String get fullNumber => '$countryCode $number';
}

/// User activity log entry
class UserLogEntry {
  final String id;
  final String changes;
  final String doneByName;
  final String doneByEmail;
  final String browser;
  final String ipAddress;
  final DateTime timestamp;

  const UserLogEntry({
    required this.id,
    required this.changes,
    required this.doneByName,
    required this.doneByEmail,
    required this.browser,
    required this.ipAddress,
    required this.timestamp,
  });
}
