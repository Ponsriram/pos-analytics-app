// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InventoryItem {

 String get id;@JsonKey(name: 'store_id') String get storeId; String get name; String? get sku; String? get category;@JsonKey(name: 'unit_id') String? get unitId;@JsonKey(name: 'min_stock') double get minStock;@JsonKey(name: 'max_stock') double get maxStock;@JsonKey(name: 'reorder_level') double get reorderLevel;@JsonKey(name: 'reorder_quantity') double get reorderQuantity;@JsonKey(name: 'last_purchase_price') double get lastPurchasePrice;@JsonKey(name: 'average_cost') double get averageCost;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'created_at') DateTime? get createdAt;
/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InventoryItemCopyWith<InventoryItem> get copyWith => _$InventoryItemCopyWithImpl<InventoryItem>(this as InventoryItem, _$identity);

  /// Serializes this InventoryItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $InventoryItemCopyWith<$Res>  {
  factory $InventoryItemCopyWith(InventoryItem value, $Res Function(InventoryItem) _then) = _$InventoryItemCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double maxStock,@JsonKey(name: 'reorder_level') double reorderLevel,@JsonKey(name: 'reorder_quantity') double reorderQuantity,@JsonKey(name: 'last_purchase_price') double lastPurchasePrice,@JsonKey(name: 'average_cost') double averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class _$InventoryItemCopyWithImpl<$Res>
    implements $InventoryItemCopyWith<$Res> {
  _$InventoryItemCopyWithImpl(this._self, this._then);

  final InventoryItem _self;
  final $Res Function(InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = null,Object? maxStock = null,Object? reorderLevel = null,Object? reorderQuantity = null,Object? lastPurchasePrice = null,Object? averageCost = null,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: null == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double,reorderLevel: null == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double,reorderQuantity: null == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double,lastPurchasePrice: null == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double,averageCost: null == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [InventoryItem].
extension InventoryItemPatterns on InventoryItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InventoryItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InventoryItem value)  $default,){
final _that = this;
switch (_that) {
case _InventoryItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InventoryItem value)?  $default,){
final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double maxStock, @JsonKey(name: 'reorder_level')  double reorderLevel, @JsonKey(name: 'reorder_quantity')  double reorderQuantity, @JsonKey(name: 'last_purchase_price')  double lastPurchasePrice, @JsonKey(name: 'average_cost')  double averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double maxStock, @JsonKey(name: 'reorder_level')  double reorderLevel, @JsonKey(name: 'reorder_quantity')  double reorderQuantity, @JsonKey(name: 'last_purchase_price')  double lastPurchasePrice, @JsonKey(name: 'average_cost')  double averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _InventoryItem():
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'store_id')  String storeId,  String name,  String? sku,  String? category, @JsonKey(name: 'unit_id')  String? unitId, @JsonKey(name: 'min_stock')  double minStock, @JsonKey(name: 'max_stock')  double maxStock, @JsonKey(name: 'reorder_level')  double reorderLevel, @JsonKey(name: 'reorder_quantity')  double reorderQuantity, @JsonKey(name: 'last_purchase_price')  double lastPurchasePrice, @JsonKey(name: 'average_cost')  double averageCost, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'created_at')  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _InventoryItem() when $default != null:
return $default(_that.id,_that.storeId,_that.name,_that.sku,_that.category,_that.unitId,_that.minStock,_that.maxStock,_that.reorderLevel,_that.reorderQuantity,_that.lastPurchasePrice,_that.averageCost,_that.isActive,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InventoryItem implements InventoryItem {
  const _InventoryItem({required this.id, @JsonKey(name: 'store_id') required this.storeId, required this.name, this.sku, this.category, @JsonKey(name: 'unit_id') this.unitId, @JsonKey(name: 'min_stock') this.minStock = 0, @JsonKey(name: 'max_stock') this.maxStock = 0, @JsonKey(name: 'reorder_level') this.reorderLevel = 0, @JsonKey(name: 'reorder_quantity') this.reorderQuantity = 0, @JsonKey(name: 'last_purchase_price') this.lastPurchasePrice = 0, @JsonKey(name: 'average_cost') this.averageCost = 0, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'created_at') this.createdAt});
  factory _InventoryItem.fromJson(Map<String, dynamic> json) => _$InventoryItemFromJson(json);

@override final  String id;
@override@JsonKey(name: 'store_id') final  String storeId;
@override final  String name;
@override final  String? sku;
@override final  String? category;
@override@JsonKey(name: 'unit_id') final  String? unitId;
@override@JsonKey(name: 'min_stock') final  double minStock;
@override@JsonKey(name: 'max_stock') final  double maxStock;
@override@JsonKey(name: 'reorder_level') final  double reorderLevel;
@override@JsonKey(name: 'reorder_quantity') final  double reorderQuantity;
@override@JsonKey(name: 'last_purchase_price') final  double lastPurchasePrice;
@override@JsonKey(name: 'average_cost') final  double averageCost;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InventoryItemCopyWith<_InventoryItem> get copyWith => __$InventoryItemCopyWithImpl<_InventoryItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InventoryItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InventoryItem&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.name, name) || other.name == name)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.category, category) || other.category == category)&&(identical(other.unitId, unitId) || other.unitId == unitId)&&(identical(other.minStock, minStock) || other.minStock == minStock)&&(identical(other.maxStock, maxStock) || other.maxStock == maxStock)&&(identical(other.reorderLevel, reorderLevel) || other.reorderLevel == reorderLevel)&&(identical(other.reorderQuantity, reorderQuantity) || other.reorderQuantity == reorderQuantity)&&(identical(other.lastPurchasePrice, lastPurchasePrice) || other.lastPurchasePrice == lastPurchasePrice)&&(identical(other.averageCost, averageCost) || other.averageCost == averageCost)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,name,sku,category,unitId,minStock,maxStock,reorderLevel,reorderQuantity,lastPurchasePrice,averageCost,isActive,createdAt);

