// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoModel {

 String get id; String get name; String get email; bool get isEmailVerified; List<MobileNumber> get mobileNumbers;@JsonKey(name: 'is_2fa_enabled') bool get is2FAEnabled; DateTime? get createdAt; String? get createdBy;
/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<UserInfoModel> get copyWith => _$UserInfoModelCopyWithImpl<UserInfoModel>(this as UserInfoModel, _$identity);

  /// Serializes this UserInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&const DeepCollectionEquality().equals(other.mobileNumbers, mobileNumbers)&&(identical(other.is2FAEnabled, is2FAEnabled) || other.is2FAEnabled == is2FAEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,isEmailVerified,const DeepCollectionEquality().hash(mobileNumbers),is2FAEnabled,createdAt,createdBy);

@override
String toString() {
  return 'UserInfoModel(id: $id, name: $name, email: $email, isEmailVerified: $isEmailVerified, mobileNumbers: $mobileNumbers, is2FAEnabled: $is2FAEnabled, createdAt: $createdAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $UserInfoModelCopyWith<$Res>  {
  factory $UserInfoModelCopyWith(UserInfoModel value, $Res Function(UserInfoModel) _then) = _$UserInfoModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, bool isEmailVerified, List<MobileNumber> mobileNumbers,@JsonKey(name: 'is_2fa_enabled') bool is2FAEnabled, DateTime? createdAt, String? createdBy
});




}
/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._self, this._then);

  final UserInfoModel _self;
  final $Res Function(UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? isEmailVerified = null,Object? mobileNumbers = null,Object? is2FAEnabled = null,Object? createdAt = freezed,Object? createdBy = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,mobileNumbers: null == mobileNumbers ? _self.mobileNumbers : mobileNumbers // ignore: cast_nullable_to_non_nullable
as List<MobileNumber>,is2FAEnabled: null == is2FAEnabled ? _self.is2FAEnabled : is2FAEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoModel].
extension UserInfoModelPatterns on UserInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  bool isEmailVerified,  List<MobileNumber> mobileNumbers, @JsonKey(name: 'is_2fa_enabled')  bool is2FAEnabled,  DateTime? createdAt,  String? createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.isEmailVerified,_that.mobileNumbers,_that.is2FAEnabled,_that.createdAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  bool isEmailVerified,  List<MobileNumber> mobileNumbers, @JsonKey(name: 'is_2fa_enabled')  bool is2FAEnabled,  DateTime? createdAt,  String? createdBy)  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel():
return $default(_that.id,_that.name,_that.email,_that.isEmailVerified,_that.mobileNumbers,_that.is2FAEnabled,_that.createdAt,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  bool isEmailVerified,  List<MobileNumber> mobileNumbers, @JsonKey(name: 'is_2fa_enabled')  bool is2FAEnabled,  DateTime? createdAt,  String? createdBy)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.isEmailVerified,_that.mobileNumbers,_that.is2FAEnabled,_that.createdAt,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoModel implements UserInfoModel {
  const _UserInfoModel({required this.id, required this.name, required this.email, this.isEmailVerified = false, final  List<MobileNumber> mobileNumbers = const [], @JsonKey(name: 'is_2fa_enabled') this.is2FAEnabled = false, this.createdAt, this.createdBy}): _mobileNumbers = mobileNumbers;
  factory _UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override@JsonKey() final  bool isEmailVerified;
 final  List<MobileNumber> _mobileNumbers;
@override@JsonKey() List<MobileNumber> get mobileNumbers {
  if (_mobileNumbers is EqualUnmodifiableListView) return _mobileNumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mobileNumbers);
}

@override@JsonKey(name: 'is_2fa_enabled') final  bool is2FAEnabled;
@override final  DateTime? createdAt;
@override final  String? createdBy;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoModelCopyWith<_UserInfoModel> get copyWith => __$UserInfoModelCopyWithImpl<_UserInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&const DeepCollectionEquality().equals(other._mobileNumbers, _mobileNumbers)&&(identical(other.is2FAEnabled, is2FAEnabled) || other.is2FAEnabled == is2FAEnabled)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,isEmailVerified,const DeepCollectionEquality().hash(_mobileNumbers),is2FAEnabled,createdAt,createdBy);

