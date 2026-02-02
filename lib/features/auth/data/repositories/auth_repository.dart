// lib/features/auth/data/repositories/auth_repository.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:staff_pickup/core/error/exceptions.dart';
import 'package:staff_pickup/features/auth/domain/models/user_model.dart';

class AuthRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  AuthRepository(this._auth, this._firestore);

  // Create user in Firestore after Firebase Auth registration
  Future<void> createUserInFirestore({
    required String uid,
    required String phone,
    required String userType,
    String? name,
    String? cnic,
    String? vehicleNo,
    String? licenseNo,
    String? badgeId,
    String? department,
    String? userRole,
  }) async {
    try {
      final userData = UserModel(
        uid: uid,
        phone: phone,
        userType: userType,
        name: name,
        cnic: cnic,
        vehicleNo: vehicleNo,
        licenseNo: licenseNo,
        badgeId: badgeId,
        department: department,
        userRole: userRole ?? (userType == 'driver' ? 'verified_driver' : 'customer'),
        isVerified: false, // Admin must verify
        isActive: true,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ).toJson();

      await _firestore.collection('users').doc(uid).set(userData);
    } catch (e) {
      throw ServerException('Failed to create user in database: $e');
    }
  }

  // Get current user from Firestore
  Future<UserModel?> getCurrentUser() async {
    final user = _auth.currentUser;
    if (user == null) return null;

    final doc = await _firestore.collection('users').doc(user.uid).get();
    if (doc.exists) {
      return UserModel.fromFirestore(doc);
    }
    return null;
  }

  // Update user profile
  Future<void> updateUserProfile(String uid, Map<String, dynamic> updates) async {
    try {
      updates['updatedAt'] = FieldValue.serverTimestamp();
      await _firestore.collection('users').doc(uid).update(updates);
    } catch (e) {
      throw ServerException('Failed to update profile: $e');
    }
  }

  // Check if user exists in Firestore
  Future<bool> userExists(String uid) async {
    final doc = await _firestore.collection('users').doc(uid).get();
    return doc.exists;
  }
}