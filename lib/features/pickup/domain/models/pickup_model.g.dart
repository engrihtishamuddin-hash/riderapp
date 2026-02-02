// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PickupModel _$PickupModelFromJson(Map<String, dynamic> json) => _PickupModel(
  id: json['id'] as String,
  location: const GeoPointConverter().fromJson(
    json['location'] as Map<String, dynamic>,
  ),
  riderId: json['riderId'] as String,
  riderName: json['riderName'] as String,
  riderPhone: json['riderPhone'] as String,
  address: json['address'] as String,
  destination: json['destination'] as String,
  fare: (json['fare'] as num).toDouble(),
  status: json['status'] as String,
  driverId: json['driverId'] as String?,
  driverName: json['driverName'] as String?,
  driverPhone: json['driverPhone'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  requestedAt: json['requestedAt'] == null
      ? null
      : DateTime.parse(json['requestedAt'] as String),
  acceptedAt: json['acceptedAt'] == null
      ? null
      : DateTime.parse(json['acceptedAt'] as String),
  completedAt: json['completedAt'] == null
      ? null
      : DateTime.parse(json['completedAt'] as String),
  notes: json['notes'] as String?,
  motorwayRoute: json['motorwayRoute'] as String?,
  emergencyType: json['emergencyType'] as String?,
  userRole: json['userRole'] as String?,
  badgeId: json['badgeId'] as String?,
);

Map<String, dynamic> _$PickupModelToJson(_PickupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': const GeoPointConverter().toJson(instance.location),
      'riderId': instance.riderId,
      'riderName': instance.riderName,
      'riderPhone': instance.riderPhone,
      'address': instance.address,
      'destination': instance.destination,
      'fare': instance.fare,
      'status': instance.status,
      'driverId': instance.driverId,
      'driverName': instance.driverName,
      'driverPhone': instance.driverPhone,
      'createdAt': instance.createdAt?.toIso8601String(),
      'requestedAt': instance.requestedAt?.toIso8601String(),
      'acceptedAt': instance.acceptedAt?.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
      'notes': instance.notes,
      'motorwayRoute': instance.motorwayRoute,
      'emergencyType': instance.emergencyType,
      'userRole': instance.userRole,
      'badgeId': instance.badgeId,
    };
