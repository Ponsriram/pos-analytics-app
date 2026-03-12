// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_trend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderTrend {

 String get date;@JsonKey(name: 'order_count') int get orderCount;
/// Create a copy of OrderTrend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderTrendCopyWith<OrderTrend> get copyWith => _$OrderTrendCopyWithImpl<OrderTrend>(this as OrderTrend, _$identity);

  /// Serializes this OrderTrend to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderTrend&&(identical(other.date, date) || other.date == date)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,orderCount);

@override
String toString() {
  return 'OrderTrend(date: $date, orderCount: $orderCount)';
}


}

/// @nodoc
abstract mixin class $OrderTrendCopyWith<$Res>  {
  factory $OrderTrendCopyWith(OrderTrend value, $Res Function(OrderTrend) _then) = _$OrderTrendCopyWithImpl;
@useResult
$Res call({
 String date,@JsonKey(name: 'order_count') int orderCount
});




}
/// @nodoc
class _$OrderTrendCopyWithImpl<$Res>
    implements $OrderTrendCopyWith<$Res> {
  _$OrderTrendCopyWithImpl(this._self, this._then);

  final OrderTrend _self;
  final $Res Function(OrderTrend) _then;

/// Create a copy of OrderTrend
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? orderCount = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderTrend].
extension OrderTrendPatterns on OrderTrend {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderTrend value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderTrend() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderTrend value)  $default,){
final _that = this;
switch (_that) {
case _OrderTrend():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderTrend value)?  $default,){
final _that = this;
switch (_that) {
case _OrderTrend() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'order_count')  int orderCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderTrend() when $default != null:
return $default(_that.date,_that.orderCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date, @JsonKey(name: 'order_count')  int orderCount)  $default,) {final _that = this;
switch (_that) {
case _OrderTrend():
return $default(_that.date,_that.orderCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date, @JsonKey(name: 'order_count')  int orderCount)?  $default,) {final _that = this;
switch (_that) {
case _OrderTrend() when $default != null:
return $default(_that.date,_that.orderCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderTrend implements OrderTrend {
  const _OrderTrend({required this.date, @JsonKey(name: 'order_count') this.orderCount = 0});
  factory _OrderTrend.fromJson(Map<String, dynamic> json) => _$OrderTrendFromJson(json);

@override final  String date;
@override@JsonKey(name: 'order_count') final  int orderCount;

/// Create a copy of OrderTrend
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderTrendCopyWith<_OrderTrend> get copyWith => __$OrderTrendCopyWithImpl<_OrderTrend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderTrendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderTrend&&(identical(other.date, date) || other.date == date)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,orderCount);

@override
String toString() {
  return 'OrderTrend(date: $date, orderCount: $orderCount)';
}


}

/// @nodoc
abstract mixin class _$OrderTrendCopyWith<$Res> implements $OrderTrendCopyWith<$Res> {
  factory _$OrderTrendCopyWith(_OrderTrend value, $Res Function(_OrderTrend) _then) = __$OrderTrendCopyWithImpl;
@override @useResult
$Res call({
 String date,@JsonKey(name: 'order_count') int orderCount
});




}
/// @nodoc
class __$OrderTrendCopyWithImpl<$Res>
    implements _$OrderTrendCopyWith<$Res> {
  __$OrderTrendCopyWithImpl(this._self, this._then);

  final _OrderTrend _self;
  final $Res Function(_OrderTrend) _then;

/// Create a copy of OrderTrend
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? orderCount = null,}) {
  return _then(_OrderTrend(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
