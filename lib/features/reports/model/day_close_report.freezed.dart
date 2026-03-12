// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_close_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DayCloseReport {

 String get id;@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'business_date') String get businessDate;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'gross_sales') double get grossSales;@JsonKey(name: 'total_tax') double get totalTax;@JsonKey(name: 'total_discounts') double get totalDiscounts;@JsonKey(name: 'total_service_charge') double get totalServiceCharge;@JsonKey(name: 'total_tips') double get totalTips;@JsonKey(name: 'net_sales') double get netSales;@JsonKey(name: 'total_expenses') double get totalExpenses;@JsonKey(name: 'net_cash') double get netCash;@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown;@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> get orderTypeBreakdown;@JsonKey(name: 'cancelled_orders') int get cancelledOrders;@JsonKey(name: 'closed_by') String? get closedBy;@JsonKey(name: 'closed_at') DateTime? get closedAt;
/// Create a copy of DayCloseReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DayCloseReportCopyWith<DayCloseReport> get copyWith => _$DayCloseReportCopyWithImpl<DayCloseReport>(this as DayCloseReport, _$identity);

  /// Serializes this DayCloseReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DayCloseReport&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.businessDate, businessDate) || other.businessDate == businessDate)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.totalTax, totalTax) || other.totalTax == totalTax)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&(identical(other.totalServiceCharge, totalServiceCharge) || other.totalServiceCharge == totalServiceCharge)&&(identical(other.totalTips, totalTips) || other.totalTips == totalTips)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netCash, netCash) || other.netCash == netCash)&&const DeepCollectionEquality().equals(other.paymentBreakdown, paymentBreakdown)&&const DeepCollectionEquality().equals(other.orderTypeBreakdown, orderTypeBreakdown)&&(identical(other.cancelledOrders, cancelledOrders) || other.cancelledOrders == cancelledOrders)&&(identical(other.closedBy, closedBy) || other.closedBy == closedBy)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,businessDate,totalOrders,grossSales,totalTax,totalDiscounts,totalServiceCharge,totalTips,netSales,totalExpenses,netCash,const DeepCollectionEquality().hash(paymentBreakdown),const DeepCollectionEquality().hash(orderTypeBreakdown),cancelledOrders,closedBy,closedAt);

