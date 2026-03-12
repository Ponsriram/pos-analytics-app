// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminGroup {

 String get id; String get name;@JsonKey(name: 'group_type') String get groupType; List<String> get permissions;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'store_ids') List<String> get storeIds;@JsonKey(name: 'member_user_ids') List<String> get memberUserIds;
/// Create a copy of AdminGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminGroupCopyWith<AdminGroup> get copyWith => _$AdminGroupCopyWithImpl<AdminGroup>(this as AdminGroup, _$identity);

  /// Serializes this AdminGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupType, groupType) || other.groupType == groupType)&&const DeepCollectionEquality().equals(other.permissions, permissions)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other.storeIds, storeIds)&&const DeepCollectionEquality().equals(other.memberUserIds, memberUserIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupType,const DeepCollectionEquality().hash(permissions),isActive,const DeepCollectionEquality().hash(storeIds),const DeepCollectionEquality().hash(memberUserIds));

@override
String toString() {
  return 'AdminGroup(id: $id, name: $name, groupType: $groupType, permissions: $permissions, isActive: $isActive, storeIds: $storeIds, memberUserIds: $memberUserIds)';
}


}

/// @nodoc
abstract mixin class $AdminGroupCopyWith<$Res>  {
  factory $AdminGroupCopyWith(AdminGroup value, $Res Function(AdminGroup) _then) = _$AdminGroupCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'group_type') String groupType, List<String> permissions,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'store_ids') List<String> storeIds,@JsonKey(name: 'member_user_ids') List<String> memberUserIds
});




}
/// @nodoc
class _$AdminGroupCopyWithImpl<$Res>
    implements $AdminGroupCopyWith<$Res> {
  _$AdminGroupCopyWithImpl(this._self, this._then);

  final AdminGroup _self;
  final $Res Function(AdminGroup) _then;

/// Create a copy of AdminGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? groupType = null,Object? permissions = null,Object? isActive = null,Object? storeIds = null,Object? memberUserIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupType: null == groupType ? _self.groupType : groupType // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,storeIds: null == storeIds ? _self.storeIds : storeIds // ignore: cast_nullable_to_non_nullable
as List<String>,memberUserIds: null == memberUserIds ? _self.memberUserIds : memberUserIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminGroup].
extension AdminGroupPatterns on AdminGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminGroup value)  $default,){
final _that = this;
switch (_that) {
case _AdminGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminGroup value)?  $default,){
final _that = this;
switch (_that) {
case _AdminGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'group_type')  String groupType,  List<String> permissions, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds, @JsonKey(name: 'member_user_ids')  List<String> memberUserIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminGroup() when $default != null:
return $default(_that.id,_that.name,_that.groupType,_that.permissions,_that.isActive,_that.storeIds,_that.memberUserIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'group_type')  String groupType,  List<String> permissions, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds, @JsonKey(name: 'member_user_ids')  List<String> memberUserIds)  $default,) {final _that = this;
switch (_that) {
case _AdminGroup():
return $default(_that.id,_that.name,_that.groupType,_that.permissions,_that.isActive,_that.storeIds,_that.memberUserIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'group_type')  String groupType,  List<String> permissions, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'store_ids')  List<String> storeIds, @JsonKey(name: 'member_user_ids')  List<String> memberUserIds)?  $default,) {final _that = this;
switch (_that) {
case _AdminGroup() when $default != null:
return $default(_that.id,_that.name,_that.groupType,_that.permissions,_that.isActive,_that.storeIds,_that.memberUserIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminGroup implements AdminGroup {
  const _AdminGroup({required this.id, required this.name, @JsonKey(name: 'group_type') this.groupType = 'admin', final  List<String> permissions = const [], @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'store_ids') final  List<String> storeIds = const [], @JsonKey(name: 'member_user_ids') final  List<String> memberUserIds = const []}): _permissions = permissions,_storeIds = storeIds,_memberUserIds = memberUserIds;
  factory _AdminGroup.fromJson(Map<String, dynamic> json) => _$AdminGroupFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'group_type') final  String groupType;
 final  List<String> _permissions;
@override@JsonKey() List<String> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}

@override@JsonKey(name: 'is_active') final  bool isActive;
 final  List<String> _storeIds;
@override@JsonKey(name: 'store_ids') List<String> get storeIds {
  if (_storeIds is EqualUnmodifiableListView) return _storeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_storeIds);
}

 final  List<String> _memberUserIds;
@override@JsonKey(name: 'member_user_ids') List<String> get memberUserIds {
  if (_memberUserIds is EqualUnmodifiableListView) return _memberUserIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberUserIds);
}


/// Create a copy of AdminGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminGroupCopyWith<_AdminGroup> get copyWith => __$AdminGroupCopyWithImpl<_AdminGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.groupType, groupType) || other.groupType == groupType)&&const DeepCollectionEquality().equals(other._permissions, _permissions)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&const DeepCollectionEquality().equals(other._storeIds, _storeIds)&&const DeepCollectionEquality().equals(other._memberUserIds, _memberUserIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,groupType,const DeepCollectionEquality().hash(_permissions),isActive,const DeepCollectionEquality().hash(_storeIds),const DeepCollectionEquality().hash(_memberUserIds));

@override
String toString() {
  return 'AdminGroup(id: $id, name: $name, groupType: $groupType, permissions: $permissions, isActive: $isActive, storeIds: $storeIds, memberUserIds: $memberUserIds)';
}


}

/// @nodoc
abstract mixin class _$AdminGroupCopyWith<$Res> implements $AdminGroupCopyWith<$Res> {
  factory _$AdminGroupCopyWith(_AdminGroup value, $Res Function(_AdminGroup) _then) = __$AdminGroupCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'group_type') String groupType, List<String> permissions,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'store_ids') List<String> storeIds,@JsonKey(name: 'member_user_ids') List<String> memberUserIds
});




}
/// @nodoc
class __$AdminGroupCopyWithImpl<$Res>
    implements _$AdminGroupCopyWith<$Res> {
  __$AdminGroupCopyWithImpl(this._self, this._then);

  final _AdminGroup _self;
  final $Res Function(_AdminGroup) _then;

/// Create a copy of AdminGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? groupType = null,Object? permissions = null,Object? isActive = null,Object? storeIds = null,Object? memberUserIds = null,}) {
  return _then(_AdminGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,groupType: null == groupType ? _self.groupType : groupType // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<String>,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,storeIds: null == storeIds ? _self._storeIds : storeIds // ignore: cast_nullable_to_non_nullable
as List<String>,memberUserIds: null == memberUserIds ? _self._memberUserIds : memberUserIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
