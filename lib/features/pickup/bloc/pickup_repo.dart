// lib/features/pickup/data/repositories/pickup_repository.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:staff_pickup/core/error/exceptions.dart';
import 'package:staff_pickup/features/pickup/domain/models/pickup_model.dart';

class PickupRepository {
  final FirebaseFirestore _firestore;

  PickupRepository(this._firestore);

  // Get active pickups (pending/ongoing)
  Future<List<PickupModel>> getActivePickups() async {
    try {
      final snapshot = await _firestore
          .collection('pickups')
          .where('status', whereIn: ['pending', 'accepted'])
          .orderBy('requestedAt', descending: true)
          .get();

      return snapshot.docs
          .map((doc) => PickupModel.fromFirestore(doc))
          .toList();
    } catch (e) {
      throw ServerException('Failed to load pickups: $e');
    }
  }

  // Accept a pickup (driver accepts ride)
  Future<void> acceptPickup(String pickupId, String driverId, String driverName) async {
    try {
      await _firestore.collection('pickups').doc(pickupId).update({
        'status': 'accepted',
        'driverId': driverId,
        'driverName': driverName,
        'acceptedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw ServerException('Failed to accept pickup: $e');
    }
  }

  // Complete a pickup
  Future<void> completePickup(String pickupId) async {
    try {
      await _firestore.collection('pickups').doc(pickupId).update({
        'status': 'completed',
        'completedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      throw ServerException('Failed to complete pickup: $e');
    }
  }

  // Create new pickup (rider requests ride)
  Future<PickupModel> createPickup({
    required String riderId,
    required String riderName,
    required String riderPhone,
    required GeoPoint location,
    required String address,
    required String destination,
    required double fare,
    String? notes,
    String? motorwayRoute,
    String? emergencyType,
    String? userRole,
    String? badgeId,
  }) async {
    try {
      final pickupRef = _firestore.collection('pickups').doc();
      final pickup = PickupModel(
        id: pickupRef.id,
        riderId: riderId,
        riderName: riderName,
        riderPhone: riderPhone,
        location: location,
        address: address,
        destination: destination,
        fare: fare,
        status: 'pending',
        requestedAt: DateTime.now(),
        notes: notes,
        motorwayRoute: motorwayRoute,
        emergencyType: emergencyType,
        userRole: userRole,
        badgeId: badgeId,
      );

      await pickupRef.set(pickup.toJson());
      return pickup;
    } catch (e) {
      throw ServerException('Failed to create pickup: $e');
    }
  }

  // Stream real-time pickups (for drivers)
  Stream<List<PickupModel>> streamActivePickups() {
    return _firestore
        .collection('pickups')
        .where('status', isEqualTo: 'pending')
        .orderBy('requestedAt', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => PickupModel.fromFirestore(doc))
            .toList());
  }

  // Stream specific pickup updates (for rider/driver)
  Stream<PickupModel?> streamPickup(String pickupId) {
    return _firestore
        .collection('pickups')
        .doc(pickupId)
        .snapshots()
        .map((snapshot) {
      if (snapshot.exists) {
        return PickupModel.fromFirestore(snapshot);
      }
      return null;
    });
  }
}