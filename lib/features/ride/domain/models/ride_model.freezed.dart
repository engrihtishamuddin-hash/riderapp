// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideModel {

 String get id; String get riderId; String? get driverId;@GeoPointConverter() GeoPoint get pickupLocation;@GeoPointConverter() GeoPoint? get dropoffLocation; String get pickupAddress; String get dropoffAddress; String? get motorwayRoute;// M1, M2, M3
 String? get emergencyType;// 'patrol', 'transport', 'official_duty'
 String get status;// 'requested', 'accepted', 'arrived', 'ongoing', 'completed', 'cancelled'
 double? get distance; double? get fare; DateTime? get requestedAt; DateTime? get acceptedAt; DateTime? get startedAt; DateTime? get completedAt; String? get riderNotes; double? get rating; String? get review;
/// Create a copy of RideModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RideModelCopyWith<RideModel> get copyWith => _$RideModelCopyWithImpl<RideModel>(this as RideModel, _$identity);

  /// Serializes this RideModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RideModel&&(identical(other.id, id) || other.id == id)&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.dropoffLocation, dropoffLocation) || other.dropoffLocation == dropoffLocation)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropoffAddress, dropoffAddress) || other.dropoffAddress == dropoffAddress)&&(identical(other.motorwayRoute, motorwayRoute) || other.motorwayRoute == motorwayRoute)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.status, status) || other.status == status)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.riderNotes, riderNotes) || other.riderNotes == riderNotes)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,riderId,driverId,pickupLocation,dropoffLocation,pickupAddress,dropoffAddress,motorwayRoute,emergencyType,status,distance,fare,requestedAt,acceptedAt,startedAt,completedAt,riderNotes,rating,review]);

@override
String toString() {
  return 'RideModel(id: $id, riderId: $riderId, driverId: $driverId, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, motorwayRoute: $motorwayRoute, emergencyType: $emergencyType, status: $status, distance: $distance, fare: $fare, requestedAt: $requestedAt, acceptedAt: $acceptedAt, startedAt: $startedAt, completedAt: $completedAt, riderNotes: $riderNotes, rating: $rating, review: $review)';
}


}

