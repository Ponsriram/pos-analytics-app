// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Shift {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'terminal_id') String? get terminalId;@JsonKey(name: 'employee_id') String? get employeeId; String get status;@JsonKey(name: 'opening_cash') double get openingCash;@JsonKey(name: 'closing_cash') double get closingCash;@JsonKey(name: 'expected_cash') double get expectedCash;@JsonKey(name: 'cash_variance') double get cashVariance;@JsonKey(name: 'total_sales') double get totalSales;@JsonKey(name: 'total_orders') int get totalOrders; String? get notes;@JsonKey(name: 'started_at') DateTime? get startedAt;@JsonKey(name: 'ended_at') DateTime? get endedAt;@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> get paymentSummaries;
/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCopyWith<Shift> get copyWith => _$ShiftCopyWithImpl<Shift>(this as Shift, _$identity);

  /// Serializes this Shift to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.expectedCash, expectedCash) || other.expectedCash == expectedCash)&&(identical(other.cashVariance, cashVariance) || other.cashVariance == cashVariance)&&(identical(other.totalSales, totalSales) || other.totalSales == totalSales)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&const DeepCollectionEquality().equals(other.paymentSummaries, paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,terminalId,employeeId,status,openingCash,closingCash,expectedCash,cashVariance,totalSales,totalOrders,notes,startedAt,endedAt,const DeepCollectionEquality().hash(paymentSummaries));

@override
String toString() {
  return 'Shift(id: $id, storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, status: $status, openingCash: $openingCash, closingCash: $closingCash, expectedCash: $expectedCash, cashVariance: $cashVariance, totalSales: $totalSales, totalOrders: $totalOrders, notes: $notes, startedAt: $startedAt, endedAt: $endedAt, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class $ShiftCopyWith<$Res>  {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) _then) = _$ShiftCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String? employeeId, String status,@JsonKey(name: 'opening_cash') double openingCash,@JsonKey(name: 'closing_cash') double closingCash,@JsonKey(name: 'expected_cash') double expectedCash,@JsonKey(name: 'cash_variance') double cashVariance,@JsonKey(name: 'total_sales') double totalSales,@JsonKey(name: 'total_orders') int totalOrders, String? notes,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> paymentSummaries
});




}
/// @nodoc
class _$ShiftCopyWithImpl<$Res>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._self, this._then);

  final Shift _self;
  final $Res Function(Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? terminalId = freezed,Object? employeeId = freezed,Object? status = null,Object? openingCash = null,Object? closingCash = null,Object? expectedCash = null,Object? cashVariance = null,Object? totalSales = null,Object? totalOrders = null,Object? notes = freezed,Object? startedAt = freezed,Object? endedAt = freezed,Object? paymentSummaries = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,closingCash: null == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double,expectedCash: null == expectedCash ? _self.expectedCash : expectedCash // ignore: cast_nullable_to_non_nullable
as double,cashVariance: null == cashVariance ? _self.cashVariance : cashVariance // ignore: cast_nullable_to_non_nullable
as double,totalSales: null == totalSales ? _self.totalSales : totalSales // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentSummaries: null == paymentSummaries ? _self.paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummary>,
  ));
}

}


/// Adds pattern-matching-related methods to [Shift].
extension ShiftPatterns on Shift {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shift value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shift value)  $default,){
final _that = this;
switch (_that) {
case _Shift():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shift value)?  $default,){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String? employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double closingCash, @JsonKey(name: 'expected_cash')  double expectedCash, @JsonKey(name: 'cash_variance')  double cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String? employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double closingCash, @JsonKey(name: 'expected_cash')  double expectedCash, @JsonKey(name: 'cash_variance')  double cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)  $default,) {final _that = this;
switch (_that) {
case _Shift():
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'terminal_id')  String? terminalId, @JsonKey(name: 'employee_id')  String? employeeId,  String status, @JsonKey(name: 'opening_cash')  double openingCash, @JsonKey(name: 'closing_cash')  double closingCash, @JsonKey(name: 'expected_cash')  double expectedCash, @JsonKey(name: 'cash_variance')  double cashVariance, @JsonKey(name: 'total_sales')  double totalSales, @JsonKey(name: 'total_orders')  int totalOrders,  String? notes, @JsonKey(name: 'started_at')  DateTime? startedAt, @JsonKey(name: 'ended_at')  DateTime? endedAt, @JsonKey(name: 'payment_summaries')  List<ShiftPaymentSummary> paymentSummaries)?  $default,) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.storeId,_that.terminalId,_that.employeeId,_that.status,_that.openingCash,_that.closingCash,_that.expectedCash,_that.cashVariance,_that.totalSales,_that.totalOrders,_that.notes,_that.startedAt,_that.endedAt,_that.paymentSummaries);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Shift implements Shift {
  const _Shift({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'terminal_id') this.terminalId, @JsonKey(name: 'employee_id') this.employeeId, this.status = 'open', @JsonKey(name: 'opening_cash') this.openingCash = 0, @JsonKey(name: 'closing_cash') this.closingCash = 0, @JsonKey(name: 'expected_cash') this.expectedCash = 0, @JsonKey(name: 'cash_variance') this.cashVariance = 0, @JsonKey(name: 'total_sales') this.totalSales = 0, @JsonKey(name: 'total_orders') this.totalOrders = 0, this.notes, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'ended_at') this.endedAt, @JsonKey(name: 'payment_summaries') final  List<ShiftPaymentSummary> paymentSummaries = const []}): _paymentSummaries = paymentSummaries;
  factory _Shift.fromJson(Map<String, dynamic> json) => _$ShiftFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'terminal_id') final  String? terminalId;
