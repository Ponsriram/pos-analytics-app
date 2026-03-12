// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_zone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeliveryZone {

 String get id; String get name; String get state; String get city;@JsonKey(name: 'sub_order_type') String get subOrderType;@JsonKey(name: 'delivery_fee') double get deliveryFee;@JsonKey(name: 'min_order_amount') double get minOrderAmount;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'store_ids') List<String> get storeIds;
/// Create a copy of DeliveryZone
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeliveryZoneCopyWith<DeliveryZone> get copyWith => _$DeliveryZoneCopyWithImpl<DeliveryZone>(this as DeliveryZone, _$identity);

  /// Serializes this DeliveryZone to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeliveryZone&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.subOrderType, subOrderType) || other.subOrderType == subOrderType)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.storeIds, storeIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,state,city,subOrderType,deliveryFee,minOrderAmount,isActive,const DeepCollectionEquality().hash(storeIds));

@override
String toString() {
  return 'DeliveryZone(id: $id, name: $name, state: $state, city: $city, subOrderType: $subOrderType, deliveryFee: $deliveryFee, minOrderAmount: $minOrderAmount, isActive: $isActive, storeIds: $storeIds)';
}


}

/// @nodoc
abstract mixin class $DeliveryZoneCopyWith<$Res>  {
  factory $DeliveryZoneCopyWith(DeliveryZone value, $Res Function(DeliveryZone) _then) = _$DeliveryZoneCopyWithImpl;
@useResult
$Res call({
 String id, String name, String state, String city,@JsonKey(name: 'sub_order_type') String subOrderType,@JsonKey(name: 'delivery_fee') double deliveryFee,@JsonKey(name: 'min_order_amount') double minOrderAmount,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'store_ids') List<String> storeIds
});




}
/// @nodoc
class _$DeliveryZoneCopyWithImpl<$Res>
    implements $DeliveryZoneCopyWith<$Res> {
  _$DeliveryZoneCopyWithImpl(this._self, this._then);

  final DeliveryZone _self;
  final $Res Function(DeliveryZone) _then;

/// Create a copy of DeliveryZone
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? state = null,Object? city = null,Object? subOrderType = null,Object? deliveryFee = null,Object? minOrderAmount = null,Object? isActive = null,Object? storeIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,subOrderType: null == subOrderType ? _self.subOrderType : subOrderType // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,storeIds: null == storeIds ? _self.storeIds : storeIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeliveryZone].
extension DeliveryZonePatterns on DeliveryZone {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeliveryZone value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeliveryZone() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeliveryZone value)  $default,){
final _that = this;
switch (_that) {
case _DeliveryZone():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeliveryZone value)?  $default,){
final _that = this;
switch (_that) {
case _DeliveryZone() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String state,  String city, @JsonKey(name: 'sub_order_type')  String subOrderType, @JsonKey(name: 'delivery_fee')  double deliveryFee, @JsonKey(name: 'min_order_amount')  double minOrderAmount, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeliveryZone() when $default != null:
return $default(_that.id,_that.name,_that.state,_that.city,_that.subOrderType,_that.deliveryFee,_that.minOrderAmount,_that.isActive,_that.storeIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String state,  String city, @JsonKey(name: 'sub_order_type')  String subOrderType, @JsonKey(name: 'delivery_fee')  double deliveryFee, @JsonKey(name: 'min_order_amount')  double minOrderAmount, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds)  $default,) {final _that = this;
switch (_that) {
case _DeliveryZone():
return $default(_that.id,_that.name,_that.state,_that.city,_that.subOrderType,_that.deliveryFee,_that.minOrderAmount,_that.isActive,_that.storeIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String state,  String city, @JsonKey(name: 'sub_order_type')  String subOrderType, @JsonKey(name: 'delivery_fee')  double deliveryFee, @JsonKey(name: 'min_order_amount')  double minOrderAmount, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds)?  $default,) {final _that = this;
switch (_that) {
case _DeliveryZone() when $default != null:
return $default(_that.id,_that.name,_that.state,_that.city,_that.subOrderType,_that.deliveryFee,_that.minOrderAmount,_that.isActive,_that.storeIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeliveryZone implements DeliveryZone {
  const _DeliveryZone({required this.id, required this.name, this.state = '', this.city = '', @JsonKey(name: 'sub_order_type') this.subOrderType = '', @JsonKey(name: 'delivery_fee') this.deliveryFee = 0, @JsonKey(name: 'min_order_amount') this.minOrderAmount = 0, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'store_ids') final  List<String> storeIds = const []}): _storeIds = storeIds;
  factory _DeliveryZone.fromJson(Map<String, dynamic> json) => _$DeliveryZoneFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey() final  String state;
@override@JsonKey() final  String city;
@override@JsonKey(name: 'sub_order_type') final  String subOrderType;
@override@JsonKey(name: 'delivery_fee') final  double deliveryFee;
@override@JsonKey(name: 'min_order_amount') final  double minOrderAmount;
@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<String> _storeIds;
@override@JsonKey(name: 'store_ids') List<String> get storeIds {
  if (_storeIds is EqualUnmodifiableListView) return _storeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_storeIds);
}


/// Create a copy of DeliveryZone
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeliveryZoneCopyWith<_DeliveryZone> get copyWith => __$DeliveryZoneCopyWithImpl<_DeliveryZone>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeliveryZoneToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeliveryZone&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.city, city) || other.city == city)&&(identical(other.subOrderType, subOrderType) || other.subOrderType == subOrderType)&&(identical(other.deliveryFee, deliveryFee) || other.deliveryFee == deliveryFee)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._storeIds, _storeIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,state,city,subOrderType,deliveryFee,minOrderAmount,isActive,const DeepCollectionEquality().hash(_storeIds));

@override
String toString() {
  return 'DeliveryZone(id: $id, name: $name, state: $state, city: $city, subOrderType: $subOrderType, deliveryFee: $deliveryFee, minOrderAmount: $minOrderAmount, isActive: $isActive, storeIds: $storeIds)';
}


}

/// @nodoc
abstract mixin class _$DeliveryZoneCopyWith<$Res> implements $DeliveryZoneCopyWith<$Res> {
  factory _$DeliveryZoneCopyWith(_DeliveryZone value, $Res Function(_DeliveryZone) _then) = __$DeliveryZoneCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String state, String city,@JsonKey(name: 'sub_order_type') String subOrderType,@JsonKey(name: 'delivery_fee') double deliveryFee,@JsonKey(name: 'min_order_amount') double minOrderAmount,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'store_ids') List<String> storeIds
});




}
/// @nodoc
class __$DeliveryZoneCopyWithImpl<$Res>
    implements _$DeliveryZoneCopyWith<$Res> {
  __$DeliveryZoneCopyWithImpl(this._self, this._then);

  final _DeliveryZone _self;
  final $Res Function(_DeliveryZone) _then;

/// Create a copy of DeliveryZone
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? state = null,Object? city = null,Object? subOrderType = null,Object? deliveryFee = null,Object? minOrderAmount = null,Object? isActive = null,Object? storeIds = null,}) {
  return _then(_DeliveryZone(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,subOrderType: null == subOrderType ? _self.subOrderType : subOrderType // ignore: cast_nullable_to_non_nullable
as String,deliveryFee: null == deliveryFee ? _self.deliveryFee : deliveryFee // ignore: cast_nullable_to_non_nullable
as double,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,storeIds: null == storeIds ? _self._storeIds : storeIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
