// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'running_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RunningOrderCategory {

 String get name; int get orderCount; double get totalAmount; String get status;
/// Create a copy of RunningOrderCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunningOrderCategoryCopyWith<RunningOrderCategory> get copyWith => _$RunningOrderCategoryCopyWithImpl<RunningOrderCategory>(this as RunningOrderCategory, _$identity);

  /// Serializes this RunningOrderCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RunningOrderCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,orderCount,totalAmount,status);

@override
String toString() {
  return 'RunningOrderCategory(name: $name, orderCount: $orderCount, totalAmount: $totalAmount, status: $status)';
}


}

/// @nodoc
abstract mixin class $RunningOrderCategoryCopyWith<$Res>  {
  factory $RunningOrderCategoryCopyWith(RunningOrderCategory value, $Res Function(RunningOrderCategory) _then) = _$RunningOrderCategoryCopyWithImpl;
@useResult
$Res call({
 String name, int orderCount, double totalAmount, String status
});




}
/// @nodoc
class _$RunningOrderCategoryCopyWithImpl<$Res>
    implements $RunningOrderCategoryCopyWith<$Res> {
  _$RunningOrderCategoryCopyWithImpl(this._self, this._then);

  final RunningOrderCategory _self;
  final $Res Function(RunningOrderCategory) _then;

/// Create a copy of RunningOrderCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? orderCount = null,Object? totalAmount = null,Object? status = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RunningOrderCategory].
extension RunningOrderCategoryPatterns on RunningOrderCategory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RunningOrderCategory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RunningOrderCategory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RunningOrderCategory value)  $default,){
final _that = this;
switch (_that) {
case _RunningOrderCategory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RunningOrderCategory value)?  $default,){
final _that = this;
switch (_that) {
case _RunningOrderCategory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int orderCount,  double totalAmount,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RunningOrderCategory() when $default != null:
return $default(_that.name,_that.orderCount,_that.totalAmount,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int orderCount,  double totalAmount,  String status)  $default,) {final _that = this;
switch (_that) {
case _RunningOrderCategory():
return $default(_that.name,_that.orderCount,_that.totalAmount,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int orderCount,  double totalAmount,  String status)?  $default,) {final _that = this;
switch (_that) {
case _RunningOrderCategory() when $default != null:
return $default(_that.name,_that.orderCount,_that.totalAmount,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RunningOrderCategory implements RunningOrderCategory {
  const _RunningOrderCategory({required this.name, this.orderCount = 0, this.totalAmount = 0, this.status = 'active'});
  factory _RunningOrderCategory.fromJson(Map<String, dynamic> json) => _$RunningOrderCategoryFromJson(json);

@override final  String name;
@override@JsonKey() final  int orderCount;
@override@JsonKey() final  double totalAmount;
@override@JsonKey() final  String status;

/// Create a copy of RunningOrderCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RunningOrderCategoryCopyWith<_RunningOrderCategory> get copyWith => __$RunningOrderCategoryCopyWithImpl<_RunningOrderCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RunningOrderCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RunningOrderCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.orderCount, orderCount) || other.orderCount == orderCount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,orderCount,totalAmount,status);

@override
String toString() {
  return 'RunningOrderCategory(name: $name, orderCount: $orderCount, totalAmount: $totalAmount, status: $status)';
}


}

/// @nodoc
abstract mixin class _$RunningOrderCategoryCopyWith<$Res> implements $RunningOrderCategoryCopyWith<$Res> {
  factory _$RunningOrderCategoryCopyWith(_RunningOrderCategory value, $Res Function(_RunningOrderCategory) _then) = __$RunningOrderCategoryCopyWithImpl;
@override @useResult
$Res call({
 String name, int orderCount, double totalAmount, String status
});




}
/// @nodoc
class __$RunningOrderCategoryCopyWithImpl<$Res>
    implements _$RunningOrderCategoryCopyWith<$Res> {
  __$RunningOrderCategoryCopyWithImpl(this._self, this._then);

  final _RunningOrderCategory _self;
  final $Res Function(_RunningOrderCategory) _then;

/// Create a copy of RunningOrderCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? orderCount = null,Object? totalAmount = null,Object? status = null,}) {
  return _then(_RunningOrderCategory(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,orderCount: null == orderCount ? _self.orderCount : orderCount // ignore: cast_nullable_to_non_nullable
as int,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RunningOrdersSummary {

 List<RunningOrderCategory> get categories; int get totalOrderCount; int get totalTableCount; double get totalEstimatedAmount;
/// Create a copy of RunningOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RunningOrdersSummaryCopyWith<RunningOrdersSummary> get copyWith => _$RunningOrdersSummaryCopyWithImpl<RunningOrdersSummary>(this as RunningOrdersSummary, _$identity);

  /// Serializes this RunningOrdersSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RunningOrdersSummary&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.totalOrderCount, totalOrderCount) || other.totalOrderCount == totalOrderCount)&&(identical(other.totalTableCount, totalTableCount) || other.totalTableCount == totalTableCount)&&(identical(other.totalEstimatedAmount, totalEstimatedAmount) || other.totalEstimatedAmount == totalEstimatedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),totalOrderCount,totalTableCount,totalEstimatedAmount);

@override
String toString() {
  return 'RunningOrdersSummary(categories: $categories, totalOrderCount: $totalOrderCount, totalTableCount: $totalTableCount, totalEstimatedAmount: $totalEstimatedAmount)';
}


}

/// @nodoc
abstract mixin class $RunningOrdersSummaryCopyWith<$Res>  {
  factory $RunningOrdersSummaryCopyWith(RunningOrdersSummary value, $Res Function(RunningOrdersSummary) _then) = _$RunningOrdersSummaryCopyWithImpl;
@useResult
$Res call({
 List<RunningOrderCategory> categories, int totalOrderCount, int totalTableCount, double totalEstimatedAmount
});




}
/// @nodoc
class _$RunningOrdersSummaryCopyWithImpl<$Res>
    implements $RunningOrdersSummaryCopyWith<$Res> {
  _$RunningOrdersSummaryCopyWithImpl(this._self, this._then);

  final RunningOrdersSummary _self;
  final $Res Function(RunningOrdersSummary) _then;

/// Create a copy of RunningOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? totalOrderCount = null,Object? totalTableCount = null,Object? totalEstimatedAmount = null,}) {
  return _then(_self.copyWith(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<RunningOrderCategory>,totalOrderCount: null == totalOrderCount ? _self.totalOrderCount : totalOrderCount // ignore: cast_nullable_to_non_nullable
as int,totalTableCount: null == totalTableCount ? _self.totalTableCount : totalTableCount // ignore: cast_nullable_to_non_nullable
as int,totalEstimatedAmount: null == totalEstimatedAmount ? _self.totalEstimatedAmount : totalEstimatedAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [RunningOrdersSummary].
extension RunningOrdersSummaryPatterns on RunningOrdersSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RunningOrdersSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RunningOrdersSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RunningOrdersSummary value)  $default,){
final _that = this;
switch (_that) {
case _RunningOrdersSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RunningOrdersSummary value)?  $default,){
final _that = this;
switch (_that) {
case _RunningOrdersSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<RunningOrderCategory> categories,  int totalOrderCount,  int totalTableCount,  double totalEstimatedAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RunningOrdersSummary() when $default != null:
return $default(_that.categories,_that.totalOrderCount,_that.totalTableCount,_that.totalEstimatedAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<RunningOrderCategory> categories,  int totalOrderCount,  int totalTableCount,  double totalEstimatedAmount)  $default,) {final _that = this;
switch (_that) {
case _RunningOrdersSummary():
return $default(_that.categories,_that.totalOrderCount,_that.totalTableCount,_that.totalEstimatedAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<RunningOrderCategory> categories,  int totalOrderCount,  int totalTableCount,  double totalEstimatedAmount)?  $default,) {final _that = this;
switch (_that) {
case _RunningOrdersSummary() when $default != null:
return $default(_that.categories,_that.totalOrderCount,_that.totalTableCount,_that.totalEstimatedAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RunningOrdersSummary implements RunningOrdersSummary {
  const _RunningOrdersSummary({final  List<RunningOrderCategory> categories = const [], this.totalOrderCount = 0, this.totalTableCount = 0, this.totalEstimatedAmount = 0}): _categories = categories;
  factory _RunningOrdersSummary.fromJson(Map<String, dynamic> json) => _$RunningOrdersSummaryFromJson(json);

 final  List<RunningOrderCategory> _categories;
@override@JsonKey() List<RunningOrderCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  int totalOrderCount;
@override@JsonKey() final  int totalTableCount;
@override@JsonKey() final  double totalEstimatedAmount;

/// Create a copy of RunningOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RunningOrdersSummaryCopyWith<_RunningOrdersSummary> get copyWith => __$RunningOrdersSummaryCopyWithImpl<_RunningOrdersSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RunningOrdersSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RunningOrdersSummary&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.totalOrderCount, totalOrderCount) || other.totalOrderCount == totalOrderCount)&&(identical(other.totalTableCount, totalTableCount) || other.totalTableCount == totalTableCount)&&(identical(other.totalEstimatedAmount, totalEstimatedAmount) || other.totalEstimatedAmount == totalEstimatedAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),totalOrderCount,totalTableCount,totalEstimatedAmount);

@override
String toString() {
  return 'RunningOrdersSummary(categories: $categories, totalOrderCount: $totalOrderCount, totalTableCount: $totalTableCount, totalEstimatedAmount: $totalEstimatedAmount)';
}


}

/// @nodoc
abstract mixin class _$RunningOrdersSummaryCopyWith<$Res> implements $RunningOrdersSummaryCopyWith<$Res> {
  factory _$RunningOrdersSummaryCopyWith(_RunningOrdersSummary value, $Res Function(_RunningOrdersSummary) _then) = __$RunningOrdersSummaryCopyWithImpl;
@override @useResult
$Res call({
 List<RunningOrderCategory> categories, int totalOrderCount, int totalTableCount, double totalEstimatedAmount
});




}
/// @nodoc
class __$RunningOrdersSummaryCopyWithImpl<$Res>
    implements _$RunningOrdersSummaryCopyWith<$Res> {
  __$RunningOrdersSummaryCopyWithImpl(this._self, this._then);

  final _RunningOrdersSummary _self;
  final $Res Function(_RunningOrdersSummary) _then;

/// Create a copy of RunningOrdersSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? totalOrderCount = null,Object? totalTableCount = null,Object? totalEstimatedAmount = null,}) {
  return _then(_RunningOrdersSummary(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<RunningOrderCategory>,totalOrderCount: null == totalOrderCount ? _self.totalOrderCount : totalOrderCount // ignore: cast_nullable_to_non_nullable
as int,totalTableCount: null == totalTableCount ? _self.totalTableCount : totalTableCount // ignore: cast_nullable_to_non_nullable
as int,totalEstimatedAmount: null == totalEstimatedAmount ? _self.totalEstimatedAmount : totalEstimatedAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