@override@JsonKey(name: 'employee_id') final  String? employeeId;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'opening_cash') final  double openingCash;
@override@JsonKey(name: 'closing_cash') final  double closingCash;
@override@JsonKey(name: 'expected_cash') final  double expectedCash;
@override@JsonKey(name: 'cash_variance') final  double cashVariance;
@override@JsonKey(name: 'total_sales') final  double totalSales;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override final  String? notes;
@override@JsonKey(name: 'started_at') final  DateTime? startedAt;
@override@JsonKey(name: 'ended_at') final  DateTime? endedAt;
 final  List<ShiftPaymentSummary> _paymentSummaries;
@override@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> get paymentSummaries {
  if (_paymentSummaries is EqualUnmodifiableListView) return _paymentSummaries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paymentSummaries);
}


/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCopyWith<_Shift> get copyWith => __$ShiftCopyWithImpl<_Shift>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.status, status) || other.status == status)&&(identical(other.openingCash, openingCash) || other.openingCash == openingCash)&&(identical(other.closingCash, closingCash) || other.closingCash == closingCash)&&(identical(other.expectedCash, expectedCash) || other.expectedCash == expectedCash)&&(identical(other.cashVariance, cashVariance) || other.cashVariance == cashVariance)&&(identical(other.totalSales, totalSales) || other.totalSales == totalSales)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.endedAt, endedAt) || other.endedAt == endedAt)&&const DeepCollectionEquality().equals(other._paymentSummaries, _paymentSummaries));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,terminalId,employeeId,status,openingCash,closingCash,expectedCash,cashVariance,totalSales,totalOrders,notes,startedAt,endedAt,const DeepCollectionEquality().hash(_paymentSummaries));

@override
String toString() {
  return 'Shift(id: $id, storeId: $storeId, terminalId: $terminalId, employeeId: $employeeId, status: $status, openingCash: $openingCash, closingCash: $closingCash, expectedCash: $expectedCash, cashVariance: $cashVariance, totalSales: $totalSales, totalOrders: $totalOrders, notes: $notes, startedAt: $startedAt, endedAt: $endedAt, paymentSummaries: $paymentSummaries)';
}


}

/// @nodoc
abstract mixin class _$ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$ShiftCopyWith(_Shift value, $Res Function(_Shift) _then) = __$ShiftCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'terminal_id') String? terminalId,@JsonKey(name: 'employee_id') String? employeeId, String status,@JsonKey(name: 'opening_cash') double openingCash,@JsonKey(name: 'closing_cash') double closingCash,@JsonKey(name: 'expected_cash') double expectedCash,@JsonKey(name: 'cash_variance') double cashVariance,@JsonKey(name: 'total_sales') double totalSales,@JsonKey(name: 'total_orders') int totalOrders, String? notes,@JsonKey(name: 'started_at') DateTime? startedAt,@JsonKey(name: 'ended_at') DateTime? endedAt,@JsonKey(name: 'payment_summaries') List<ShiftPaymentSummary> paymentSummaries
});




}
/// @nodoc
class __$ShiftCopyWithImpl<$Res>
    implements _$ShiftCopyWith<$Res> {
  __$ShiftCopyWithImpl(this._self, this._then);

  final _Shift _self;
  final $Res Function(_Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? terminalId = freezed,Object? employeeId = freezed,Object? status = null,Object? openingCash = null,Object? closingCash = null,Object? expectedCash = null,Object? cashVariance = null,Object? totalSales = null,Object? totalOrders = null,Object? notes = freezed,Object? startedAt = freezed,Object? endedAt = freezed,Object? paymentSummaries = null,}) {
  return _then(_Shift(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,employeeId: freezed == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,openingCash: null == openingCash ? _self.openingCash : openingCash // ignore: cast_nullable_to_non_nullable
as double,closingCash: null == closingCash ? _self.closingCash : closingCash // ignore: cast_nullable_to_non_nullable
as double,expectedCash: null == expectedCash ? _self.expectedCash : expectedCash // ignore: cast_nullable_to_non_nullable
as double,cashVariance: null == cashVariance ? _self.cashVariance : cashVariance // ignore: cast_nullable_to_non_nullable
as double,totalSales: null == totalSales ? _self.totalSales : totalSales // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,endedAt: freezed == endedAt ? _self.endedAt : endedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,paymentSummaries: null == paymentSummaries ? _self._paymentSummaries : paymentSummaries // ignore: cast_nullable_to_non_nullable
as List<ShiftPaymentSummary>,
  ));
}


}

// dart format on
