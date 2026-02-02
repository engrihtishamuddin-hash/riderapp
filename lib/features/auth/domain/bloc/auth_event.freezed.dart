// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginEvent value)?  login,TResult Function( LogoutEvent value)?  logout,TResult Function( RefreshTokenEvent value)?  refreshToken,TResult Function( RequestOtpEvent value)?  requestOtp,TResult Function( VerifyOtpEvent value)?  verifyOtp,TResult Function( ResetPasswordEvent value)?  resetPassword,TResult Function( RegisterCustomerEvent value)?  registerCustomer,TResult Function( RegisterDriverEvent value)?  registerDriver,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginEvent() when login != null:
return login(_that);case LogoutEvent() when logout != null:
return logout(_that);case RefreshTokenEvent() when refreshToken != null:
return refreshToken(_that);case RequestOtpEvent() when requestOtp != null:
return requestOtp(_that);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case RegisterCustomerEvent() when registerCustomer != null:
return registerCustomer(_that);case RegisterDriverEvent() when registerDriver != null:
return registerDriver(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginEvent value)  login,required TResult Function( LogoutEvent value)  logout,required TResult Function( RefreshTokenEvent value)  refreshToken,required TResult Function( RequestOtpEvent value)  requestOtp,required TResult Function( VerifyOtpEvent value)  verifyOtp,required TResult Function( ResetPasswordEvent value)  resetPassword,required TResult Function( RegisterCustomerEvent value)  registerCustomer,required TResult Function( RegisterDriverEvent value)  registerDriver,}){
final _that = this;
switch (_that) {
case LoginEvent():
return login(_that);case LogoutEvent():
return logout(_that);case RefreshTokenEvent():
return refreshToken(_that);case RequestOtpEvent():
return requestOtp(_that);case VerifyOtpEvent():
return verifyOtp(_that);case ResetPasswordEvent():
return resetPassword(_that);case RegisterCustomerEvent():
return registerCustomer(_that);case RegisterDriverEvent():
return registerDriver(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginEvent value)?  login,TResult? Function( LogoutEvent value)?  logout,TResult? Function( RefreshTokenEvent value)?  refreshToken,TResult? Function( RequestOtpEvent value)?  requestOtp,TResult? Function( VerifyOtpEvent value)?  verifyOtp,TResult? Function( ResetPasswordEvent value)?  resetPassword,TResult? Function( RegisterCustomerEvent value)?  registerCustomer,TResult? Function( RegisterDriverEvent value)?  registerDriver,}){
final _that = this;
switch (_that) {
case LoginEvent() when login != null:
return login(_that);case LogoutEvent() when logout != null:
return logout(_that);case RefreshTokenEvent() when refreshToken != null:
return refreshToken(_that);case RequestOtpEvent() when requestOtp != null:
return requestOtp(_that);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that);case RegisterCustomerEvent() when registerCustomer != null:
return registerCustomer(_that);case RegisterDriverEvent() when registerDriver != null:
return registerDriver(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phone,  String password)?  login,TResult Function()?  logout,TResult Function()?  refreshToken,TResult Function( String phone)?  requestOtp,TResult Function( String verificationId,  String otp,  String phone,  Map<String, String>? userData,  String? userType)?  verifyOtp,TResult Function( String phone,  String otp,  String newPassword)?  resetPassword,TResult Function( String phone,  String name,  String cnic)?  registerCustomer,TResult Function( String phone,  String name,  String vehicleNo,  String licenseNo)?  registerDriver,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginEvent() when login != null:
return login(_that.phone,_that.password);case LogoutEvent() when logout != null:
return logout();case RefreshTokenEvent() when refreshToken != null:
return refreshToken();case RequestOtpEvent() when requestOtp != null:
return requestOtp(_that.phone);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that.verificationId,_that.otp,_that.phone,_that.userData,_that.userType);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.phone,_that.otp,_that.newPassword);case RegisterCustomerEvent() when registerCustomer != null:
return registerCustomer(_that.phone,_that.name,_that.cnic);case RegisterDriverEvent() when registerDriver != null:
return registerDriver(_that.phone,_that.name,_that.vehicleNo,_that.licenseNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phone,  String password)  login,required TResult Function()  logout,required TResult Function()  refreshToken,required TResult Function( String phone)  requestOtp,required TResult Function( String verificationId,  String otp,  String phone,  Map<String, String>? userData,  String? userType)  verifyOtp,required TResult Function( String phone,  String otp,  String newPassword)  resetPassword,required TResult Function( String phone,  String name,  String cnic)  registerCustomer,required TResult Function( String phone,  String name,  String vehicleNo,  String licenseNo)  registerDriver,}) {final _that = this;
switch (_that) {
case LoginEvent():
return login(_that.phone,_that.password);case LogoutEvent():
return logout();case RefreshTokenEvent():
return refreshToken();case RequestOtpEvent():
return requestOtp(_that.phone);case VerifyOtpEvent():
return verifyOtp(_that.verificationId,_that.otp,_that.phone,_that.userData,_that.userType);case ResetPasswordEvent():
return resetPassword(_that.phone,_that.otp,_that.newPassword);case RegisterCustomerEvent():
return registerCustomer(_that.phone,_that.name,_that.cnic);case RegisterDriverEvent():
return registerDriver(_that.phone,_that.name,_that.vehicleNo,_that.licenseNo);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phone,  String password)?  login,TResult? Function()?  logout,TResult? Function()?  refreshToken,TResult? Function( String phone)?  requestOtp,TResult? Function( String verificationId,  String otp,  String phone,  Map<String, String>? userData,  String? userType)?  verifyOtp,TResult? Function( String phone,  String otp,  String newPassword)?  resetPassword,TResult? Function( String phone,  String name,  String cnic)?  registerCustomer,TResult? Function( String phone,  String name,  String vehicleNo,  String licenseNo)?  registerDriver,}) {final _that = this;
switch (_that) {
case LoginEvent() when login != null:
return login(_that.phone,_that.password);case LogoutEvent() when logout != null:
return logout();case RefreshTokenEvent() when refreshToken != null:
return refreshToken();case RequestOtpEvent() when requestOtp != null:
return requestOtp(_that.phone);case VerifyOtpEvent() when verifyOtp != null:
return verifyOtp(_that.verificationId,_that.otp,_that.phone,_that.userData,_that.userType);case ResetPasswordEvent() when resetPassword != null:
return resetPassword(_that.phone,_that.otp,_that.newPassword);case RegisterCustomerEvent() when registerCustomer != null:
return registerCustomer(_that.phone,_that.name,_that.cnic);case RegisterDriverEvent() when registerDriver != null:
return registerDriver(_that.phone,_that.name,_that.vehicleNo,_that.licenseNo);case _:
  return null;

}
}

}

