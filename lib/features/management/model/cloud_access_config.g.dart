// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cloud_access_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CloudAccessConfig _$CloudAccessConfigFromJson(Map<String, dynamic> json) =>
    _CloudAccessConfig(
      autoSync: json['auto_sync'] as bool? ?? true,
      syncFrequency: json['sync_frequency'] as String? ?? 'Every 15 minutes',
      syncOrders: json['sync_orders'] as bool? ?? true,
      syncInventory: json['sync_inventory'] as bool? ?? true,
      syncReports: json['sync_reports'] as bool? ?? true,
      syncEmployees: json['sync_employees'] as bool? ?? false,
      storageUsedMb: (json['storage_used_mb'] as num?)?.toDouble() ?? 0,
      storageTotalMb: (json['storage_total_mb'] as num?)?.toDouble() ?? 5120,
      lastSyncedAt: json['last_synced_at'] as String?,
    );

Map<String, dynamic> _$CloudAccessConfigToJson(_CloudAccessConfig instance) =>
    <String, dynamic>{
      'auto_sync': instance.autoSync,
      'sync_frequency': instance.syncFrequency,
      'sync_orders': instance.syncOrders,
      'sync_inventory': instance.syncInventory,
      'sync_reports': instance.syncReports,
      'sync_employees': instance.syncEmployees,
      'storage_used_mb': instance.storageUsedMb,
      'storage_total_mb': instance.storageTotalMb,
      'last_synced_at': instance.lastSyncedAt,
    };
