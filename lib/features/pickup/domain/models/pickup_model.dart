// lib/features/pickup/domain/models/pickup_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:staff_pickup/core/utils/geo_point_converter.dart'; 


part 'pickup_model.freezed.dart';
part 'pickup_model.g.dart';

@freezed
sealed class PickupModel with _$PickupModel {
  const PickupModel._();
  const factory PickupModel({
    required String id,
      @GeoPointConverter()
    required GeoPoint location,
    required String riderId,
    required String riderName,
    required String riderPhone,
    required String address,
    required String destination,
    required double fare,
    required String status, // 'pending', 'accepted', 'completed', 'cancelled'
    String? driverId,
    String? driverName,
    String? driverPhone,
    DateTime? createdAt,
    DateTime? requestedAt,
    DateTime? acceptedAt,
    DateTime? completedAt,
    String? notes,
    String? motorwayRoute, // M1, M2, M3, etc.
    String? emergencyType, // 'patrol', 'official_duty', 'transport'
    String? userRole, // 'police', 'motorway_staff', 'govt_servant'
    String? badgeId, // For verification
  }) = _PickupModel;

  factory PickupModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return PickupModel.fromJson(data).copyWith(id: doc.id);
  }

  factory PickupModel.fromJson(Map<String, dynamic> json) =>
      _$PickupModelFromJson(json);
}