// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_access_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CloudAccessConfig {

@JsonKey(name: 'auto_sync') bool get autoSync;@JsonKey(name: 'sync_frequency') String get syncFrequency;@JsonKey(name: 'sync_orders') bool get syncOrders;@JsonKey(name: 'sync_inventory') bool get syncInventory;@JsonKey(name: 'sync_reports') bool get syncReports;@JsonKey(name: 'sync_employees') bool get syncEmployees;@JsonKey(name: 'storage_used_mb') double get storageUsedMb;@JsonKey(name: 'storage_total_mb') double get storageTotalMb;@JsonKey(name: 'last_synced_at') String? get lastSyncedAt;
/// Create a copy of CloudAccessConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CloudAccessConfigCopyWith<CloudAccessConfig> get copyWith => _$CloudAccessConfigCopyWithImpl<CloudAccessConfig>(this as CloudAccessConfig, _$identity);

  /// Serializes this CloudAccessConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CloudAccessConfig&&(identical(other.autoSync, autoSync) || other.autoSync == autoSync)&&(identical(other.syncFrequency, syncFrequency) || other.syncFrequency == syncFrequency)&&(identical(other.syncOrders, syncOrders) || other.syncOrders == syncOrders)&&(identical(other.syncInventory, syncInventory) || other.syncInventory == syncInventory)&&(identical(other.syncReports, syncReports) || other.syncReports == syncReports)&&(identical(other.syncEmployees, syncEmployees) || other.syncEmployees == syncEmployees)&&(identical(other.storageUsedMb, storageUsedMb) || other.storageUsedMb == storageUsedMb)&&(identical(other.storageTotalMb, storageTotalMb) || other.storageTotalMb == storageTotalMb)&&(identical(other.lastSyncedAt, lastSyncedAt) || other.lastSyncedAt == lastSyncedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoSync,syncFrequency,syncOrders,syncInventory,syncReports,syncEmployees,storageUsedMb,storageTotalMb,lastSyncedAt);

@override
String toString() {
  return 'CloudAccessConfig(autoSync: $autoSync, syncFrequency: $syncFrequency, syncOrders: $syncOrders, syncInventory: $syncInventory, syncReports: $syncReports, syncEmployees: $syncEmployees, storageUsedMb: $storageUsedMb, storageTotalMb: $storageTotalMb, lastSyncedAt: $lastSyncedAt)';
}


}

