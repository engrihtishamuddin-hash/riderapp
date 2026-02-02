// lib/features/ride/data/repositories/ride_repository.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:staff_pickup/core/error/exceptions.dart';
import 'package:staff_pickup/features/ride/domain/models/ride_model.dart';

class RideRepository {
  final FirebaseFirestore _firestore;

  RideRepository(this._firestore);

  // Create a new ride request
  Future<RideModel> createRide({
    required String riderId,
    required GeoPoint pickupLocation,
    required GeoPoint dropoffLocation,
    required String pickupAddress,
    required String dropoffAddress,
    String? motorwayRoute,
    String? emergencyType,
    String? riderNotes,
  }) async {
    try {
      final rideRef = _firestore.collection('rides').doc();
      final ride = RideModel(
        id: rideRef.id,
        riderId: riderId,
        pickupLocation: pickupLocation,
        dropoffLocation: dropoffLocation,
        pickupAddress: pickupAddress,
        dropoffAddress: dropoffAddress,
        motorwayRoute: motorwayRoute,
        emergencyType: emergencyType,
        status: 'requested',
        requestedAt: DateTime.now(),
        riderNotes: riderNotes,
      );

      await rideRef.set(ride.toJson());
      return ride;
    } catch (e) {
      throw ServerException('Failed to create ride: $e');
    }
  }

  // Get real-time ride updates
  Stream<RideModel?> streamRide(String rideId) {
    return _firestore
        .collection('rides')
        .doc(rideId)
        .snapshots()
        .map((snapshot) {
      if (snapshot.exists) {
        return RideModel.fromFirestore(snapshot);
      }
      return null;
    });
  }

  // Update ride status
  Future<void> updateRideStatus(String rideId, String status) async {
    try {
      await _firestore.collection('rides').doc(rideId).update({
        'status': status,
        if (status == 'accepted') 'acceptedAt': FieldValue.serverTimestamp(),
        if (status == 'ongoing') 'startedAt': FieldValue.serverTimestamp(),
        if (status == 'completed') 'completedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw ServerException('Failed to update ride: $e');
    }
  }

  // Find nearby available drivers
  Stream<QuerySnapshot> findNearbyDrivers(GeoPoint location, double radiusInKm) {
    // This is a simplified version - you'll need GeoFire or similar for real implementation
    return _firestore
        .collection('users')
        .where('userType', isEqualTo: 'driver')
        .where('isActive', isEqualTo: true)
        .snapshots();
  }
}