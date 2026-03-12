// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SalesReport {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'store_name') String? get storeName; String? get date;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'gross_sales') double get grossSales;@JsonKey(name: 'net_sales') double get netSales;@JsonKey(name: 'tax_collected') double get taxCollected;@JsonKey(name: 'total_discounts') double get totalDiscounts;@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown;@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> get orderTypeBreakdown;
/// Create a copy of SalesReport
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalesReportCopyWith<SalesReport> get copyWith => _$SalesReportCopyWithImpl<SalesReport>(this as SalesReport, _$identity);

  /// Serializes this SalesReport to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SalesReport&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other.paymentBreakdown, paymentBreakdown)&&const DeepCollectionEquality().equals(other.orderTypeBreakdown, orderTypeBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,date,totalOrders,grossSales,netSales,taxCollected,totalDiscounts,const DeepCollectionEquality().hash(paymentBreakdown),const DeepCollectionEquality().hash(orderTypeBreakdown));

@override
String toString() {
  return 'SalesReport(storeId: $storeId, storeName: $storeName, date: $date, totalOrders: $totalOrders, grossSales: $grossSales, netSales: $netSales, taxCollected: $taxCollected, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown, orderTypeBreakdown: $orderTypeBreakdown)';
}


}

/// @nodoc
abstract mixin class $SalesReportCopyWith<$Res>  {
  factory $SalesReportCopyWith(SalesReport value, $Res Function(SalesReport) _then) = _$SalesReportCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'store_name') String? storeName, String? date,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown
});




}
/// @nodoc
class _$SalesReportCopyWithImpl<$Res>
    implements $SalesReportCopyWith<$Res> {
  _$SalesReportCopyWithImpl(this._self, this._then);

  final SalesReport _self;
  final $Res Function(SalesReport) _then;

/// Create a copy of SalesReport
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? storeName = freezed,Object? date = freezed,Object? totalOrders = null,Object? grossSales = null,Object? netSales = null,Object? taxCollected = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,Object? orderTypeBreakdown = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,taxCollected: null == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self.paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,orderTypeBreakdown: null == orderTypeBreakdown ? _self.orderTypeBreakdown : orderTypeBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [SalesReport].
extension SalesReportPatterns on SalesReport {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SalesReport value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SalesReport() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SalesReport value)  $default,){
final _that = this;
switch (_that) {
case _SalesReport():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SalesReport value)?  $default,){
final _that = this;
switch (_that) {
case _SalesReport() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String? storeName,  String? date, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SalesReport() when $default != null:
return $default(_that.storeId,_that.storeName,_that.date,_that.totalOrders,_that.grossSales,_that.netSales,_that.taxCollected,_that.totalDiscounts,_that.paymentBreakdown,_that.orderTypeBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String? storeName,  String? date, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown)  $default,) {final _that = this;
switch (_that) {
case _SalesReport():
return $default(_that.storeId,_that.storeName,_that.date,_that.totalOrders,_that.grossSales,_that.netSales,_that.taxCollected,_that.totalDiscounts,_that.paymentBreakdown,_that.orderTypeBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String? storeName,  String? date, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown, @JsonKey(name: 'order_type_breakdown')  Map<String, dynamic> orderTypeBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _SalesReport() when $default != null:
return $default(_that.storeId,_that.storeName,_that.date,_that.totalOrders,_that.grossSales,_that.netSales,_that.taxCollected,_that.totalDiscounts,_that.paymentBreakdown,_that.orderTypeBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SalesReport implements SalesReport {
  const _SalesReport({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'store_name') this.storeName, this.date, @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'gross_sales') this.grossSales = 0, @JsonKey(name: 'net_sales') this.netSales = 0, @JsonKey(name: 'tax_collected') this.taxCollected = 0, @JsonKey(name: 'total_discounts') this.totalDiscounts = 0, @JsonKey(name: 'payment_breakdown') final  Map<String, double> paymentBreakdown = const {}, @JsonKey(name: 'order_type_breakdown') final  Map<String, dynamic> orderTypeBreakdown = const {}}): _paymentBreakdown = paymentBreakdown,_orderTypeBreakdown = orderTypeBreakdown;
  factory _SalesReport.fromJson(Map<String, dynamic> json) => _$SalesReportFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'store_name') final  String? storeName;
@override final  String? date;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override@JsonKey(name: 'gross_sales') final  double grossSales;
@override@JsonKey(name: 'net_sales') final  double netSales;
@override@JsonKey(name: 'tax_collected') final  double taxCollected;
@override@JsonKey(name: 'total_discounts') final  double totalDiscounts;
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


/// Create a copy of SalesReport
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalesReportCopyWith<_SalesReport> get copyWith => __$SalesReportCopyWithImpl<_SalesReport>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SalesReportToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SalesReport&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.date, date) || other.date == date)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other._paymentBreakdown, _paymentBreakdown)&&const DeepCollectionEquality().equals(other._orderTypeBreakdown, _orderTypeBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,date,totalOrders,grossSales,netSales,taxCollected,totalDiscounts,const DeepCollectionEquality().hash(_paymentBreakdown),const DeepCollectionEquality().hash(_orderTypeBreakdown));

@override
String toString() {
  return 'SalesReport(storeId: $storeId, storeName: $storeName, date: $date, totalOrders: $totalOrders, grossSales: $grossSales, netSales: $netSales, taxCollected: $taxCollected, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown, orderTypeBreakdown: $orderTypeBreakdown)';
}


}

/// @nodoc
abstract mixin class _$SalesReportCopyWith<$Res> implements $SalesReportCopyWith<$Res> {
  factory _$SalesReportCopyWith(_SalesReport value, $Res Function(_SalesReport) _then) = __$SalesReportCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'store_name') String? storeName, String? date,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown,@JsonKey(name: 'order_type_breakdown') Map<String, dynamic> orderTypeBreakdown
});




}
/// @nodoc
class __$SalesReportCopyWithImpl<$Res>
    implements _$SalesReportCopyWith<$Res> {
  __$SalesReportCopyWithImpl(this._self, this._then);

  final _SalesReport _self;
  final $Res Function(_SalesReport) _then;

/// Create a copy of SalesReport
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? storeName = freezed,Object? date = freezed,Object? totalOrders = null,Object? grossSales = null,Object? netSales = null,Object? taxCollected = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,Object? orderTypeBreakdown = null,}) {
  return _then(_SalesReport(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,taxCollected: null == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self._paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,orderTypeBreakdown: null == orderTypeBreakdown ? _self._orderTypeBreakdown : orderTypeBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