@override
String toString() {
  return 'DayCloseReport(id: $id, storeId: $storeId, businessDate: $businessDate, totalOrders: $totalOrders, grossSales: $grossSales, totalTax: $totalTax, totalDiscounts: $totalDiscounts, totalServiceCharge: $totalServiceCharge, totalTips: $totalTips, netSales: $netSales, totalExpenses: $totalExpenses, netCash: $netCash, paymentBreakdown: $paymentBreakdown, orderTypeBreakdown: $orderTypeBreakdown, cancelledOrders: $cancelledOrders, closedBy: $closedBy, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class $DayCloseReportCopyWith<$Res>  {
  factory $DayCloseReportCopyWith(DayCloseReport value, $Res Function(DayCloseReport) _then) = _$DayCloseReportCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'business_date') String businessDate,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'total_tax') double totalTax,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'total_service_charge') double totalServiceCharge,@JsonKey(name: 'total_tips') double totalTips,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_cash') double netCash,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown,@JsonKey(name: 'cancelled_orders') int cancelledOrders,@JsonKey(name: 'closed_by') String? closedBy,@JsonKey(name: 'closed_at') DateTime? closedAt
});




}
/// @nodoc
class _$DayCloseReportCopyWithImpl<$Res>
    implements $DayCloseReportCopyWith<$Res> {
  _$DayCloseReportCopyWithImpl(this._self, this._then);

  final DayCloseReport _self;
  final $Res Function(DayCloseReport) _then;

/// Create a copy of DayCloseReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? businessDate = null,Object? totalOrders = null,Object? grossSales = null,Object? totalTax = null,Object? totalDiscounts = null,Object? totalServiceCharge = null,Object? totalTips = null,Object? netSales = null,Object? totalExpenses = null,Object? netCash = null,Object? paymentBreakdown = null,Object? orderTypeBreakdown = null,Object? cancelledOrders = null,Object? closedBy = freezed,Object? closedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,businessDate: null == businessDate ? _self.businessDate : businessDate // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,totalTax: null == totalTax ? _self.totalTax : totalTax // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,totalServiceCharge: null == totalServiceCharge ? _self.totalServiceCharge : totalServiceCharge // ignore: cast_nullable_to_non_nullable
as double,totalTips: null == totalTips ? _self.totalTips : totalTips // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netCash: null == netCash ? _self.netCash : netCash // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self.paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,orderTypeBreakdown: null == orderTypeBreakdown ? _self.orderTypeBreakdown : orderTypeBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,cancelledOrders: null == cancelledOrders ? _self.cancelledOrders : cancelledOrders // ignore: cast_nullable_to_non_nullable
as int,closedBy: freezed == closedBy ? _self.closedBy : closedBy // ignore: cast_nullable_to_non_nullable
as String?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DayCloseReport].
extension DayCloseReportPatterns on DayCloseReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DayCloseReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DayCloseReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DayCloseReport value)  $default,){
final _that = this;
switch (_that) {
case _DayCloseReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DayCloseReport value)?  $default,){
final _that = this;
switch (_that) {
case _DayCloseReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'business_date')  String businessDate, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'total_tax')  double totalTax, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'total_service_charge')  double totalServiceCharge, @JsonKey(name: 'total_tips')  double totalTips, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_cash')  double netCash, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown, @JsonKey(name: 'cancelled_orders')  int cancelledOrders, @JsonKey(name: 'closed_by')  String? closedBy, @JsonKey(name: 'closed_at')  DateTime? closedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DayCloseReport() when $default != null:
return $default(_that.id,_that.storeId,_that.businessDate,_that.totalOrders,_that.grossSales,_that.totalTax,_that.totalDiscounts,_that.totalServiceCharge,_that.totalTips,_that.netSales,_that.totalExpenses,_that.netCash,_that.paymentBreakdown,_that.orderTypeBreakdown,_that.cancelledOrders,_that.closedBy,_that.closedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'business_date')  String businessDate, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'total_tax')  double totalTax, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'total_service_charge')  double totalServiceCharge, @JsonKey(name: 'total_tips')  double totalTips, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_cash')  double netCash, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown, @JsonKey(name: 'cancelled_orders')  int cancelledOrders, @JsonKey(name: 'closed_by')  String? closedBy, @JsonKey(name: 'closed_at')  DateTime? closedAt)  $default,) {final _that = this;
switch (_that) {
case _DayCloseReport():
return $default(_that.id,_that.storeId,_that.businessDate,_that.totalOrders,_that.grossSales,_that.totalTax,_that.totalDiscounts,_that.totalServiceCharge,_that.totalTips,_that.netSales,_that.totalExpenses,_that.netCash,_that.paymentBreakdown,_that.orderTypeBreakdown,_that.cancelledOrders,_that.closedBy,_that.closedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'business_date')  String businessDate, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'total_tax')  double totalTax, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'total_service_charge')  double totalServiceCharge, @JsonKey(name: 'total_tips')  double totalTips, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_cash')  double netCash, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown, @JsonKey(name: 'cancelled_orders')  int cancelledOrders, @JsonKey(name: 'closed_by')  String? closedBy, @JsonKey(name: 'closed_at')  DateTime? closedAt)?  $default,) {final _that = this;
switch (_that) {
case _DayCloseReport() when $default != null:
return $default(_that.id,_that.storeId,_that.businessDate,_that.totalOrders,_that.grossSales,_that.totalTax,_that.totalDiscounts,_that.totalServiceCharge,_that.totalTips,_that.netSales,_that.totalExpenses,_that.netCash,_that.paymentBreakdown,_that.orderTypeBreakdown,_that.cancelledOrders,_that.closedBy,_that.closedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DayCloseReport implements DayCloseReport {
  const _DayCloseReport({required this.id, @JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'business_date') required this.businessDate, @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'gross_sales') this.grossSales = 0, @JsonKey(name: 'total_tax') this.totalTax = 0, @JsonKey(name: 'total_discounts') this.totalDiscounts = 0, @JsonKey(name: 'total_service_charge') this.totalServiceCharge = 0, @JsonKey(name: 'total_tips') this.totalTips = 0, @JsonKey(name: 'net_sales') this.netSales = 0, @JsonKey(name: 'total_expenses') this.totalExpenses = 0, @JsonKey(name: 'net_cash') this.netCash = 0, @JsonKey(name: 'payment_breakdown') final  Map<String, double> paymentBreakdown = const {}, @JsonKey(name: 'order_type_breakdown') final  Map<String, dynamic> orderTypeBreakdown = const {}, @JsonKey(name: 'cancelled_orders') this.cancelledOrders = 0, @JsonKey(name: 'closed_by') this.closedBy, @JsonKey(name: 'closed_at') this.closedAt}): _paymentBreakdown = paymentBreakdown,_orderTypeBreakdown = orderTypeBreakdown;
  factory _DayCloseReport.fromJson(Map<String, dynamic> json) => _$DayCloseReportFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'business_date') final  String businessDate;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override@JsonKey(name: 'gross_sales') final  double grossSales;
@override@JsonKey(name: 'total_tax') final  double totalTax;
@override@JsonKey(name: 'total_discounts') final  double totalDiscounts;
@override@JsonKey(name: 'total_service_charge') final  double totalServiceCharge;
@override@JsonKey(name: 'total_tips') final  double totalTips;
@override@JsonKey(name: 'net_sales') final  double netSales;
@override@JsonKey(name: 'total_expenses') final  double totalExpenses;
@override@JsonKey(name: 'net_cash') final  double netCash;
 final  Map<String, double> _paymentBreakdown;