@override
String toString() {
  return 'UserInfoModel(id: $id, name: $name, email: $email, isEmailVerified: $isEmailVerified, mobileNumbers: $mobileNumbers, is2FAEnabled: $is2FAEnabled, createdAt: $createdAt, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$UserInfoModelCopyWith<$Res> implements $UserInfoModelCopyWith<$Res> {
  factory _$UserInfoModelCopyWith(_UserInfoModel value, $Res Function(_UserInfoModel) _then) = __$UserInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, bool isEmailVerified, List<MobileNumber> mobileNumbers,@JsonKey(name: 'is_2fa_enabled') bool is2FAEnabled, DateTime? createdAt, String? createdBy
});




}
/// @nodoc
class __$UserInfoModelCopyWithImpl<$Res>
    implements _$UserInfoModelCopyWith<$Res> {
  __$UserInfoModelCopyWithImpl(this._self, this._then);

  final _UserInfoModel _self;
  final $Res Function(_UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? isEmailVerified = null,Object? mobileNumbers = null,Object? is2FAEnabled = null,Object? createdAt = freezed,Object? createdBy = freezed,}) {
  return _then(_UserInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as bool,mobileNumbers: null == mobileNumbers ? _self._mobileNumbers : mobileNumbers // ignore: cast_nullable_to_non_nullable
as List<MobileNumber>,is2FAEnabled: null == is2FAEnabled ? _self.is2FAEnabled : is2FAEnabled // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MobileNumber {

 String get id; String get countryCode; String get number; bool get isVerified;
/// Create a copy of MobileNumber
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MobileNumberCopyWith<MobileNumber> get copyWith => _$MobileNumberCopyWithImpl<MobileNumber>(this as MobileNumber, _$identity);

  /// Serializes this MobileNumber to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MobileNumber&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.number, number) || other.number == number)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,number,isVerified);

@override
String toString() {
  return 'MobileNumber(id: $id, countryCode: $countryCode, number: $number, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class $MobileNumberCopyWith<$Res>  {
  factory $MobileNumberCopyWith(MobileNumber value, $Res Function(MobileNumber) _then) = _$MobileNumberCopyWithImpl;
@useResult
$Res call({
 String id, String countryCode, String number, bool isVerified
});




}
/// @nodoc
class _$MobileNumberCopyWithImpl<$Res>
    implements $MobileNumberCopyWith<$Res> {
  _$MobileNumberCopyWithImpl(this._self, this._then);

  final MobileNumber _self;
  final $Res Function(MobileNumber) _then;

/// Create a copy of MobileNumber
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? countryCode = null,Object? number = null,Object? isVerified = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MobileNumber].
extension MobileNumberPatterns on MobileNumber {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MobileNumber value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MobileNumber() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MobileNumber value)  $default,){
final _that = this;
switch (_that) {
case _MobileNumber():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MobileNumber value)?  $default,){
final _that = this;
switch (_that) {
case _MobileNumber() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String countryCode,  String number,  bool isVerified)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MobileNumber() when $default != null:
return $default(_that.id,_that.countryCode,_that.number,_that.isVerified);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String countryCode,  String number,  bool isVerified)  $default,) {final _that = this;
switch (_that) {
case _MobileNumber():
return $default(_that.id,_that.countryCode,_that.number,_that.isVerified);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String countryCode,  String number,  bool isVerified)?  $default,) {final _that = this;
switch (_that) {
case _MobileNumber() when $default != null:
return $default(_that.id,_that.countryCode,_that.number,_that.isVerified);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MobileNumber implements MobileNumber {
  const _MobileNumber({this.id = '', this.countryCode = '+91', required this.number, this.isVerified = false});
  factory _MobileNumber.fromJson(Map<String, dynamic> json) => _$MobileNumberFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String countryCode;
@override final  String number;
@override@JsonKey() final  bool isVerified;

/// Create a copy of MobileNumber
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MobileNumberCopyWith<_MobileNumber> get copyWith => __$MobileNumberCopyWithImpl<_MobileNumber>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MobileNumberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MobileNumber&&(identical(other.id, id) || other.id == id)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.number, number) || other.number == number)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,countryCode,number,isVerified);

@override
String toString() {
  return 'MobileNumber(id: $id, countryCode: $countryCode, number: $number, isVerified: $isVerified)';
}


}

/// @nodoc
abstract mixin class _$MobileNumberCopyWith<$Res> implements $MobileNumberCopyWith<$Res> {
  factory _$MobileNumberCopyWith(_MobileNumber value, $Res Function(_MobileNumber) _then) = __$MobileNumberCopyWithImpl;
@override @useResult
$Res call({
 String id, String countryCode, String number, bool isVerified
});




}
/// @nodoc
class __$MobileNumberCopyWithImpl<$Res>
    implements _$MobileNumberCopyWith<$Res> {
  __$MobileNumberCopyWithImpl(this._self, this._then);

  final _MobileNumber _self;
  final $Res Function(_MobileNumber) _then;

/// Create a copy of MobileNumber
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? countryCode = null,Object? number = null,Object? isVerified = null,}) {
  return _then(_MobileNumber(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,number: null == number ? _self.number : number // ignore: cast_nullable_to_non_nullable
as String,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
