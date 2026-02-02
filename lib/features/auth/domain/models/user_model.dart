// lib/features/auth/domain/models/user_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:staff_pickup/core/utils/geo_point_converter.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
sealed class UserModel with _$UserModel {  // ← Added "sealed" here
  const UserModel._(); 
  const factory UserModel({
    required String uid,
    required String phone,
    @GeoPointConverter()
    GeoPoint? lastLocation,
    required String userType, // 'customer', 'driver', 'admin'
    String? name,
    String? email,
    String? profileImage,
    String? cnic,
    String? vehicleNo,
    DateTime? createdAt,
    String? role,
    String? licenseNo,
    String? badgeId, // For government staff
    String? department, // For government staff
    String? userRole, // 'police', 'motorway_staff', 'govt_servant'
    bool? isVerified,
    bool? isActive,
    DateTime? updatedAt,
  }) = _UserModel;

  factory UserModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return UserModel.fromJson(data).copyWith(uid: doc.id);
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}