@override@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown {
  if (_paymentBreakdown is EqualUnmodifiableMapView) return _paymentBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paymentBreakdown);
}

 final  Map<String, dynamic> _orderTypeBreakdown;
@override@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> get orderTypeBreakdown {
  if (_orderTypeBreakdown is EqualUnmodifiableMapView) return _orderTypeBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_orderTypeBreakdown);
}

@override@JsonKey(name: 'cancelled_orders') final  int cancelledOrders;
@override@JsonKey(name: 'closed_by') final  String? closedBy;
@override@JsonKey(name: 'closed_at') final  DateTime? closedAt;

/// Create a copy of DayCloseReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DayCloseReportCopyWith<_DayCloseReport> get copyWith => __$DayCloseReportCopyWithImpl<_DayCloseReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DayCloseReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DayCloseReport&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.businessDate, businessDate) || other.businessDate == businessDate)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.totalTax, totalTax) || other.totalTax == totalTax)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&(identical(other.totalServiceCharge, totalServiceCharge) || other.totalServiceCharge == totalServiceCharge)&&(identical(other.totalTips, totalTips) || other.totalTips == totalTips)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netCash, netCash) || other.netCash == netCash)&&const DeepCollectionEquality().equals(other._paymentBreakdown, _paymentBreakdown)&&const DeepCollectionEquality().equals(other._orderTypeBreakdown, _orderTypeBreakdown)&&(identical(other.cancelledOrders, cancelledOrders) || other.cancelledOrders == cancelledOrders)&&(identical(other.closedBy, closedBy) || other.closedBy == closedBy)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,businessDate,totalOrders,grossSales,totalTax,totalDiscounts,totalServiceCharge,totalTips,netSales,totalExpenses,netCash,const DeepCollectionEquality().hash(_paymentBreakdown),const DeepCollectionEquality().hash(_orderTypeBreakdown),cancelledOrders,closedBy,closedAt);

@override
String toString() {
  return 'DayCloseReport(id: $id, storeId: $storeId, businessDate: $businessDate, totalOrders: $totalOrders, grossSales: $grossSales, totalTax: $totalTax, totalDiscounts: $totalDiscounts, totalServiceCharge: $totalServiceCharge, totalTips: $totalTips, netSales: $netSales, totalExpenses: $totalExpenses, netCash: $netCash, paymentBreakdown: $paymentBreakdown, orderTypeBreakdown: $orderTypeBreakdown, cancelledOrders: $cancelledOrders, closedBy: $closedBy, closedAt: $closedAt)';
}


}

/// @nodoc
abstract mixin class _$DayCloseReportCopyWith<$Res> implements $DayCloseReportCopyWith<$Res> {
  factory _$DayCloseReportCopyWith(_DayCloseReport value, $Res Function(_DayCloseReport) _then) = __$DayCloseReportCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'business_date') String businessDate,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'total_tax') double totalTax,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'total_service_charge') double totalServiceCharge,@JsonKey(name: 'total_tips') double totalTips,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_cash') double netCash,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown,@JsonKey(name: 'cancelled_orders') int cancelledOrders,@JsonKey(name: 'closed_by') String? closedBy,@JsonKey(name: 'closed_at') DateTime? closedAt
});




}
/// @nodoc
class __$DayCloseReportCopyWithImpl<$Res>
    implements _$DayCloseReportCopyWith<$Res> {
  __$DayCloseReportCopyWithImpl(this._self, this._then);

  final _DayCloseReport _self;
  final $Res Function(_DayCloseReport) _then;

/// Create a copy of DayCloseReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? businessDate = null,Object? totalOrders = null,Object? grossSales = null,Object? totalTax = null,Object? totalDiscounts = null,Object? totalServiceCharge = null,Object? totalTips = null,Object? netSales = null,Object? totalExpenses = null,Object? netCash = null,Object? paymentBreakdown = null,Object? orderTypeBreakdown = null,Object? cancelledOrders = null,Object? closedBy = freezed,Object? closedAt = freezed,}) {
  return _then(_DayCloseReport(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,businessDate: null == businessDate ? _self.businessDate : businessDate // ignore: cast_nullable_to_non_nullable
as String,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,totalTax: null == totalTax ? _self.totalTax : totalTax // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,totalServiceCharge: null == totalServiceCharge ? _self.totalServiceCharge : totalServiceCharge // ignore: cast_nullable_to_non_nullable
as double,totalTips: null == totalTips ? _self.totalTips : totalTips // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netCash: null == netCash ? _self.netCash : netCash // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self._paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,orderTypeBreakdown: null == orderTypeBreakdown ? _self._orderTypeBreakdown : orderTypeBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,cancelledOrders: null == cancelledOrders ? _self.cancelledOrders : cancelledOrders // ignore: cast_nullable_to_non_nullable
as int,closedBy: freezed == closedBy ? _self.closedBy : closedBy // ignore: cast_nullable_to_non_nullable
as String?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