/// @nodoc
abstract mixin class $RideModelCopyWith<$Res>  {
  factory $RideModelCopyWith(RideModel value, $Res Function(RideModel) _then) = _$RideModelCopyWithImpl;
@useResult
$Res call({
 String id, String riderId, String? driverId,@GeoPointConverter() GeoPoint pickupLocation,@GeoPointConverter() GeoPoint? dropoffLocation, String pickupAddress, String dropoffAddress, String? motorwayRoute, String? emergencyType, String status, double? distance, double? fare, DateTime? requestedAt, DateTime? acceptedAt, DateTime? startedAt, DateTime? completedAt, String? riderNotes, double? rating, String? review
});




}
/// @nodoc
class _$RideModelCopyWithImpl<$Res>
    implements $RideModelCopyWith<$Res> {
  _$RideModelCopyWithImpl(this._self, this._then);

  final RideModel _self;
  final $Res Function(RideModel) _then;

/// Create a copy of RideModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? riderId = null,Object? driverId = freezed,Object? pickupLocation = null,Object? dropoffLocation = freezed,Object? pickupAddress = null,Object? dropoffAddress = null,Object? motorwayRoute = freezed,Object? emergencyType = freezed,Object? status = null,Object? distance = freezed,Object? fare = freezed,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? riderNotes = freezed,Object? rating = freezed,Object? review = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as String,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint,dropoffLocation: freezed == dropoffLocation ? _self.dropoffLocation : dropoffLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint?,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropoffAddress: null == dropoffAddress ? _self.dropoffAddress : dropoffAddress // ignore: cast_nullable_to_non_nullable
as String,motorwayRoute: freezed == motorwayRoute ? _self.motorwayRoute : motorwayRoute // ignore: cast_nullable_to_non_nullable
as String?,emergencyType: freezed == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,fare: freezed == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,riderNotes: freezed == riderNotes ? _self.riderNotes : riderNotes // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RideModel].
extension RideModelPatterns on RideModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RideModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RideModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RideModel value)  $default,){
final _that = this;
switch (_that) {
case _RideModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RideModel value)?  $default,){
final _that = this;
switch (_that) {
case _RideModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String riderId,  String? driverId, @GeoPointConverter()  GeoPoint pickupLocation, @GeoPointConverter()  GeoPoint? dropoffLocation,  String pickupAddress,  String dropoffAddress,  String? motorwayRoute,  String? emergencyType,  String status,  double? distance,  double? fare,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? completedAt,  String? riderNotes,  double? rating,  String? review)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RideModel() when $default != null:
return $default(_that.id,_that.riderId,_that.driverId,_that.pickupLocation,_that.dropoffLocation,_that.pickupAddress,_that.dropoffAddress,_that.motorwayRoute,_that.emergencyType,_that.status,_that.distance,_that.fare,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.completedAt,_that.riderNotes,_that.rating,_that.review);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String riderId,  String? driverId, @GeoPointConverter()  GeoPoint pickupLocation, @GeoPointConverter()  GeoPoint? dropoffLocation,  String pickupAddress,  String dropoffAddress,  String? motorwayRoute,  String? emergencyType,  String status,  double? distance,  double? fare,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? completedAt,  String? riderNotes,  double? rating,  String? review)  $default,) {final _that = this;
switch (_that) {
case _RideModel():
return $default(_that.id,_that.riderId,_that.driverId,_that.pickupLocation,_that.dropoffLocation,_that.pickupAddress,_that.dropoffAddress,_that.motorwayRoute,_that.emergencyType,_that.status,_that.distance,_that.fare,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.completedAt,_that.riderNotes,_that.rating,_that.review);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String riderId,  String? driverId, @GeoPointConverter()  GeoPoint pickupLocation, @GeoPointConverter()  GeoPoint? dropoffLocation,  String pickupAddress,  String dropoffAddress,  String? motorwayRoute,  String? emergencyType,  String status,  double? distance,  double? fare,  DateTime? requestedAt,  DateTime? acceptedAt,  DateTime? startedAt,  DateTime? completedAt,  String? riderNotes,  double? rating,  String? review)?  $default,) {final _that = this;
switch (_that) {
case _RideModel() when $default != null:
return $default(_that.id,_that.riderId,_that.driverId,_that.pickupLocation,_that.dropoffLocation,_that.pickupAddress,_that.dropoffAddress,_that.motorwayRoute,_that.emergencyType,_that.status,_that.distance,_that.fare,_that.requestedAt,_that.acceptedAt,_that.startedAt,_that.completedAt,_that.riderNotes,_that.rating,_that.review);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RideModel extends RideModel {
  const _RideModel({required this.id, required this.riderId, this.driverId, @GeoPointConverter() required this.pickupLocation, @GeoPointConverter() this.dropoffLocation, required this.pickupAddress, required this.dropoffAddress, this.motorwayRoute, this.emergencyType, required this.status, this.distance, this.fare, this.requestedAt, this.acceptedAt, this.startedAt, this.completedAt, this.riderNotes, this.rating, this.review}): super._();
  factory _RideModel.fromJson(Map<String, dynamic> json) => _$RideModelFromJson(json);

@override final  String id;
@override final  String riderId;
@override final  String? driverId;
@override@GeoPointConverter() final  GeoPoint pickupLocation;
@override@GeoPointConverter() final  GeoPoint? dropoffLocation;
@override final  String pickupAddress;
@override final  String dropoffAddress;
@override final  String? motorwayRoute;
// M1, M2, M3
@override final  String? emergencyType;
// 'patrol', 'transport', 'official_duty'
@override final  String status;
// 'requested', 'accepted', 'arrived', 'ongoing', 'completed', 'cancelled'
@override final  double? distance;
@override final  double? fare;
@override final  DateTime? requestedAt;
@override final  DateTime? acceptedAt;
@override final  DateTime? startedAt;
@override final  DateTime? completedAt;
@override final  String? riderNotes;
@override final  double? rating;
@override final  String? review;

/// Create a copy of RideModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RideModelCopyWith<_RideModel> get copyWith => __$RideModelCopyWithImpl<_RideModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RideModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RideModel&&(identical(other.id, id) || other.id == id)&&(identical(other.riderId, riderId) || other.riderId == riderId)&&(identical(other.driverId, driverId) || other.driverId == driverId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.dropoffLocation, dropoffLocation) || other.dropoffLocation == dropoffLocation)&&(identical(other.pickupAddress, pickupAddress) || other.pickupAddress == pickupAddress)&&(identical(other.dropoffAddress, dropoffAddress) || other.dropoffAddress == dropoffAddress)&&(identical(other.motorwayRoute, motorwayRoute) || other.motorwayRoute == motorwayRoute)&&(identical(other.emergencyType, emergencyType) || other.emergencyType == emergencyType)&&(identical(other.status, status) || other.status == status)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.fare, fare) || other.fare == fare)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.riderNotes, riderNotes) || other.riderNotes == riderNotes)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,riderId,driverId,pickupLocation,dropoffLocation,pickupAddress,dropoffAddress,motorwayRoute,emergencyType,status,distance,fare,requestedAt,acceptedAt,startedAt,completedAt,riderNotes,rating,review]);

@override
String toString() {
  return 'RideModel(id: $id, riderId: $riderId, driverId: $driverId, pickupLocation: $pickupLocation, dropoffLocation: $dropoffLocation, pickupAddress: $pickupAddress, dropoffAddress: $dropoffAddress, motorwayRoute: $motorwayRoute, emergencyType: $emergencyType, status: $status, distance: $distance, fare: $fare, requestedAt: $requestedAt, acceptedAt: $acceptedAt, startedAt: $startedAt, completedAt: $completedAt, riderNotes: $riderNotes, rating: $rating, review: $review)';
}


}

/// @nodoc
abstract mixin class _$RideModelCopyWith<$Res> implements $RideModelCopyWith<$Res> {
  factory _$RideModelCopyWith(_RideModel value, $Res Function(_RideModel) _then) = __$RideModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String riderId, String? driverId,@GeoPointConverter() GeoPoint pickupLocation,@GeoPointConverter() GeoPoint? dropoffLocation, String pickupAddress, String dropoffAddress, String? motorwayRoute, String? emergencyType, String status, double? distance, double? fare, DateTime? requestedAt, DateTime? acceptedAt, DateTime? startedAt, DateTime? completedAt, String? riderNotes, double? rating, String? review
});




}
/// @nodoc
class __$RideModelCopyWithImpl<$Res>
    implements _$RideModelCopyWith<$Res> {
  __$RideModelCopyWithImpl(this._self, this._then);

  final _RideModel _self;
  final $Res Function(_RideModel) _then;

/// Create a copy of RideModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? riderId = null,Object? driverId = freezed,Object? pickupLocation = null,Object? dropoffLocation = freezed,Object? pickupAddress = null,Object? dropoffAddress = null,Object? motorwayRoute = freezed,Object? emergencyType = freezed,Object? status = null,Object? distance = freezed,Object? fare = freezed,Object? requestedAt = freezed,Object? acceptedAt = freezed,Object? startedAt = freezed,Object? completedAt = freezed,Object? riderNotes = freezed,Object? rating = freezed,Object? review = freezed,}) {
  return _then(_RideModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,riderId: null == riderId ? _self.riderId : riderId // ignore: cast_nullable_to_non_nullable
as String,driverId: freezed == driverId ? _self.driverId : driverId // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint,dropoffLocation: freezed == dropoffLocation ? _self.dropoffLocation : dropoffLocation // ignore: cast_nullable_to_non_nullable
as GeoPoint?,pickupAddress: null == pickupAddress ? _self.pickupAddress : pickupAddress // ignore: cast_nullable_to_non_nullable
as String,dropoffAddress: null == dropoffAddress ? _self.dropoffAddress : dropoffAddress // ignore: cast_nullable_to_non_nullable
as String,motorwayRoute: freezed == motorwayRoute ? _self.motorwayRoute : motorwayRoute // ignore: cast_nullable_to_non_nullable
as String?,emergencyType: freezed == emergencyType ? _self.emergencyType : emergencyType // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,fare: freezed == fare ? _self.fare : fare // ignore: cast_nullable_to_non_nullable
as double?,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,riderNotes: freezed == riderNotes ? _self.riderNotes : riderNotes // ignore: cast_nullable_to_non_nullable
as String?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,review: freezed == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
