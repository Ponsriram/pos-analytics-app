import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_access_config.freezed.dart';
part 'cloud_access_config.g.dart';

@freezed
abstract class CloudAccessConfig with _$CloudAccessConfig {
  const factory CloudAccessConfig({
    @Default(true) @JsonKey(name: 'auto_sync') bool autoSync,
    @Default('Every 15 minutes')
    @JsonKey(name: 'sync_frequency')
    String syncFrequency,
    @Default(true) @JsonKey(name: 'sync_orders') bool syncOrders,
    @Default(true) @JsonKey(name: 'sync_inventory') bool syncInventory,
    @Default(true) @JsonKey(name: 'sync_reports') bool syncReports,
    @Default(false) @JsonKey(name: 'sync_employees') bool syncEmployees,
    @Default(0) @JsonKey(name: 'storage_used_mb') double storageUsedMb,
    @Default(5120) @JsonKey(name: 'storage_total_mb') double storageTotalMb,
    @JsonKey(name: 'last_synced_at') String? lastSyncedAt,
  }) = _CloudAccessConfig;

  factory CloudAccessConfig.fromJson(Map<String, dynamic> json) =>
      _$CloudAccessConfigFromJson(json);
}
