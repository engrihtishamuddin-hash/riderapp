// lib/core/models/firebase_user.dart
class FirebaseUser {
  final String uid;
  final String email;
  final String? name;
  final String userType; // 'rider' or 'driver'
  final String userRole; // 'police', 'motorway_staff', 'govt_servant'
  final String? badgeId;
  final String? department;
  final bool isVerified;
  final DateTime? createdAt;

  FirebaseUser({
    required this.uid,
    required this.email,
    this.name,
    required this.userType,
    required this.userRole,
    this.badgeId,
    this.department,
    this.isVerified = false,
    this.createdAt,
  });

  // Convert to Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'userType': userType,
      'userRole': userRole,
      'badgeId': badgeId,
      'department': department,
      'isVerified': isVerified,
      'createdAt': createdAt?.toIso8601String() ?? DateTime.now().toIso8601String(),
      'updatedAt': DateTime.now().toIso8601String(),
    };
  }

  // Create from Firestore document
  factory FirebaseUser.fromMap(Map<String, dynamic> map) {
    return FirebaseUser(
      uid: map['uid'] ?? '',
      email: map['email'] ?? '',
      name: map['name'],
      userType: map['userType'] ?? 'rider',
      userRole: map['userRole'] ?? '',
      badgeId: map['badgeId'],
      department: map['department'],
      isVerified: map['isVerified'] ?? false,
      createdAt: map['createdAt'] != null 
          ? DateTime.parse(map['createdAt']) 
          : null,
    );
  }
}