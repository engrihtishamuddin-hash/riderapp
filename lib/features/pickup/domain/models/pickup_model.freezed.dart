// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PickupModel {

 String get id;@GeoPointConverter() GeoPoint get location; String get riderId; String get riderName; String get riderPhone; String get address; String get destination; double get fare; String get status;// 'pending', 'accepted', 'completed', 'cancelled'
 String? get driverId; String? get driverName; String? get driverPhone; DateTime? get createdAt; DateTime? get requestedAt; DateTime? get acceptedAt; DateTime? get completedAt; String? get notes; String? get motorwayRoute;// M1, M2, M3, etc.
 String? get emergencyType;// 'patrol', 'official_duty', 'transport'
 String? get userRole;// 'police', 'motorway_staff', 'govt_servant'
 String? get badgeId;
/// Create a copy of PickupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PickupModelCopyWith<PickupModel> get copyWith => _$PickupModelCopyWithImpl<PickupModel>(this as PickupModel, _$identity);

  /// Serializes this PickupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PickupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.riderName, riderName) || other.riderName == riderName)&&(identical(other.riderPhone, riderPhone) || other.riderPhone == riderPhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.status, status) || other.status == status)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.driverName, driverName) || other.driverName == driverName)&&(identical(other.driverPhone, driverPhone) || other.driverPhone == driverPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.motorwayRoute, motorwayRoute) || other.motorwayRoute == motorwayRoute)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,location,riderId,riderName,riderPhone,address,destination,fare,status,driverId,driverName,driverPhone,createdAt,requestedAt,acceptedAt,completedAt,notes,motorwayRoute,emergencyType,userRole,badgeId]);

@override
String toString() {
  return 'PickupModel(id: $id, location: $location, riderId: $riderId, riderName: $riderName, riderPhone: $riderPhone, address: $address, destination: $destination, fare: $fare, status: $status, driverId: $driverId, driverName: $driverName, driverPhone: $driverPhone, createdAt: $createdAt, requestedAt: $requestedAt, acceptedAt: $acceptedAt, completedAt: $completedAt, notes: $notes, motorwayRoute: $motorwayRoute, emergencyType: $emergencyType, userRole: $userRole, badgeId: $badgeId)';
}


}