/// @nodoc
abstract mixin class $CloudAccessConfigCopyWith<$Res>  {
  factory $CloudAccessConfigCopyWith(CloudAccessConfig value, $Res Function(CloudAccessConfig) _then) = _$CloudAccessConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'auto_sync') bool autoSync,@JsonKey(name: 'sync_frequency') String syncFrequency,@JsonKey(name: 'sync_orders') bool syncOrders,@JsonKey(name: 'sync_inventory') bool syncInventory,@JsonKey(name: 'sync_reports') bool syncReports,@JsonKey(name: 'sync_employees') bool syncEmployees,@JsonKey(name: 'storage_used_mb') double storageUsedMb,@JsonKey(name: 'storage_total_mb') double storageTotalMb,@JsonKey(name: 'last_synced_at') String? lastSyncedAt
});




}
/// @nodoc
class _$CloudAccessConfigCopyWithImpl<$Res>
    implements $CloudAccessConfigCopyWith<$Res> {
  _$CloudAccessConfigCopyWithImpl(this._self, this._then);

  final CloudAccessConfig _self;
  final $Res Function(CloudAccessConfig) _then;

/// Create a copy of CloudAccessConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? autoSync = null,Object? syncFrequency = null,Object? syncOrders = null,Object? syncInventory = null,Object? syncReports = null,Object? syncEmployees = null,Object? storageUsedMb = null,Object? storageTotalMb = null,Object? lastSyncedAt = freezed,}) {
  return _then(_self.copyWith(
autoSync: null == autoSync ? _self.autoSync : autoSync // ignore: cast_nullable_to_non_nullable
as bool,syncFrequency: null == syncFrequency ? _self.syncFrequency : syncFrequency // ignore: cast_nullable_to_non_nullable
as String,syncOrders: null == syncOrders ? _self.syncOrders : syncOrders // ignore: cast_nullable_to_non_nullable
as bool,syncInventory: null == syncInventory ? _self.syncInventory : syncInventory // ignore: cast_nullable_to_non_nullable
as bool,syncReports: null == syncReports ? _self.syncReports : syncReports // ignore: cast_nullable_to_non_nullable
as bool,syncEmployees: null == syncEmployees ? _self.syncEmployees : syncEmployees // ignore: cast_nullable_to_non_nullable
as bool,storageUsedMb: null == storageUsedMb ? _self.storageUsedMb : storageUsedMb // ignore: cast_nullable_to_non_nullable
as double,storageTotalMb: null == storageTotalMb ? _self.storageTotalMb : storageTotalMb // ignore: cast_nullable_to_non_nullable
as double,lastSyncedAt: freezed == lastSyncedAt ? _self.lastSyncedAt : lastSyncedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CloudAccessConfig].
extension CloudAccessConfigPatterns on CloudAccessConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CloudAccessConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CloudAccessConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CloudAccessConfig value)  $default,){
final _that = this;
switch (_that) {
case _CloudAccessConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CloudAccessConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CloudAccessConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'auto_sync')  bool autoSync, @JsonKey(name: 'sync_frequency')  String syncFrequency, @JsonKey(name: 'sync_orders')  bool syncOrders, @JsonKey(name: 'sync_inventory')  bool syncInventory, @JsonKey(name: 'sync_reports')  bool syncReports, @JsonKey(name: 'sync_employees')  bool syncEmployees, @JsonKey(name: 'storage_used_mb')  double storageUsedMb, @JsonKey(name: 'storage_total_mb')  double storageTotalMb, @JsonKey(name: 'last_synced_at')  String? lastSyncedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CloudAccessConfig() when $default != null:
return $default(_that.autoSync,_that.syncFrequency,_that.syncOrders,_that.syncInventory,_that.syncReports,_that.syncEmployees,_that.storageUsedMb,_that.storageTotalMb,_that.lastSyncedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'auto_sync')  bool autoSync, @JsonKey(name: 'sync_frequency')  String syncFrequency, @JsonKey(name: 'sync_orders')  bool syncOrders, @JsonKey(name: 'sync_inventory')  bool syncInventory, @JsonKey(name: 'sync_reports')  bool syncReports, @JsonKey(name: 'sync_employees')  bool syncEmployees, @JsonKey(name: 'storage_used_mb')  double storageUsedMb, @JsonKey(name: 'storage_total_mb')  double storageTotalMb, @JsonKey(name: 'last_synced_at')  String? lastSyncedAt)  $default,) {final _that = this;
switch (_that) {
case _CloudAccessConfig():
return $default(_that.autoSync,_that.syncFrequency,_that.syncOrders,_that.syncInventory,_that.syncReports,_that.syncEmployees,_that.storageUsedMb,_that.storageTotalMb,_that.lastSyncedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'auto_sync')  bool autoSync, @JsonKey(name: 'sync_frequency')  String syncFrequency, @JsonKey(name: 'sync_orders')  bool syncOrders, @JsonKey(name: 'sync_inventory')  bool syncInventory, @JsonKey(name: 'sync_reports')  bool syncReports, @JsonKey(name: 'sync_employees')  bool syncEmployees, @JsonKey(name: 'storage_used_mb')  double storageUsedMb, @JsonKey(name: 'storage_total_mb')  double storageTotalMb, @JsonKey(name: 'last_synced_at')  String? lastSyncedAt)?  $default,) {final _that = this;
switch (_that) {
case _CloudAccessConfig() when $default != null:
return $default(_that.autoSync,_that.syncFrequency,_that.syncOrders,_that.syncInventory,_that.syncReports,_that.syncEmployees,_that.storageUsedMb,_that.storageTotalMb,_that.lastSyncedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CloudAccessConfig implements CloudAccessConfig {
  const _CloudAccessConfig({@JsonKey(name: 'auto_sync') this.autoSync = true, @JsonKey(name: 'sync_frequency') this.syncFrequency = 'Every 15 minutes', @JsonKey(name: 'sync_orders') this.syncOrders = true, @JsonKey(name: 'sync_inventory') this.syncInventory = true, @JsonKey(name: 'sync_reports') this.syncReports = true, @JsonKey(name: 'sync_employees') this.syncEmployees = false, @JsonKey(name: 'storage_used_mb') this.storageUsedMb = 0, @JsonKey(name: 'storage_total_mb') this.storageTotalMb = 5120, @JsonKey(name: 'last_synced_at') this.lastSyncedAt});
  factory _CloudAccessConfig.fromJson(Map<String, dynamic> json) => _$CloudAccessConfigFromJson(json);

@override@JsonKey(name: 'auto_sync') final  bool autoSync;
@override@JsonKey(name: 'sync_frequency') final  String syncFrequency;
@override@JsonKey(name: 'sync_orders') final  bool syncOrders;
@override@JsonKey(name: 'sync_inventory') final  bool syncInventory;
@override@JsonKey(name: 'sync_reports') final  bool syncReports;
@override@JsonKey(name: 'sync_employees') final  bool syncEmployees;
@override@JsonKey(name: 'storage_used_mb') final  double storageUsedMb;
@override@JsonKey(name: 'storage_total_mb') final  double storageTotalMb;
@override@JsonKey(name: 'last_synced_at') final  String? lastSyncedAt;

/// Create a copy of CloudAccessConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CloudAccessConfigCopyWith<_CloudAccessConfig> get copyWith => __$CloudAccessConfigCopyWithImpl<_CloudAccessConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CloudAccessConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CloudAccessConfig&&(identical(other.autoSync, autoSync) || other.autoSync == autoSync)&&(identical(other.syncFrequency, syncFrequency) || other.syncFrequency == syncFrequency)&&(identical(other.syncOrders, syncOrders) || other.syncOrders == syncOrders)&&(identical(other.syncInventory, syncInventory) || other.syncInventory == syncInventory)&&(identical(other.syncReports, syncReports) || other.syncReports == syncReports)&&(identical(other.syncEmployees, syncEmployees) || other.syncEmployees == syncEmployees)&&(identical(other.storageUsedMb, storageUsedMb) || other.storageUsedMb == storageUsedMb)&&(identical(other.storageTotalMb, storageTotalMb) || other.storageTotalMb == storageTotalMb)&&(identical(other.lastSyncedAt, lastSyncedAt) || other.lastSyncedAt == lastSyncedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,autoSync,syncFrequency,syncOrders,syncInventory,syncReports,syncEmployees,storageUsedMb,storageTotalMb,lastSyncedAt);

@override
String toString() {
  return 'CloudAccessConfig(autoSync: $autoSync, syncFrequency: $syncFrequency, syncOrders: $syncOrders, syncInventory: $syncInventory, syncReports: $syncReports, syncEmployees: $syncEmployees, storageUsedMb: $storageUsedMb, storageTotalMb: $storageTotalMb, lastSyncedAt: $lastSyncedAt)';
}


}

/// @nodoc
abstract mixin class _$CloudAccessConfigCopyWith<$Res> implements $CloudAccessConfigCopyWith<$Res> {
  factory _$CloudAccessConfigCopyWith(_CloudAccessConfig value, $Res Function(_CloudAccessConfig) _then) = __$CloudAccessConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'auto_sync') bool autoSync,@JsonKey(name: 'sync_frequency') String syncFrequency,@JsonKey(name: 'sync_orders') bool syncOrders,@JsonKey(name: 'sync_inventory') bool syncInventory,@JsonKey(name: 'sync_reports') bool syncReports,@JsonKey(name: 'sync_employees') bool syncEmployees,@JsonKey(name: 'storage_used_mb') double storageUsedMb,@JsonKey(name: 'storage_total_mb') double storageTotalMb,@JsonKey(name: 'last_synced_at') String? lastSyncedAt
});




}
/// @nodoc
class __$CloudAccessConfigCopyWithImpl<$Res>
    implements _$CloudAccessConfigCopyWith<$Res> {
  __$CloudAccessConfigCopyWithImpl(this._self, this._then);

  final _CloudAccessConfig _self;
  final $Res Function(_CloudAccessConfig) _then;

/// Create a copy of CloudAccessConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? autoSync = null,Object? syncFrequency = null,Object? syncOrders = null,Object? syncInventory = null,Object? syncReports = null,Object? syncEmployees = null,Object? storageUsedMb = null,Object? storageTotalMb = null,Object? lastSyncedAt = freezed,}) {
  return _then(_CloudAccessConfig(
autoSync: null == autoSync ? _self.autoSync : autoSync // ignore: cast_nullable_to_non_nullable
as bool,syncFrequency: null == syncFrequency ? _self.syncFrequency : syncFrequency // ignore: cast_nullable_to_non_nullable
as String,syncOrders: null == syncOrders ? _self.syncOrders : syncOrders // ignore: cast_nullable_to_non_nullable
as bool,syncInventory: null == syncInventory ? _self.syncInventory : syncInventory // ignore: cast_nullable_to_non_nullable
as bool,syncReports: null == syncReports ? _self.syncReports : syncReports // ignore: cast_nullable_to_non_nullable
as bool,syncEmployees: null == syncEmployees ? _self.syncEmployees : syncEmployees // ignore: cast_nullable_to_non_nullable
as bool,storageUsedMb: null == storageUsedMb ? _self.storageUsedMb : storageUsedMb // ignore: cast_nullable_to_non_nullable
as double,storageTotalMb: null == storageTotalMb ? _self.storageTotalMb : storageTotalMb // ignore: cast_nullable_to_non_nullable
as double,lastSyncedAt: freezed == lastSyncedAt ? _self.lastSyncedAt : lastSyncedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
