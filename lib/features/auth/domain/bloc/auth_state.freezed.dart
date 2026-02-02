// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthInitial value)?  initial,TResult Function( AuthLoading value)?  loading,TResult Function( AuthAuthenticated value)?  authenticated,TResult Function( Unauthenticated value)?  unauthenticated,TResult Function( AuthError value)?  error,TResult Function( AuthOtpSent value)?  otpSent,TResult Function( PasswordResetSuccess value)?  passwordResetSuccess,TResult Function( RegisteringCustomer value)?  registeringCustomer,TResult Function( RegisteringDriver value)?  registeringDriver,TResult Function( RegistrationSuccess value)?  registrationSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthError() when error != null:
return error(_that);case AuthOtpSent() when otpSent != null:
return otpSent(_that);case PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess(_that);case RegisteringCustomer() when registeringCustomer != null:
return registeringCustomer(_that);case RegisteringDriver() when registeringDriver != null:
return registeringDriver(_that);case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthInitial value)  initial,required TResult Function( AuthLoading value)  loading,required TResult Function( AuthAuthenticated value)  authenticated,required TResult Function( Unauthenticated value)  unauthenticated,required TResult Function( AuthError value)  error,required TResult Function( AuthOtpSent value)  otpSent,required TResult Function( PasswordResetSuccess value)  passwordResetSuccess,required TResult Function( RegisteringCustomer value)  registeringCustomer,required TResult Function( RegisteringDriver value)  registeringDriver,required TResult Function( RegistrationSuccess value)  registrationSuccess,}){
final _that = this;
switch (_that) {
case AuthInitial():
return initial(_that);case AuthLoading():
return loading(_that);case AuthAuthenticated():
return authenticated(_that);case Unauthenticated():
return unauthenticated(_that);case AuthError():
return error(_that);case AuthOtpSent():
return otpSent(_that);case PasswordResetSuccess():
return passwordResetSuccess(_that);case RegisteringCustomer():
return registeringCustomer(_that);case RegisteringDriver():
return registeringDriver(_that);case RegistrationSuccess():
return registrationSuccess(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthInitial value)?  initial,TResult? Function( AuthLoading value)?  loading,TResult? Function( AuthAuthenticated value)?  authenticated,TResult? Function( Unauthenticated value)?  unauthenticated,TResult? Function( AuthError value)?  error,TResult? Function( AuthOtpSent value)?  otpSent,TResult? Function( PasswordResetSuccess value)?  passwordResetSuccess,TResult? Function( RegisteringCustomer value)?  registeringCustomer,TResult? Function( RegisteringDriver value)?  registeringDriver,TResult? Function( RegistrationSuccess value)?  registrationSuccess,}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case AuthAuthenticated() when authenticated != null:
return authenticated(_that);case Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case AuthError() when error != null:
return error(_that);case AuthOtpSent() when otpSent != null:
return otpSent(_that);case PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess(_that);case RegisteringCustomer() when registeringCustomer != null:
return registeringCustomer(_that);case RegisteringDriver() when registeringDriver != null:
return registeringDriver(_that);case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String userType,  String phone)?  authenticated,TResult Function()?  unauthenticated,TResult Function( String message)?  error,TResult Function( String verificationId,  String phone,  String? userType,  Map<String, String>? userData)?  otpSent,TResult Function()?  passwordResetSuccess,TResult Function()?  registeringCustomer,TResult Function()?  registeringDriver,TResult Function( String userType,  String phone)?  registrationSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial();case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated(_that.userType,_that.phone);case Unauthenticated() when unauthenticated != null:
return unauthenticated();case AuthError() when error != null:
return error(_that.message);case AuthOtpSent() when otpSent != null:
return otpSent(_that.verificationId,_that.phone,_that.userType,_that.userData);case PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess();case RegisteringCustomer() when registeringCustomer != null:
return registeringCustomer();case RegisteringDriver() when registeringDriver != null:
return registeringDriver();case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that.userType,_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String userType,  String phone)  authenticated,required TResult Function()  unauthenticated,required TResult Function( String message)  error,required TResult Function( String verificationId,  String phone,  String? userType,  Map<String, String>? userData)  otpSent,required TResult Function()  passwordResetSuccess,required TResult Function()  registeringCustomer,required TResult Function()  registeringDriver,required TResult Function( String userType,  String phone)  registrationSuccess,}) {final _that = this;
switch (_that) {
case AuthInitial():
return initial();case AuthLoading():
return loading();case AuthAuthenticated():
return authenticated(_that.userType,_that.phone);case Unauthenticated():
return unauthenticated();case AuthError():
return error(_that.message);case AuthOtpSent():
return otpSent(_that.verificationId,_that.phone,_that.userType,_that.userData);case PasswordResetSuccess():
return passwordResetSuccess();case RegisteringCustomer():
return registeringCustomer();case RegisteringDriver():
return registeringDriver();case RegistrationSuccess():
return registrationSuccess(_that.userType,_that.phone);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String userType,  String phone)?  authenticated,TResult? Function()?  unauthenticated,TResult? Function( String message)?  error,TResult? Function( String verificationId,  String phone,  String? userType,  Map<String, String>? userData)?  otpSent,TResult? Function()?  passwordResetSuccess,TResult? Function()?  registeringCustomer,TResult? Function()?  registeringDriver,TResult? Function( String userType,  String phone)?  registrationSuccess,}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial();case AuthLoading() when loading != null:
return loading();case AuthAuthenticated() when authenticated != null:
return authenticated(_that.userType,_that.phone);case Unauthenticated() when unauthenticated != null:
return unauthenticated();case AuthError() when error != null:
return error(_that.message);case AuthOtpSent() when otpSent != null:
return otpSent(_that.verificationId,_that.phone,_that.userType,_that.userData);case PasswordResetSuccess() when passwordResetSuccess != null:
return passwordResetSuccess();case RegisteringCustomer() when registeringCustomer != null:
return registeringCustomer();case RegisteringDriver() when registeringDriver != null:
return registeringDriver();case RegistrationSuccess() when registrationSuccess != null:
return registrationSuccess(_that.userType,_that.phone);case _:
  return null;

}
}

}

