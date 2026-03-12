// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'online_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnlineOrderModel {

 String get id;@JsonKey(name: 'order_type') String get orderType; String get channel; String get status;@JsonKey(name: 'payment_status') String get paymentStatus;@JsonKey(name: 'net_amount') double get netAmount;@JsonKey(name: 'gross_amount') double get grossAmount;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'table_number') String? get tableNumber;
/// Create a copy of OnlineOrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnlineOrderModelCopyWith<OnlineOrderModel> get copyWith => _$OnlineOrderModelCopyWithImpl<OnlineOrderModel>(this as OnlineOrderModel, _$identity);

  /// Serializes this OnlineOrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnlineOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderType,channel,status,paymentStatus,netAmount,grossAmount,createdAt,tableNumber);

@override
String toString() {
  return 'OnlineOrderModel(id: $id, orderType: $orderType, channel: $channel, status: $status, paymentStatus: $paymentStatus, netAmount: $netAmount, grossAmount: $grossAmount, createdAt: $createdAt, tableNumber: $tableNumber)';
}


}

/// @nodoc
abstract mixin class $OnlineOrderModelCopyWith<$Res>  {
  factory $OnlineOrderModelCopyWith(OnlineOrderModel value, $Res Function(OnlineOrderModel) _then) = _$OnlineOrderModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'order_type') String orderType, String channel, String status,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'net_amount') double netAmount,@JsonKey(name: 'gross_amount') double grossAmount,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'table_number') String? tableNumber
});




}
/// @nodoc
class _$OnlineOrderModelCopyWithImpl<$Res>
    implements $OnlineOrderModelCopyWith<$Res> {
  _$OnlineOrderModelCopyWithImpl(this._self, this._then);

  final OnlineOrderModel _self;
  final $Res Function(OnlineOrderModel) _then;

/// Create a copy of OnlineOrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderType = null,Object? channel = null,Object? status = null,Object? paymentStatus = null,Object? netAmount = null,Object? grossAmount = null,Object? createdAt = freezed,Object? tableNumber = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OnlineOrderModel].
extension OnlineOrderModelPatterns on OnlineOrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnlineOrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnlineOrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnlineOrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OnlineOrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnlineOrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OnlineOrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_type')  String orderType,  String channel,  String status, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'net_amount')  double netAmount, @JsonKey(name: 'gross_amount')  double grossAmount, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'table_number')  String? tableNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnlineOrderModel() when $default != null:
return $default(_that.id,_that.orderType,_that.channel,_that.status,_that.paymentStatus,_that.netAmount,_that.grossAmount,_that.createdAt,_that.tableNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'order_type')  String orderType,  String channel,  String status, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'net_amount')  double netAmount, @JsonKey(name: 'gross_amount')  double grossAmount, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'table_number')  String? tableNumber)  $default,) {final _that = this;
switch (_that) {
case _OnlineOrderModel():
return $default(_that.id,_that.orderType,_that.channel,_that.status,_that.paymentStatus,_that.netAmount,_that.grossAmount,_that.createdAt,_that.tableNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'order_type')  String orderType,  String channel,  String status, @JsonKey(name: 'payment_status')  String paymentStatus, @JsonKey(name: 'net_amount')  double netAmount, @JsonKey(name: 'gross_amount')  double grossAmount, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'table_number')  String? tableNumber)?  $default,) {final _that = this;
switch (_that) {
case _OnlineOrderModel() when $default != null:
return $default(_that.id,_that.orderType,_that.channel,_that.status,_that.paymentStatus,_that.netAmount,_that.grossAmount,_that.createdAt,_that.tableNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OnlineOrderModel implements OnlineOrderModel {
  const _OnlineOrderModel({this.id = '', @JsonKey(name: 'order_type') this.orderType = '', this.channel = '', this.status = '', @JsonKey(name: 'payment_status') this.paymentStatus = '', @JsonKey(name: 'net_amount') this.netAmount = 0, @JsonKey(name: 'gross_amount') this.grossAmount = 0, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'table_number') this.tableNumber});
  factory _OnlineOrderModel.fromJson(Map<String, dynamic> json) => _$OnlineOrderModelFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey(name: 'order_type') final  String orderType;
@override@JsonKey() final  String channel;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'payment_status') final  String paymentStatus;
@override@JsonKey(name: 'net_amount') final  double netAmount;
@override@JsonKey(name: 'gross_amount') final  double grossAmount;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'table_number') final  String? tableNumber;

/// Create a copy of OnlineOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnlineOrderModelCopyWith<_OnlineOrderModel> get copyWith => __$OnlineOrderModelCopyWithImpl<_OnlineOrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnlineOrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnlineOrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderType, orderType) || other.orderType == orderType)&&(identical(other.channel, channel) || other.channel == channel)&&(identical(other.status, status) || other.status == status)&&(identical(other.paymentStatus, paymentStatus) || other.paymentStatus == paymentStatus)&&(identical(other.netAmount, netAmount) || other.netAmount == netAmount)&&(identical(other.grossAmount, grossAmount) || other.grossAmount == grossAmount)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.tableNumber, tableNumber) || other.tableNumber == tableNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderType,channel,status,paymentStatus,netAmount,grossAmount,createdAt,tableNumber);

@override
String toString() {
  return 'OnlineOrderModel(id: $id, orderType: $orderType, channel: $channel, status: $status, paymentStatus: $paymentStatus, netAmount: $netAmount, grossAmount: $grossAmount, createdAt: $createdAt, tableNumber: $tableNumber)';
}


}

/// @nodoc
abstract mixin class _$OnlineOrderModelCopyWith<$Res> implements $OnlineOrderModelCopyWith<$Res> {
  factory _$OnlineOrderModelCopyWith(_OnlineOrderModel value, $Res Function(_OnlineOrderModel) _then) = __$OnlineOrderModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'order_type') String orderType, String channel, String status,@JsonKey(name: 'payment_status') String paymentStatus,@JsonKey(name: 'net_amount') double netAmount,@JsonKey(name: 'gross_amount') double grossAmount,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'table_number') String? tableNumber
});




}
/// @nodoc
class __$OnlineOrderModelCopyWithImpl<$Res>
    implements _$OnlineOrderModelCopyWith<$Res> {
  __$OnlineOrderModelCopyWithImpl(this._self, this._then);

  final _OnlineOrderModel _self;
  final $Res Function(_OnlineOrderModel) _then;

/// Create a copy of OnlineOrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderType = null,Object? channel = null,Object? status = null,Object? paymentStatus = null,Object? netAmount = null,Object? grossAmount = null,Object? createdAt = freezed,Object? tableNumber = freezed,}) {
  return _then(_OnlineOrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,orderType: null == orderType ? _self.orderType : orderType // ignore: cast_nullable_to_non_nullable
as String,channel: null == channel ? _self.channel : channel // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paymentStatus: null == paymentStatus ? _self.paymentStatus : paymentStatus // ignore: cast_nullable_to_non_nullable
as String,netAmount: null == netAmount ? _self.netAmount : netAmount // ignore: cast_nullable_to_non_nullable
as double,grossAmount: null == grossAmount ? _self.grossAmount : grossAmount // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,tableNumber: freezed == tableNumber ? _self.tableNumber : tableNumber // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
