// lib/features/ride/domain/models/ride_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:staff_pickup/core/utils/geo_point_converter.dart';

part 'ride_model.freezed.dart';
part 'ride_model.g.dart';

@freezed
sealed class RideModel with _$RideModel {
  const RideModel._();
  const factory RideModel({
    required String id,
    required String riderId,
    String? driverId,
    @GeoPointConverter()
    required GeoPoint pickupLocation,
        @GeoPointConverter()
    GeoPoint? dropoffLocation,
    required String pickupAddress,
    required String dropoffAddress,
    String? motorwayRoute, // M1, M2, M3
    String? emergencyType, // 'patrol', 'transport', 'official_duty'
    required String status, // 'requested', 'accepted', 'arrived', 'ongoing', 'completed', 'cancelled'
    double? distance,
    double? fare,
    DateTime? requestedAt,
    DateTime? acceptedAt,
    DateTime? startedAt,
    DateTime? completedAt,
    String? riderNotes,
    double? rating,
    String? review,
  }) = _RideModel;
  

  factory RideModel.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return RideModel.fromJson(data).copyWith(id: doc.id);
  }

  factory RideModel.fromJson(Map<String, dynamic> json) =>
      _$RideModelFromJson(json);
}