/// @nodoc
abstract mixin class $PickupModelCopyWith<$Res>  {
  factory $PickupModelCopyWith(PickupModel value, $Res Function(PickupModel) _then) = _$PickupModelCopyWithImpl;
@useResult
$Res call({
 String id,@GeoPointConverter() GeoPoint location, String riderId, String riderName, String riderPhone, String address, String destination, double fare, String status, String? driverId, String? driverName, String? driverPhone, DateTime? createdAt, DateTime? requestedAt, DateTime? acceptedAt, DateTime? completedAt, String? notes, String? motorwayRoute, String? emergencyType, String? userRole, String? badgeId
});




}
/// @nodoc
class _$PickupModelCopyWithImpl<$Res>
    implements $PickupModelCopyWith<$Res> {
  _$PickupModelCopyWithImpl(this._self, this._then);

  final PickupModel _self;
  final $Res Function(PickupModel) _then;

/// Create a copy of PickupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? location = null,Object? riderId = null,Object? riderName = null,Object? riderPhone = null,Object? address = null,Object? destination = null,Object? fare = null,Object? status = null,Object? driverId = freezed,Object? driverName = freezed,Object? driverPhone = freezed,Object? createdAt = freezed,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? completedAt = freezed,Object? notes = freezed,Object? motorwayRoute = freezed,Object? emergencyType = freezed,Object? userRole = freezed,Object? badgeId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoPoint,riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as String,riderName: null == riderName ? _self.riderName : riderName // ignore: cast_nullable_to_non_nullable
as String,riderPhone: null == riderPhone ? _self.riderPhone : riderPhone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,driverName: freezed == driverName ? _self.driverName : driverName // ignore: cast_nullable_to_non_nullable
as String?,driverPhone: freezed == driverPhone ? _self.driverPhone : driverPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,motorwayRoute: freezed == motorwayRoute ? _self.motorwayRoute : motorwayRoute // ignore: cast_nullable_to_non_nullable
as String?,emergencyType: freezed == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PickupModel].
extension PickupModelPatterns on PickupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PickupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PickupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PickupModel value)  $default,){
final _that = this;
switch (_that) {
case _PickupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PickupModel value)?  $default,){
final _that = this;
switch (_that) {
case _PickupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @GeoPointConverter()  GeoPoint location,  String riderId,  String riderName,  String riderPhone,  String address,  String destination,  double fare,  String status,  String? driverId,  String? driverName,  String? driverPhone,  DateTime? createdAt,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? completedAt,  String? notes,  String? motorwayRoute,  String? emergencyType,  String? userRole,  String? badgeId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PickupModel() when $default != null:
return $default(_that.id,_that.location,_that.riderId,_that.riderName,_that.riderPhone,_that.address,_that.destination,_that.fare,_that.status,_that.driverId,_that.driverName,_that.driverPhone,_that.createdAt,_that.requestedAt,_that.acceptedAt,_that.completedAt,_that.notes,_that.motorwayRoute,_that.emergencyType,_that.userRole,_that.badgeId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @GeoPointConverter()  GeoPoint location,  String riderId,  String riderName,  String riderPhone,  String address,  String destination,  double fare,  String status,  String? driverId,  String? driverName,  String? driverPhone,  DateTime? createdAt,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? completedAt,  String? notes,  String? motorwayRoute,  String? emergencyType,  String? userRole,  String? badgeId)  $default,) {final _that = this;
switch (_that) {
case _PickupModel():
return $default(_that.id,_that.location,_that.riderId,_that.riderName,_that.riderPhone,_that.address,_that.destination,_that.fare,_that.status,_that.driverId,_that.driverName,_that.driverPhone,_that.createdAt,_that.requestedAt,_that.acceptedAt,_that.completedAt,_that.notes,_that.motorwayRoute,_that.emergencyType,_that.userRole,_that.badgeId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @GeoPointConverter()  GeoPoint location,  String riderId,  String riderName,  String riderPhone,  String address,  String destination,  double fare,  String status,  String? driverId,  String? driverName,  String? driverPhone,  DateTime? createdAt,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? completedAt,  String? notes,  String? motorwayRoute,  String? emergencyType,  String? userRole,  String? badgeId)?  $default,) {final _that = this;
switch (_that) {
case _PickupModel() when $default != null:
return $default(_that.id,_that.location,_that.riderId,_that.riderName,_that.riderPhone,_that.address,_that.destination,_that.fare,_that.status,_that.driverId,_that.driverName,_that.driverPhone,_that.createdAt,_that.requestedAt,_that.acceptedAt,_that.completedAt,_that.notes,_that.motorwayRoute,_that.emergencyType,_that.userRole,_that.badgeId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PickupModel extends PickupModel {
  const _PickupModel({required this.id, @GeoPointConverter() required this.location, required this.riderId, required this.riderName, required this.riderPhone, required this.address, required this.destination, required this.fare, required this.status, this.driverId, this.driverName, this.driverPhone, this.createdAt, this.requestedAt, this.acceptedAt, this.completedAt, this.notes, this.motorwayRoute, this.emergencyType, this.userRole, this.badgeId}): super._();
  factory _PickupModel.fromJson(Map<String, dynamic> json) => _$PickupModelFromJson(json);

@override final  String id;
@override@GeoPointConverter() final  GeoPoint location;
@override final  String riderId;
@override final  String riderName;
@override final  String riderPhone;
@override final  String address;
@override final  String destination;
@override final  double fare;
@override final  String status;
// 'pending', 'accepted', 'completed', 'cancelled'
@override final  String? driverId;
@override final  String? driverName;
@override final  String? driverPhone;
@override final  DateTime? createdAt;
@override final  DateTime? requestedAt;
@override final  DateTime? acceptedAt;
@override final  DateTime? completedAt;
@override final  String? notes;
@override final  String? motorwayRoute;
// M1, M2, M3, etc.
@override final  String? emergencyType;
// 'patrol', 'official_duty', 'transport'
@override final  String? userRole;
// 'police', 'motorway_staff', 'govt_servant'
@override final  String? badgeId;

/// Create a copy of PickupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PickupModelCopyWith<_PickupModel> get copyWith => __$PickupModelCopyWithImpl<_PickupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PickupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PickupModel&&(identical(other.id, id) || other.id == id)&&(identical(other.location, location) || other.location == location)&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.riderName, riderName) || other.riderName == riderName)&&(identical(other.riderPhone, riderPhone) || other.riderPhone == riderPhone)&&(identical(other.address, address) || other.address == address)&&(identical(other.destination, destination) || other.destination == destination)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.status, status) || other.status == status)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.driverName, driverName) || other.driverName == driverName)&&(identical(other.driverPhone, driverPhone) || other.driverPhone == driverPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.motorwayRoute, motorwayRoute) || other.motorwayRoute == motorwayRoute)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.userRole, userRole) || other.userRole == userRole)&&(identical(other.badgeId, badgeId) || other.badgeId == badgeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,location,riderId,riderName,riderPhone,address,destination,fare,status,driverId,driverName,driverPhone,createdAt,requestedAt,acceptedAt,completedAt,notes,motorwayRoute,emergencyType,userRole,badgeId]);

@override
String toString() {
  return 'PickupModel(id: $id, location: $location, riderId: $riderId, riderName: $riderName, riderPhone: $riderPhone, address: $address, destination: $destination, fare: $fare, status: $status, driverId: $driverId, driverName: $driverName, driverPhone: $driverPhone, createdAt: $createdAt, requestedAt: $requestedAt, acceptedAt: $acceptedAt, completedAt: $completedAt, notes: $notes, motorwayRoute: $motorwayRoute, emergencyType: $emergencyType, userRole: $userRole, badgeId: $badgeId)';
}


}

/// @nodoc
abstract mixin class _$PickupModelCopyWith<$Res> implements $PickupModelCopyWith<$Res> {
  factory _$PickupModelCopyWith(_PickupModel value, $Res Function(_PickupModel) _then) = __$PickupModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@GeoPointConverter() GeoPoint location, String riderId, String riderName, String riderPhone, String address, String destination, double fare, String status, String? driverId, String? driverName, String? driverPhone, DateTime? createdAt, DateTime? requestedAt, DateTime? acceptedAt, DateTime? completedAt, String? notes, String? motorwayRoute, String? emergencyType, String? userRole, String? badgeId
});




}
/// @nodoc
class __$PickupModelCopyWithImpl<$Res>
    implements _$PickupModelCopyWith<$Res> {
  __$PickupModelCopyWithImpl(this._self, this._then);

  final _PickupModel _self;
  final $Res Function(_PickupModel) _then;

/// Create a copy of PickupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? location = null,Object? riderId = null,Object? riderName = null,Object? riderPhone = null,Object? address = null,Object? destination = null,Object? fare = null,Object? status = null,Object? driverId = freezed,Object? driverName = freezed,Object? driverPhone = freezed,Object? createdAt = freezed,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? completedAt = freezed,Object? notes = freezed,Object? motorwayRoute = freezed,Object? emergencyType = freezed,Object? userRole = freezed,Object? badgeId = freezed,}) {
  return _then(_PickupModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as GeoPoint,riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as String,riderName: null == riderName ? _self.riderName : riderName // ignore: cast_nullable_to_non_nullable
as String,riderPhone: null == riderPhone ? _self.riderPhone : riderPhone // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,destination: null == destination ? _self.destination : destination // ignore: cast_nullable_to_non_nullable
as String,fare: null == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,driverName: freezed == driverName ? _self.driverName : driverName // ignore: cast_nullable_to_non_nullable
as String?,driverPhone: freezed == driverPhone ? _self.driverPhone : driverPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,motorwayRoute: freezed == motorwayRoute ? _self.motorwayRoute : motorwayRoute // ignore: cast_nullable_to_non_nullable
as String?,emergencyType: freezed == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as String?,userRole: freezed == userRole ? _self.userRole : userRole // ignore: cast_nullable_to_non_nullable
as String?,badgeId: freezed == badgeId ? _self.badgeId : badgeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
