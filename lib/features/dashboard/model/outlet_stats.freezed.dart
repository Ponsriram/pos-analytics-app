// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outlet_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OutletStats {

@JsonKey(name: 'store_id') String get storeId;@JsonKey(name: 'store_name') String get storeName;@JsonKey(name: 'total_revenue') double get totalRevenue;@JsonKey(name: 'total_orders') int get totalOrders;@JsonKey(name: 'tax_collected') double get taxCollected;@JsonKey(name: 'gross_sales') double get grossSales;@JsonKey(name: 'net_sales') double get netSales;@JsonKey(name: 'total_discounts') double get totalDiscounts;@JsonKey(name: 'payment_breakdown') Map<String, double> get paymentBreakdown;
/// Create a copy of OutletStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutletStatsCopyWith<OutletStats> get copyWith => _$OutletStatsCopyWithImpl<OutletStats>(this as OutletStats, _$identity);

  /// Serializes this OutletStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutletStats&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other.paymentBreakdown, paymentBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,totalRevenue,totalOrders,taxCollected,grossSales,netSales,totalDiscounts,const DeepCollectionEquality().hash(paymentBreakdown));

@override
String toString() {
  return 'OutletStats(storeId: $storeId, storeName: $storeName, totalRevenue: $totalRevenue, totalOrders: $totalOrders, taxCollected: $taxCollected, grossSales: $grossSales, netSales: $netSales, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown)';
}


}

