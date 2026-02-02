// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  uid: json['uid'] as String,
  phone: json['phone'] as String,
  lastLocation: _$JsonConverterFromJson<Map<String, dynamic>, GeoPoint>(
    json['lastLocation'],
    const GeoPointConverter().fromJson,
  ),
  userType: json['userType'] as String,
  name: json['name'] as String?,
  email: json['email'] as String?,
  profileImage: json['profileImage'] as String?,
  cnic: json['cnic'] as String?,
  vehicleNo: json['vehicleNo'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  role: json['role'] as String?,
  licenseNo: json['licenseNo'] as String?,
  badgeId: json['badgeId'] as String?,
  department: json['department'] as String?,
  userRole: json['userRole'] as String?,
  isVerified: json['isVerified'] as bool?,
  isActive: json['isActive'] as bool?,
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'phone': instance.phone,
      'lastLocation': _$JsonConverterToJson<Map<String, dynamic>, GeoPoint>(
        instance.lastLocation,
        const GeoPointConverter().toJson,
      ),
      'userType': instance.userType,
      'name': instance.name,
      'email': instance.email,
      'profileImage': instance.profileImage,
      'cnic': instance.cnic,
      'vehicleNo': instance.vehicleNo,
      'createdAt': instance.createdAt?.toIso8601String(),
      'role': instance.role,
      'licenseNo': instance.licenseNo,
      'badgeId': instance.badgeId,
      'department': instance.department,
      'userRole': instance.userRole,
      'isVerified': instance.isVerified,
      'isActive': instance.isActive,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
