// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardStats {

@JsonKey(name: 'total_revenue') double get totalRevenue;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'tax_collected') double get taxCollected;@JsonKey(name: 'gross_sales') double get grossSales;@JsonKey(name: 'net_sales') double get netSales;@JsonKey(name: 'total_discounts') double get totalDiscounts;@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown;
/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<DashboardStats> get copyWith => _$DashboardStatsCopyWithImpl<DashboardStats>(this as DashboardStats, _$identity);

  /// Serializes this DashboardStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStats&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other.paymentBreakdown, paymentBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalOrders,taxCollected,grossSales,netSales,totalDiscounts,const DeepCollectionEquality().hash(paymentBreakdown));

@override
String toString() {
  return 'DashboardStats(totalRevenue: $totalRevenue, totalOrders: $totalOrders, taxCollected: $taxCollected, grossSales: $grossSales, netSales: $netSales, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown)';
}


}

/// @nodoc
abstract mixin class $DashboardStatsCopyWith<$Res>  {
  factory $DashboardStatsCopyWith(DashboardStats value, $Res Function(DashboardStats) _then) = _$DashboardStatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_revenue') double totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown
});




}
/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._self, this._then);

  final DashboardStats _self;
  final $Res Function(DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalRevenue = null,Object? totalOrders = null,Object? taxCollected = null,Object? grossSales = null,Object? netSales = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,}) {
  return _then(_self.copyWith(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,taxCollected: null == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as double,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self.paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStats].
extension DashboardStatsPatterns on DashboardStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)  $default,) {final _that = this;
switch (_that) {
case _DashboardStats():
return $default(_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStats implements DashboardStats {
  const _DashboardStats({@JsonKey(name: 'total_revenue') this.totalRevenue = 0, @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'tax_collected') this.taxCollected = 0, @JsonKey(name: 'gross_sales') this.grossSales = 0, @JsonKey(name: 'net_sales') this.netSales = 0, @JsonKey(name: 'total_discounts') this.totalDiscounts = 0, @JsonKey(name: 'payment_breakdown') final  Map<String, double> paymentBreakdown = const {}}): _paymentBreakdown = paymentBreakdown;
  factory _DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);

@override@JsonKey(name: 'total_revenue') final  double totalRevenue;
@override@JsonKey(name: 'total_orders') final  int totalOrders;
@override@JsonKey(name: 'tax_collected') final  double taxCollected;
@override@JsonKey(name: 'gross_sales') final  double grossSales;
@override@JsonKey(name: 'net_sales') final  double netSales;
@override@JsonKey(name: 'total_discounts') final  double totalDiscounts;
 final  Map<String, double> _paymentBreakdown;
@override@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown {
  if (_paymentBreakdown is EqualUnmodifiableMapView) return _paymentBreakdown;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_paymentBreakdown);
}


/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatsCopyWith<_DashboardStats> get copyWith => __$DashboardStatsCopyWithImpl<_DashboardStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStats&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other._paymentBreakdown, _paymentBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalRevenue,totalOrders,taxCollected,grossSales,netSales,totalDiscounts,const DeepCollectionEquality().hash(_paymentBreakdown));

@override
String toString() {
  return 'DashboardStats(totalRevenue: $totalRevenue, totalOrders: $totalOrders, taxCollected: $taxCollected, grossSales: $grossSales, netSales: $netSales, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatsCopyWith<$Res> implements $DashboardStatsCopyWith<$Res> {
  factory _$DashboardStatsCopyWith(_DashboardStats value, $Res Function(_DashboardStats) _then) = __$DashboardStatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_revenue') double totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown
});




}
/// @nodoc
class __$DashboardStatsCopyWithImpl<$Res>
    implements _$DashboardStatsCopyWith<$Res> {
  __$DashboardStatsCopyWithImpl(this._self, this._then);

  final _DashboardStats _self;
  final $Res Function(_DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalRevenue = null,Object? totalOrders = null,Object? taxCollected = null,Object? grossSales = null,Object? netSales = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,}) {
  return _then(_DashboardStats(
totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
as double,totalOrders: null == totalOrders ? _self.totalOrders : totalOrders // ignore: cast_nullable_to_non_nullable
as int,taxCollected: null == taxCollected ? _self.taxCollected : taxCollected // ignore: cast_nullable_to_non_nullable
as double,grossSales: null == grossSales ? _self.grossSales : grossSales // ignore: cast_nullable_to_non_nullable
as double,netSales: null == netSales ? _self.netSales : netSales // ignore: cast_nullable_to_non_nullable
as double,totalDiscounts: null == totalDiscounts ? _self.totalDiscounts : totalDiscounts // ignore: cast_nullable_to_non_nullable
as double,paymentBreakdown: null == paymentBreakdown ? _self._paymentBreakdown : paymentBreakdown // ignore: cast_nullable_to_non_nullable
as Map<String, double>,
  ));
}


}

// dart format on