/// @nodoc


class AuthInitial extends AuthState {
  const AuthInitial(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class AuthLoading extends AuthState {
  const AuthLoading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class AuthAuthenticated extends AuthState {
  const AuthAuthenticated({required this.userType, required this.phone}): super._();
  

 final  String userType;
 final  String phone;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthAuthenticatedCopyWith<AuthAuthenticated> get copyWith => _$AuthAuthenticatedCopyWithImpl<AuthAuthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthAuthenticated&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,userType,phone);

@override
String toString() {
  return 'AuthState.authenticated(userType: $userType, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $AuthAuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthAuthenticatedCopyWith(AuthAuthenticated value, $Res Function(AuthAuthenticated) _then) = _$AuthAuthenticatedCopyWithImpl;
@useResult
$Res call({
 String userType, String phone
});




}
/// @nodoc
class _$AuthAuthenticatedCopyWithImpl<$Res>
    implements $AuthAuthenticatedCopyWith<$Res> {
  _$AuthAuthenticatedCopyWithImpl(this._self, this._then);

  final AuthAuthenticated _self;
  final $Res Function(AuthAuthenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userType = null,Object? phone = null,}) {
  return _then(AuthAuthenticated(
userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class Unauthenticated extends AuthState {
  const Unauthenticated(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class AuthError extends AuthState {
  const AuthError(this.message): super._();
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthErrorCopyWith<AuthError> get copyWith => _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) = _$AuthErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthErrorCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthOtpSent extends AuthState {
  const AuthOtpSent({required this.verificationId, required this.phone, this.userType, final  Map<String, String>? userData}): _userData = userData,super._();
  

 final  String verificationId;
 final  String phone;
 final  String? userType;
 final  Map<String, String>? _userData;
 Map<String, String>? get userData {
  final value = _userData;
  if (value == null) return null;
  if (_userData is EqualUnmodifiableMapView) return _userData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthOtpSentCopyWith<AuthOtpSent> get copyWith => _$AuthOtpSentCopyWithImpl<AuthOtpSent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthOtpSent&&(identical(other.verificationId, verificationId) || other.verificationId == verificationId)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.userType, userType) || other.userType == userType)&&const DeepCollectionEquality().equals(other._userData, _userData));
}


@override
int get hashCode => Object.hash(runtimeType,verificationId,phone,userType,const DeepCollectionEquality().hash(_userData));

@override
String toString() {
  return 'AuthState.otpSent(verificationId: $verificationId, phone: $phone, userType: $userType, userData: $userData)';
}


}

/// @nodoc
abstract mixin class $AuthOtpSentCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthOtpSentCopyWith(AuthOtpSent value, $Res Function(AuthOtpSent) _then) = _$AuthOtpSentCopyWithImpl;
@useResult
$Res call({
 String verificationId, String phone, String? userType, Map<String, String>? userData
});




}
/// @nodoc
class _$AuthOtpSentCopyWithImpl<$Res>
    implements $AuthOtpSentCopyWith<$Res> {
  _$AuthOtpSentCopyWithImpl(this._self, this._then);

  final AuthOtpSent _self;
  final $Res Function(AuthOtpSent) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? verificationId = null,Object? phone = null,Object? userType = freezed,Object? userData = freezed,}) {
  return _then(AuthOtpSent(
verificationId: null == verificationId ? _self.verificationId : verificationId // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,userType: freezed == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String?,userData: freezed == userData ? _self._userData : userData // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,
  ));
}


}

/// @nodoc


class PasswordResetSuccess extends AuthState {
  const PasswordResetSuccess(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PasswordResetSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.passwordResetSuccess()';
}


}




/// @nodoc


class RegisteringCustomer extends AuthState {
  const RegisteringCustomer(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisteringCustomer);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.registeringCustomer()';
}


}




/// @nodoc


class RegisteringDriver extends AuthState {
  const RegisteringDriver(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisteringDriver);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.registeringDriver()';
}


}




/// @nodoc


class RegistrationSuccess extends AuthState {
  const RegistrationSuccess({required this.userType, required this.phone}): super._();
  

 final  String userType;
 final  String phone;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationSuccessCopyWith<RegistrationSuccess> get copyWith => _$RegistrationSuccessCopyWithImpl<RegistrationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationSuccess&&(identical(other.userType, userType) || other.userType == userType)&&(identical(other.phone, phone) || other.phone == phone));
}


@override
int get hashCode => Object.hash(runtimeType,userType,phone);

@override
String toString() {
  return 'AuthState.registrationSuccess(userType: $userType, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $RegistrationSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $RegistrationSuccessCopyWith(RegistrationSuccess value, $Res Function(RegistrationSuccess) _then) = _$RegistrationSuccessCopyWithImpl;
@useResult
$Res call({
 String userType, String phone
});




}
/// @nodoc
class _$RegistrationSuccessCopyWithImpl<$Res>
    implements $RegistrationSuccessCopyWith<$Res> {
  _$RegistrationSuccessCopyWithImpl(this._self, this._then);

  final RegistrationSuccess _self;
  final $Res Function(RegistrationSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userType = null,Object? phone = null,}) {
  return _then(RegistrationSuccess(
userType: null == userType ? _self.userType : userType // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
