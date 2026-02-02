// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RideModel _$RideModelFromJson(Map<String, dynamic> json) => _RideModel(
  id: json['id'] as String,
  riderId: json['riderId'] as String,
  driverId: json['driverId'] as String?,
  pickupLocation: const GeoPointConverter().fromJson(
    json['pickupLocation'] as Map<String, dynamic>,
  ),
  dropoffLocation: _$JsonConverterFromJson<Map<String, dynamic>, GeoPoint>(
    json['dropoffLocation'],
    const GeoPointConverter().fromJson,
  ),
  pickupAddress: json['pickupAddress'] as String,
  dropoffAddress: json['dropoffAddress'] as String,
  motorwayRoute: json['motorwayRoute'] as String?,
  emergencyType: json['emergencyType'] as String?,
  status: json['status'] as String,
  distance: (json['distance'] as num?)?.toDouble(),
  fare: (json['fare'] as num?)?.toDouble(),
  requestedAt: json['requestedAt'] == null
      ? null
      : DateTime.parse(json['requestedAt'] as String),
  acceptedAt: json['acceptedAt'] == null
      ? null
      : DateTime.parse(json['acceptedAt'] as String),
  startedAt: json['startedAt'] == null
      ? null
      : DateTime.parse(json['startedAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  riderNotes: json['riderNotes'] as String?,
  rating: (json['rating'] as num?)?.toDouble(),
  review: json['review'] as String?,
);

Map<String, dynamic> _$RideModelToJson(
  _RideModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'riderId': instance.riderId,
  'driverId': instance.driverId,
  'pickupLocation': const GeoPointConverter().toJson(instance.pickupLocation),
  'dropoffLocation': _$JsonConverterToJson<Map<String, dynamic>, GeoPoint>(
    instance.dropoffLocation,
    const GeoPointConverter().toJson,
  ),
  'pickupAddress': instance.pickupAddress,
  'dropoffAddress': instance.dropoffAddress,
  'motorwayRoute': instance.motorwayRoute,
  'emergencyType': instance.emergencyType,
  'status': instance.status,
  'distance': instance.distance,
  'fare': instance.fare,
  'requestedAt': instance.requestedAt?.toIso8601String(),
  'acceptedAt': instance.acceptedAt?.toIso8601String(),
  'startedAt': instance.startedAt?.toIso8601String(),
  'completedAt': instance.completedAt?.toIso8601String(),
  'riderNotes': instance.riderNotes,
  'rating': instance.rating,
  'review': instance.review,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
