// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserModel {

 String get uid; String get phone;@GeoPointConverter() GeoPoint? get lastLocation; String get userType;// 'customer', 'driver', 'admin'
 String? get name; String? get email; String? get profileImage; String? get cnic; String? get vehicleNo; DateTime? get createdAt; String? get role; String? get licenseNo; String? get badgeId;// For government staff
 String? get department;// For government staff
 String? get userRole;// 'police', 'motorway_staff', 'govt_servant'
 bool? get isVerified; bool? get isActive; DateTime? get updatedAt;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastLocation, lastLocation) || other.lastLocation == lastLocation)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.licenseNo, licenseNo) || other.licenseNo == licenseNo)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.department, department) || other.department == department)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,phone,lastLocation,userType,name,email,profileImage,cnic,vehicleNo,createdAt,role,licenseNo,badgeId,department,userRole,isVerified,isActive,updatedAt);

@override
String toString() {
  return 'UserModel(uid: $uid, phone: $phone, lastLocation: $lastLocation, userType: $userType, name: $name, email: $email, profileImage: $profileImage, cnic: $cnic, vehicleNo: $vehicleNo, createdAt: $createdAt, role: $role, licenseNo: $licenseNo, badgeId: $badgeId, department: $department, userRole: $userRole, isVerified: $isVerified, isActive: $isActive, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String uid, String phone,@GeoPointConverter() GeoPoint? lastLocation, String userType, String? name, String? email, String? profileImage, String? cnic, String? vehicleNo, DateTime? createdAt, String? role, String? licenseNo, String? badgeId, String? department, String? userRole, bool? isVerified, bool? isActive, DateTime? updatedAt
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uid = null,Object? phone = null,Object? lastLocation = freezed,Object? userType = null,Object? name = freezed,Object? email = freezed,Object? profileImage = freezed,Object? cnic = freezed,Object? vehicleNo = freezed,Object? createdAt = freezed,Object? role = freezed,Object? licenseNo = freezed,Object? badgeId = freezed,Object? department = freezed,Object? userRole = freezed,Object? isVerified = freezed,Object? isActive = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,lastLocation: freezed == lastLocation ? _self.lastLocation : lastLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint?,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,licenseNo: freezed == licenseNo ? _self.licenseNo : licenseNo // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String uid,  String phone, @GeoPointConverter()  GeoPoint? lastLocation,  String userType,  String? name,  String? email,  String? profileImage,  String? cnic,  String? vehicleNo,  DateTime? createdAt,  String? role,  String? licenseNo,  String? badgeId,  String? department,  String? userRole,  bool? isVerified,  bool? isActive,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.phone,_that.lastLocation,_that.userType,_that.name,_that.email,_that.profileImage,_that.cnic,_that.vehicleNo,_that.createdAt,_that.role,_that.licenseNo,_that.badgeId,_that.department,_that.userRole,_that.isVerified,_that.isActive,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String uid,  String phone, @GeoPointConverter()  GeoPoint? lastLocation,  String userType,  String? name,  String? email,  String? profileImage,  String? cnic,  String? vehicleNo,  DateTime? createdAt,  String? role,  String? licenseNo,  String? badgeId,  String? department,  String? userRole,  bool? isVerified,  bool? isActive,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.uid,_that.phone,_that.lastLocation,_that.userType,_that.name,_that.email,_that.profileImage,_that.cnic,_that.vehicleNo,_that.createdAt,_that.role,_that.licenseNo,_that.badgeId,_that.department,_that.userRole,_that.isVerified,_that.isActive,_that.updatedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String uid,  String phone, @GeoPointConverter()  GeoPoint? lastLocation,  String userType,  String? name,  String? email,  String? profileImage,  String? cnic,  String? vehicleNo,  DateTime? createdAt,  String? role,  String? licenseNo,  String? badgeId,  String? department,  String? userRole,  bool? isVerified,  bool? isActive,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.uid,_that.phone,_that.lastLocation,_that.userType,_that.name,_that.email,_that.profileImage,_that.cnic,_that.vehicleNo,_that.createdAt,_that.role,_that.licenseNo,_that.badgeId,_that.department,_that.userRole,_that.isVerified,_that.isActive,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel extends UserModel {
  const _UserModel({required this.uid, required this.phone, @GeoPointConverter() this.lastLocation, required this.userType, this.name, this.email, this.profileImage, this.cnic, this.vehicleNo, this.createdAt, this.role, this.licenseNo, this.badgeId, this.department, this.userRole, this.isVerified, this.isActive, this.updatedAt}): super._();
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String uid;
@override final  String phone;
@override@GeoPointConverter() final  GeoPoint? lastLocation;
@override final  String userType;
// 'customer', 'driver', 'admin'
@override final  String? name;
@override final  String? email;
@override final  String? profileImage;
@override final  String? cnic;
@override final  String? vehicleNo;
@override final  DateTime? createdAt;
@override final  String? role;
@override final  String? licenseNo;
@override final  String? badgeId;
// For government staff
@override final  String? department;
// For government staff
@override final  String? userRole;
// 'police', 'motorway_staff', 'govt_servant'
@override final  bool? isVerified;
@override final  bool? isActive;
@override final  DateTime? updatedAt;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.uid, uid) || other.uid == uid)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastLocation, lastLocation) || other.lastLocation == lastLocation)&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.cnic, cnic) || other.cnic == cnic)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.role, role) || other.role == role)&&(identical(other.licenseNo, licenseNo) || other.licenseNo == licenseNo)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId)&&(identical(other.department, department) || other.department == department)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,uid,phone,lastLocation,userType,name,email,profileImage,cnic,vehicleNo,createdAt,role,licenseNo,badgeId,department,userRole,isVerified,isActive,updatedAt);

@override
String toString() {
  return 'UserModel(uid: $uid, phone: $phone, lastLocation: $lastLocation, userType: $userType, name: $name, email: $email, profileImage: $profileImage, cnic: $cnic, vehicleNo: $vehicleNo, createdAt: $createdAt, role: $role, licenseNo: $licenseNo, badgeId: $badgeId, department: $department, userRole: $userRole, isVerified: $isVerified, isActive: $isActive, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String uid, String phone,@GeoPointConverter() GeoPoint? lastLocation, String userType, String? name, String? email, String? profileImage, String? cnic, String? vehicleNo, DateTime? createdAt, String? role, String? licenseNo, String? badgeId, String? department, String? userRole, bool? isVerified, bool? isActive, DateTime? updatedAt
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uid = null,Object? phone = null,Object? lastLocation = freezed,Object? userType = null,Object? name = freezed,Object? email = freezed,Object? profileImage = freezed,Object? cnic = freezed,Object? vehicleNo = freezed,Object? createdAt = freezed,Object? role = freezed,Object? licenseNo = freezed,Object? badgeId = freezed,Object? department = freezed,Object? userRole = freezed,Object? isVerified = freezed,Object? isActive = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserModel(
uid: null == uid ? _self.uid : uid // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,lastLocation: freezed == lastLocation ? _self.lastLocation : lastLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint?,userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String?,cnic: freezed == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String?,vehicleNo: freezed == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,licenseNo: freezed == licenseNo ? _self.licenseNo : licenseNo // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
