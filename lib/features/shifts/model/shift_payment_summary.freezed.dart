// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_payment_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShiftPaymentSummary {

 String get id;@JsonKey(name: 'shift_id') String get shiftId;@JsonKey(name: 'payment_method') String get paymentMethod;@JsonKey(name: 'expected_amount') double get expectedAmount;@JsonKey(name: 'actual_amount') double get actualAmount; double get variance;
/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftPaymentSummaryCopyWith<ShiftPaymentSummary> get copyWith => _$ShiftPaymentSummaryCopyWithImpl<ShiftPaymentSummary>(this as ShiftPaymentSummary, _$identity);

  /// Serializes this ShiftPaymentSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftPaymentSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount)&&(identical(other.variance, variance) || other.variance == variance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,shiftId,paymentMethod,expectedAmount,actualAmount,variance);

@override
String toString() {
  return 'ShiftPaymentSummary(id: $id, shiftId: $shiftId, paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount, variance: $variance)';
}


}

/// @nodoc
abstract mixin class $ShiftPaymentSummaryCopyWith<$Res>  {
  factory $ShiftPaymentSummaryCopyWith(ShiftPaymentSummary value, $Res Function(ShiftPaymentSummary) _then) = _$ShiftPaymentSummaryCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount, double variance
});




}
/// @nodoc
class _$ShiftPaymentSummaryCopyWithImpl<$Res>
    implements $ShiftPaymentSummaryCopyWith<$Res> {
  _$ShiftPaymentSummaryCopyWithImpl(this._self, this._then);

  final ShiftPaymentSummary _self;
  final $Res Function(ShiftPaymentSummary) _then;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? shiftId = null,Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,Object? variance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,variance: null == variance ? _self.variance : variance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftPaymentSummary].
extension ShiftPaymentSummaryPatterns on ShiftPaymentSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftPaymentSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftPaymentSummary value)  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftPaymentSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary():
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'payment_method')  String paymentMethod, @JsonKey(name: 'expected_amount')  double expectedAmount, @JsonKey(name: 'actual_amount')  double actualAmount,  double variance)?  $default,) {final _that = this;
switch (_that) {
case _ShiftPaymentSummary() when $default != null:
return $default(_that.id,_that.shiftId,_that.paymentMethod,_that.expectedAmount,_that.actualAmount,_that.variance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftPaymentSummary implements ShiftPaymentSummary {
  const _ShiftPaymentSummary({required this.id, @JsonKey(name: 'shift_id') required this.shiftId, @JsonKey(name: 'payment_method') required this.paymentMethod, @JsonKey(name: 'expected_amount') this.expectedAmount = 0, @JsonKey(name: 'actual_amount') this.actualAmount = 0, this.variance = 0});
  factory _ShiftPaymentSummary.fromJson(Map<String, dynamic> json) => _$ShiftPaymentSummaryFromJson(json);

@override final  String id;
@override@JsonKey(name: 'shift_id') final  String shiftId;
@override@JsonKey(name: 'payment_method') final  String paymentMethod;
@override@JsonKey(name: 'expected_amount') final  double expectedAmount;
@override@JsonKey(name: 'actual_amount') final  double actualAmount;
@override@JsonKey() final  double variance;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftPaymentSummaryCopyWith<_ShiftPaymentSummary> get copyWith => __$ShiftPaymentSummaryCopyWithImpl<_ShiftPaymentSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftPaymentSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftPaymentSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.paymentMethod, paymentMethod) || other.paymentMethod == paymentMethod)&&(identical(other.expectedAmount, expectedAmount) || other.expectedAmount == expectedAmount)&&(identical(other.actualAmount, actualAmount) || other.actualAmount == actualAmount)&&(identical(other.variance, variance) || other.variance == variance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,shiftId,paymentMethod,expectedAmount,actualAmount,variance);

@override
String toString() {
  return 'ShiftPaymentSummary(id: $id, shiftId: $shiftId, paymentMethod: $paymentMethod, expectedAmount: $expectedAmount, actualAmount: $actualAmount, variance: $variance)';
}


}

/// @nodoc
abstract mixin class _$ShiftPaymentSummaryCopyWith<$Res> implements $ShiftPaymentSummaryCopyWith<$Res> {
  factory _$ShiftPaymentSummaryCopyWith(_ShiftPaymentSummary value, $Res Function(_ShiftPaymentSummary) _then) = __$ShiftPaymentSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'payment_method') String paymentMethod,@JsonKey(name: 'expected_amount') double expectedAmount,@JsonKey(name: 'actual_amount') double actualAmount, double variance
});




}
/// @nodoc
class __$ShiftPaymentSummaryCopyWithImpl<$Res>
    implements _$ShiftPaymentSummaryCopyWith<$Res> {
  __$ShiftPaymentSummaryCopyWithImpl(this._self, this._then);

  final _ShiftPaymentSummary _self;
  final $Res Function(_ShiftPaymentSummary) _then;

/// Create a copy of ShiftPaymentSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? shiftId = null,Object? paymentMethod = null,Object? expectedAmount = null,Object? actualAmount = null,Object? variance = null,}) {
  return _then(_ShiftPaymentSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,paymentMethod: null == paymentMethod ? _self.paymentMethod : paymentMethod // ignore: cast_nullable_to_non_nullable
as String,expectedAmount: null == expectedAmount ? _self.expectedAmount : expectedAmount // ignore: cast_nullable_to_non_nullable
as double,actualAmount: null == actualAmount ? _self.actualAmount : actualAmount // ignore: cast_nullable_to_non_nullable
as double,variance: null == variance ? _self.variance : variance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
