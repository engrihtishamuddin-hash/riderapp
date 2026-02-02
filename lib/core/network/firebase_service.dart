// lib/core/network/firebase_service.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart' show kIsWeb, Uint8List;

class FirebaseService {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;
  
  // Constructor with dependency injection support
  FirebaseService({
    FirebaseFirestore? firestoreInstance,
    FirebaseStorage? storageInstance,
  })  : firestore = firestoreInstance ?? FirebaseFirestore.instance,
        storage = storageInstance ?? FirebaseStorage.instance {
    _logFirestoreInfo();
  }
  
  void _logFirestoreInfo() {
    // Log initialization (useful for debugging)
    print('FirebaseService initialized');
    print('- Firestore instance: ${firestore.app.name}');
    print('- Storage bucket: ${storage.app.name}');
    
    // Note about persistence
    if (!kIsWeb) {
      print('- Persistence: Enabled by default on mobile platforms');
    } else {
      print('- Web persistence: Browser-dependent');
    }
  }
  
  // Example: Get a document
  Future<DocumentSnapshot> getDocument(String collection, String docId) async {
    return await firestore.collection(collection).doc(docId).get();
  }
  
  // Example: Upload a file
  Future<String> uploadFile(String path, Uint8List data) async {
    final ref = storage.ref().child(path);
    final task = ref.putData(data);
    await task;
    return await ref.getDownloadURL();
  }
  
  // Example: Listen to a collection
  Stream<QuerySnapshot> listenToCollection(String collection) {
    return firestore.collection(collection).snapshots();
  }
  
  // Example: Configure cache settings (if needed)
  void configureCache({bool persistenceEnabled = true, int? cacheSizeBytes}) {
    // Note: This may not work on all platforms in newer versions
    try {
      firestore.settings = Settings(
        persistenceEnabled: persistenceEnabled,
        cacheSizeBytes: cacheSizeBytes ?? Settings.CACHE_SIZE_UNLIMITED,
      );
    } catch (e) {
      print('Note: Cache settings may be limited on this platform: $e');
    }
  }
}