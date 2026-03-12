// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stock_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StockLevel {

 String get id;@JsonKey(name: 'item_id') String get itemId;@JsonKey(name: 'location_id') String? get locationId; double get quantity;@JsonKey(name: 'updated_at') DateTime? get updatedAt;
/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StockLevelCopyWith<StockLevel> get copyWith => _$StockLevelCopyWithImpl<StockLevel>(this as StockLevel, _$identity);

  /// Serializes this StockLevel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $StockLevelCopyWith<$Res>  {
  factory $StockLevelCopyWith(StockLevel value, $Res Function(StockLevel) _then) = _$StockLevelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String? locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class _$StockLevelCopyWithImpl<$Res>
    implements $StockLevelCopyWith<$Res> {
  _$StockLevelCopyWithImpl(this._self, this._then);

  final StockLevel _self;
  final $Res Function(StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? locationId = freezed,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [StockLevel].
extension StockLevelPatterns on StockLevel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StockLevel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StockLevel value)  $default,){
final _that = this;
switch (_that) {
case _StockLevel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StockLevel value)?  $default,){
final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String? locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String? locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _StockLevel():
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'item_id')  String itemId, @JsonKey(name: 'location_id')  String? locationId,  double quantity, @JsonKey(name: 'updated_at')  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _StockLevel() when $default != null:
return $default(_that.id,_that.itemId,_that.locationId,_that.quantity,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StockLevel implements StockLevel {
  const _StockLevel({required this.id, @JsonKey(name: 'item_id') required this.itemId, @JsonKey(name: 'location_id') this.locationId, this.quantity = 0, @JsonKey(name: 'updated_at') this.updatedAt});
  factory _StockLevel.fromJson(Map<String, dynamic> json) => _$StockLevelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'item_id') final  String itemId;
@override@JsonKey(name: 'location_id') final  String? locationId;
@override@JsonKey() final  double quantity;
@override@JsonKey(name: 'updated_at') final  DateTime? updatedAt;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StockLevelCopyWith<_StockLevel> get copyWith => __$StockLevelCopyWithImpl<_StockLevel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StockLevelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StockLevel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,locationId,quantity,updatedAt);

@override
String toString() {
  return 'StockLevel(id: $id, itemId: $itemId, locationId: $locationId, quantity: $quantity, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$StockLevelCopyWith<$Res> implements $StockLevelCopyWith<$Res> {
  factory _$StockLevelCopyWith(_StockLevel value, $Res Function(_StockLevel) _then) = __$StockLevelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'item_id') String itemId,@JsonKey(name: 'location_id') String? locationId, double quantity,@JsonKey(name: 'updated_at') DateTime? updatedAt
});




}
/// @nodoc
class __$StockLevelCopyWithImpl<$Res>
    implements _$StockLevelCopyWith<$Res> {
  __$StockLevelCopyWithImpl(this._self, this._then);

  final _StockLevel _self;
  final $Res Function(_StockLevel) _then;

/// Create a copy of StockLevel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? locationId = freezed,Object? quantity = null,Object? updatedAt = freezed,}) {
  return _then(_StockLevel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as double,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