/// @nodoc


class LoginEvent extends AuthEvent {
  const LoginEvent({required this.phone, required this.password}): super._();
  

 final  String phone;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEventCopyWith<LoginEvent> get copyWith => _$LoginEventCopyWithImpl<LoginEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,phone,password);

@override
String toString() {
  return 'AuthEvent.login(phone: $phone, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginEventCopyWith(LoginEvent value, $Res Function(LoginEvent) _then) = _$LoginEventCopyWithImpl;
@useResult
$Res call({
 String phone, String password
});




}
/// @nodoc
class _$LoginEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._self, this._then);

  final LoginEvent _self;
  final $Res Function(LoginEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? password = null,}) {
  return _then(LoginEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LogoutEvent extends AuthEvent {
  const LogoutEvent(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc


class RefreshTokenEvent extends AuthEvent {
  const RefreshTokenEvent(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshTokenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.refreshToken()';
}


}




/// @nodoc


class RequestOtpEvent extends AuthEvent {
  const RequestOtpEvent({required this.phone}): super._();
  

 final  String phone;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestOtpEventCopyWith<RequestOtpEvent> get copyWith => _$RequestOtpEventCopyWithImpl<RequestOtpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestOtpEvent&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'AuthEvent.requestOtp(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $RequestOtpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RequestOtpEventCopyWith(RequestOtpEvent value, $Res Function(RequestOtpEvent) _then) = _$RequestOtpEventCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$RequestOtpEventCopyWithImpl<$Res>
    implements $RequestOtpEventCopyWith<$Res> {
  _$RequestOtpEventCopyWithImpl(this._self, this._then);

  final RequestOtpEvent _self;
  final $Res Function(RequestOtpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(RequestOtpEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class VerifyOtpEvent extends AuthEvent {
  const VerifyOtpEvent({required this.verificationId, required this.otp, required this.phone, final  Map<String, String>? userData, this.userType}): _userData = userData,super._();
  

 final  String verificationId;
 final  String otp;
 final  String phone;
 final  Map<String, String>? _userData;
 Map<String, String>? get userData {
  final value = _userData;
  if (value == null) return null;
  if (_userData is EqualUnmodifiableMapView) return _userData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  String? userType;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpEventCopyWith<VerifyOtpEvent> get copyWith => _$VerifyOtpEventCopyWithImpl<VerifyOtpEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpEvent&&(identical(other.verificationId, verificationId) || other.verificationId == verificationId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._userData, _userData)&&(identical(other.userType, userType) || other.userType == userType));
}


@override
int get hashCode => Object.hash(runtimeType,verificationId,otp,phone,const DeepCollectionEquality().hash(_userData),userType);

@override
String toString() {
  return 'AuthEvent.verifyOtp(verificationId: $verificationId, otp: $otp, phone: $phone, userData: $userData, userType: $userType)';
}


}

/// @nodoc
abstract mixin class $VerifyOtpEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $VerifyOtpEventCopyWith(VerifyOtpEvent value, $Res Function(VerifyOtpEvent) _then) = _$VerifyOtpEventCopyWithImpl;
@useResult
$Res call({
 String verificationId, String otp, String phone, Map<String, String>? userData, String? userType
});




}
/// @nodoc
class _$VerifyOtpEventCopyWithImpl<$Res>
    implements $VerifyOtpEventCopyWith<$Res> {
  _$VerifyOtpEventCopyWithImpl(this._self, this._then);

  final VerifyOtpEvent _self;
  final $Res Function(VerifyOtpEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verificationId = null,Object? otp = null,Object? phone = null,Object? userData = freezed,Object? userType = freezed,}) {
  return _then(VerifyOtpEvent(
verificationId: null == verificationId ? _self.verificationId : verificationId // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userData: freezed == userData ? _self._userData : userData // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class ResetPasswordEvent extends AuthEvent {
  const ResetPasswordEvent({required this.phone, required this.otp, required this.newPassword}): super._();
  

 final  String phone;
 final  String otp;
 final  String newPassword;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordEventCopyWith<ResetPasswordEvent> get copyWith => _$ResetPasswordEventCopyWithImpl<ResetPasswordEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordEvent&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,phone,otp,newPassword);

@override
String toString() {
  return 'AuthEvent.resetPassword(phone: $phone, otp: $otp, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(ResetPasswordEvent value, $Res Function(ResetPasswordEvent) _then) = _$ResetPasswordEventCopyWithImpl;
@useResult
$Res call({
 String phone, String otp, String newPassword
});




}
/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._self, this._then);

  final ResetPasswordEvent _self;
  final $Res Function(ResetPasswordEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? otp = null,Object? newPassword = null,}) {
  return _then(ResetPasswordEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterCustomerEvent extends AuthEvent {
  const RegisterCustomerEvent({required this.phone, required this.name, required this.cnic}): super._();
  

 final  String phone;
 final  String name;
 final  String cnic;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterCustomerEventCopyWith<RegisterCustomerEvent> get copyWith => _$RegisterCustomerEventCopyWithImpl<RegisterCustomerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterCustomerEvent&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.cnic, cnic) || other.cnic == cnic));
}


@override
int get hashCode => Object.hash(runtimeType,phone,name,cnic);

@override
String toString() {
  return 'AuthEvent.registerCustomer(phone: $phone, name: $name, cnic: $cnic)';
}


}

/// @nodoc
abstract mixin class $RegisterCustomerEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterCustomerEventCopyWith(RegisterCustomerEvent value, $Res Function(RegisterCustomerEvent) _then) = _$RegisterCustomerEventCopyWithImpl;
@useResult
$Res call({
 String phone, String name, String cnic
});




}
/// @nodoc
class _$RegisterCustomerEventCopyWithImpl<$Res>
    implements $RegisterCustomerEventCopyWith<$Res> {
  _$RegisterCustomerEventCopyWithImpl(this._self, this._then);

  final RegisterCustomerEvent _self;
  final $Res Function(RegisterCustomerEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? name = null,Object? cnic = null,}) {
  return _then(RegisterCustomerEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cnic: null == cnic ? _self.cnic : cnic // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterDriverEvent extends AuthEvent {
  const RegisterDriverEvent({required this.phone, required this.name, required this.vehicleNo, required this.licenseNo}): super._();
  

 final  String phone;
 final  String name;
 final  String vehicleNo;
 final  String licenseNo;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterDriverEventCopyWith<RegisterDriverEvent> get copyWith => _$RegisterDriverEventCopyWithImpl<RegisterDriverEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterDriverEvent&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.vehicleNo, vehicleNo) || other.vehicleNo == vehicleNo)&&(identical(other.licenseNo, licenseNo) || other.licenseNo == licenseNo));
}


@override
int get hashCode => Object.hash(runtimeType,phone,name,vehicleNo,licenseNo);

@override
String toString() {
  return 'AuthEvent.registerDriver(phone: $phone, name: $name, vehicleNo: $vehicleNo, licenseNo: $licenseNo)';
}


}

/// @nodoc
abstract mixin class $RegisterDriverEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterDriverEventCopyWith(RegisterDriverEvent value, $Res Function(RegisterDriverEvent) _then) = _$RegisterDriverEventCopyWithImpl;
@useResult
$Res call({
 String phone, String name, String vehicleNo, String licenseNo
});




}
/// @nodoc
class _$RegisterDriverEventCopyWithImpl<$Res>
    implements $RegisterDriverEventCopyWith<$Res> {
  _$RegisterDriverEventCopyWithImpl(this._self, this._then);

  final RegisterDriverEvent _self;
  final $Res Function(RegisterDriverEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? name = null,Object? vehicleNo = null,Object? licenseNo = null,}) {
  return _then(RegisterDriverEvent(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,vehicleNo: null == vehicleNo ? _self.vehicleNo : vehicleNo // ignore: cast_nullable_to_non_nullable
as String,licenseNo: null == licenseNo ? _self.licenseNo : licenseNo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