@override
String toString() {
  return 'InventoryItem(id: $id, storeId: $storeId, name: $name, sku: $sku, category: $category, unitId: $unitId, minStock: $minStock, maxStock: $maxStock, reorderLevel: $reorderLevel, reorderQuantity: $reorderQuantity, lastPurchasePrice: $lastPurchasePrice, averageCost: $averageCost, isActive: $isActive, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$InventoryItemCopyWith<$Res> implements $InventoryItemCopyWith<$Res> {
  factory _$InventoryItemCopyWith(_InventoryItem value, $Res Function(_InventoryItem) _then) = __$InventoryItemCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'store_id') String storeId, String name, String? sku, String? category,@JsonKey(name: 'unit_id') String? unitId,@JsonKey(name: 'min_stock') double minStock,@JsonKey(name: 'max_stock') double maxStock,@JsonKey(name: 'reorder_level') double reorderLevel,@JsonKey(name: 'reorder_quantity') double reorderQuantity,@JsonKey(name: 'last_purchase_price') double lastPurchasePrice,@JsonKey(name: 'average_cost') double averageCost,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'created_at') DateTime? createdAt
});




}
/// @nodoc
class __$InventoryItemCopyWithImpl<$Res>
    implements _$InventoryItemCopyWith<$Res> {
  __$InventoryItemCopyWithImpl(this._self, this._then);

  final _InventoryItem _self;
  final $Res Function(_InventoryItem) _then;

/// Create a copy of InventoryItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? name = null,Object? sku = freezed,Object? category = freezed,Object? unitId = freezed,Object? minStock = null,Object? maxStock = null,Object? reorderLevel = null,Object? reorderQuantity = null,Object? lastPurchasePrice = null,Object? averageCost = null,Object? isActive = null,Object? createdAt = freezed,}) {
  return _then(_InventoryItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,sku: freezed == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,unitId: freezed == unitId ? _self.unitId : unitId // ignore: cast_nullable_to_non_nullable
as String?,minStock: null == minStock ? _self.minStock : minStock // ignore: cast_nullable_to_non_nullable
as double,maxStock: null == maxStock ? _self.maxStock : maxStock // ignore: cast_nullable_to_non_nullable
as double,reorderLevel: null == reorderLevel ? _self.reorderLevel : reorderLevel // ignore: cast_nullable_to_non_nullable
as double,reorderQuantity: null == reorderQuantity ? _self.reorderQuantity : reorderQuantity // ignore: cast_nullable_to_non_nullable
as double,lastPurchasePrice: null == lastPurchasePrice ? _self.lastPurchasePrice : lastPurchasePrice // ignore: cast_nullable_to_non_nullable
as double,averageCost: null == averageCost ? _self.averageCost : averageCost // ignore: cast_nullable_to_non_nullable
as double,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