/// @nodoc
abstract mixin class $OutletStatsCopyWith<$Res>  {
  factory $OutletStatsCopyWith(OutletStats value, $Res Function(OutletStats) _then) = _$OutletStatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'total_revenue') double totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown
});




}
/// @nodoc
class _$OutletStatsCopyWithImpl<$Res>
    implements $OutletStatsCopyWith<$Res> {
  _$OutletStatsCopyWithImpl(this._self, this._then);

  final OutletStats _self;
  final $Res Function(OutletStats) _then;

/// Create a copy of OutletStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeId = null,Object? storeName = null,Object? totalRevenue = null,Object? totalOrders = null,Object? taxCollected = null,Object? grossSales = null,Object? netSales = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,}) {
  return _then(_self.copyWith(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [OutletStats].
extension OutletStatsPatterns on OutletStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutletStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutletStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutletStats value)  $default,){
final _that = this;
switch (_that) {
case _OutletStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutletStats value)?  $default,){
final _that = this;
switch (_that) {
case _OutletStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String storeName, @JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutletStats() when $default != null:
return $default(_that.storeId,_that.storeName,_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String storeName, @JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)  $default,) {final _that = this;
switch (_that) {
case _OutletStats():
return $default(_that.storeId,_that.storeName,_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_id')  String storeId, @JsonKey(name: 'store_name')  String storeName, @JsonKey(name: 'total_revenue')  double totalRevenue, @JsonKey(name: 'total_orders')  int totalOrders, @JsonKey(name: 'tax_collected')  double taxCollected, @JsonKey(name: 'gross_sales')  double grossSales, @JsonKey(name: 'net_sales')  double netSales, @JsonKey(name: 'total_discounts')  double totalDiscounts, @JsonKey(name: 'payment_breakdown')  Map<String, double> paymentBreakdown)?  $default,) {final _that = this;
switch (_that) {
case _OutletStats() when $default != null:
return $default(_that.storeId,_that.storeName,_that.totalRevenue,_that.totalOrders,_that.taxCollected,_that.grossSales,_that.netSales,_that.totalDiscounts,_that.paymentBreakdown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutletStats implements OutletStats {
  const _OutletStats({@JsonKey(name: 'store_id') required this.storeId, @JsonKey(name: 'store_name') required this.storeName, @JsonKey(name: 'total_revenue') this.totalRevenue = 0, @JsonKey(name: 'total_orders') this.totalOrders = 0, @JsonKey(name: 'tax_collected') this.taxCollected = 0, @JsonKey(name: 'gross_sales') this.grossSales = 0, @JsonKey(name: 'net_sales') this.netSales = 0, @JsonKey(name: 'total_discounts') this.totalDiscounts = 0, @JsonKey(name: 'payment_breakdown') final  Map<String, double> paymentBreakdown = const {}}): _paymentBreakdown = paymentBreakdown;
  factory _OutletStats.fromJson(Map<String, dynamic> json) => _$OutletStatsFromJson(json);

@override@JsonKey(name: 'store_id') final  String storeId;
@override@JsonKey(name: 'store_name') final  String storeName;
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


/// Create a copy of OutletStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutletStatsCopyWith<_OutletStats> get copyWith => __$OutletStatsCopyWithImpl<_OutletStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutletStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutletStats&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.totalRevenue, totalRevenue) || other.totalRevenue == totalRevenue)&&(identical(other.totalOrders, totalOrders) || other.totalOrders == totalOrders)&&(identical(other.taxCollected, taxCollected) || other.taxCollected == taxCollected)&&(identical(other.grossSales, grossSales) || other.grossSales == grossSales)&&(identical(other.netSales, netSales) || other.netSales == netSales)&&(identical(other.totalDiscounts, totalDiscounts) || other.totalDiscounts == totalDiscounts)&&const DeepCollectionEquality().equals(other._paymentBreakdown, _paymentBreakdown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeId,storeName,totalRevenue,totalOrders,taxCollected,grossSales,netSales,totalDiscounts,const DeepCollectionEquality().hash(_paymentBreakdown));

@override
String toString() {
  return 'OutletStats(storeId: $storeId, storeName: $storeName, totalRevenue: $totalRevenue, totalOrders: $totalOrders, taxCollected: $taxCollected, grossSales: $grossSales, netSales: $netSales, totalDiscounts: $totalDiscounts, paymentBreakdown: $paymentBreakdown)';
}


}

/// @nodoc
abstract mixin class _$OutletStatsCopyWith<$Res> implements $OutletStatsCopyWith<$Res> {
  factory _$OutletStatsCopyWith(_OutletStats value, $Res Function(_OutletStats) _then) = __$OutletStatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_id') String storeId,@JsonKey(name: 'store_name') String storeName,@JsonKey(name: 'total_revenue') double totalRevenue,@JsonKey(name: 'total_orders') int totalOrders,@JsonKey(name: 'tax_collected') double taxCollected,@JsonKey(name: 'gross_sales') double grossSales,@JsonKey(name: 'net_sales') double netSales,@JsonKey(name: 'total_discounts') double totalDiscounts,@JsonKey(name: 'payment_breakdown') Map<String, double> paymentBreakdown
});




}
/// @nodoc
class __$OutletStatsCopyWithImpl<$Res>
    implements _$OutletStatsCopyWith<$Res> {
  __$OutletStatsCopyWithImpl(this._self, this._then);

  final _OutletStats _self;
  final $Res Function(_OutletStats) _then;

/// Create a copy of OutletStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeId = null,Object? storeName = null,Object? totalRevenue = null,Object? totalOrders = null,Object? taxCollected = null,Object? grossSales = null,Object? netSales = null,Object? totalDiscounts = null,Object? paymentBreakdown = null,}) {
  return _then(_OutletStats(
storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,totalRevenue: null == totalRevenue ? _self.totalRevenue : totalRevenue // ignore: cast_nullable_to_non_nullable
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


/// @nodoc
mixin _$OutletAnalyticsResponse {

 List<OutletStats> get outlets; DashboardStats get totals;
/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutletAnalyticsResponseCopyWith<OutletAnalyticsResponse> get copyWith => _$OutletAnalyticsResponseCopyWithImpl<OutletAnalyticsResponse>(this as OutletAnalyticsResponse, _$identity);

  /// Serializes this OutletAnalyticsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutletAnalyticsResponse&&const DeepCollectionEquality().equals(other.outlets, outlets)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(outlets),totals);

@override
String toString() {
  return 'OutletAnalyticsResponse(outlets: $outlets, totals: $totals)';
}


}

/// @nodoc
abstract mixin class $OutletAnalyticsResponseCopyWith<$Res>  {
  factory $OutletAnalyticsResponseCopyWith(OutletAnalyticsResponse value, $Res Function(OutletAnalyticsResponse) _then) = _$OutletAnalyticsResponseCopyWithImpl;
@useResult
$Res call({
 List<OutletStats> outlets, DashboardStats totals
});


$DashboardStatsCopyWith<$Res> get totals;

}
/// @nodoc
class _$OutletAnalyticsResponseCopyWithImpl<$Res>
    implements $OutletAnalyticsResponseCopyWith<$Res> {
  _$OutletAnalyticsResponseCopyWithImpl(this._self, this._then);

  final OutletAnalyticsResponse _self;
  final $Res Function(OutletAnalyticsResponse) _then;

/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? outlets = null,Object? totals = null,}) {
  return _then(_self.copyWith(
outlets: null == outlets ? _self.outlets : outlets // ignore: cast_nullable_to_non_nullable
as List<OutletStats>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as DashboardStats,
  ));
}
/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<$Res> get totals {
  
  return $DashboardStatsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}


/// Adds pattern-matching-related methods to [OutletAnalyticsResponse].
extension OutletAnalyticsResponsePatterns on OutletAnalyticsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutletAnalyticsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutletAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutletAnalyticsResponse value)  $default,){
final _that = this;
switch (_that) {
case _OutletAnalyticsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutletAnalyticsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OutletAnalyticsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<OutletStats> outlets,  DashboardStats totals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutletAnalyticsResponse() when $default != null:
return $default(_that.outlets,_that.totals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<OutletStats> outlets,  DashboardStats totals)  $default,) {final _that = this;
switch (_that) {
case _OutletAnalyticsResponse():
return $default(_that.outlets,_that.totals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<OutletStats> outlets,  DashboardStats totals)?  $default,) {final _that = this;
switch (_that) {
case _OutletAnalyticsResponse() when $default != null:
return $default(_that.outlets,_that.totals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OutletAnalyticsResponse implements OutletAnalyticsResponse {
  const _OutletAnalyticsResponse({required final  List<OutletStats> outlets, required this.totals}): _outlets = outlets;
  factory _OutletAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$OutletAnalyticsResponseFromJson(json);

 final  List<OutletStats> _outlets;
@override List<OutletStats> get outlets {
  if (_outlets is EqualUnmodifiableListView) return _outlets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_outlets);
}

@override final  DashboardStats totals;

/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutletAnalyticsResponseCopyWith<_OutletAnalyticsResponse> get copyWith => __$OutletAnalyticsResponseCopyWithImpl<_OutletAnalyticsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OutletAnalyticsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutletAnalyticsResponse&&const DeepCollectionEquality().equals(other._outlets, _outlets)&&(identical(other.totals, totals) || other.totals == totals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_outlets),totals);

@override
String toString() {
  return 'OutletAnalyticsResponse(outlets: $outlets, totals: $totals)';
}


}

/// @nodoc
abstract mixin class _$OutletAnalyticsResponseCopyWith<$Res> implements $OutletAnalyticsResponseCopyWith<$Res> {
  factory _$OutletAnalyticsResponseCopyWith(_OutletAnalyticsResponse value, $Res Function(_OutletAnalyticsResponse) _then) = __$OutletAnalyticsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<OutletStats> outlets, DashboardStats totals
});


@override $DashboardStatsCopyWith<$Res> get totals;

}
/// @nodoc
class __$OutletAnalyticsResponseCopyWithImpl<$Res>
    implements _$OutletAnalyticsResponseCopyWith<$Res> {
  __$OutletAnalyticsResponseCopyWithImpl(this._self, this._then);

  final _OutletAnalyticsResponse _self;
  final $Res Function(_OutletAnalyticsResponse) _then;

/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? outlets = null,Object? totals = null,}) {
  return _then(_OutletAnalyticsResponse(
outlets: null == outlets ? _self._outlets : outlets // ignore: cast_nullable_to_non_nullable
as List<OutletStats>,totals: null == totals ? _self.totals : totals // ignore: cast_nullable_to_non_nullable
as DashboardStats,
  ));
}

/// Create a copy of OutletAnalyticsResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<$Res> get totals {
  
  return $DashboardStatsCopyWith<$Res>(_self.totals, (value) {
    return _then(_self.copyWith(totals: value));
  });
}
}

// dart format on
