// lib/core/services/location_service.dart
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationService {
  Future<bool> checkPermission() async {
    final status = await Permission.location.status;
    return status.isGranted;
  }
  
  Future<bool> requestPermission() async {
    final status = await Permission.location.request();
    return status.isGranted;
  }
  
  Future<Position?> getCurrentLocation() async {
    try {
      // Check if location services are enabled
      final serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return null;
      }
      
      // Check and request permission
      if (!await checkPermission()) {
        if (!await requestPermission()) {
          return null;
        }
      }
      
      // Get current position with the modern API
      return await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
          timeLimit: Duration(seconds: 10), // CORRECT: timeLimit goes INSIDE LocationSettings
        ),
      );
    } catch (e) {
      print('Error getting location: $e');
      return null;
    }
  }
  
  // Updated: Now uses the parameters passed to the function.
  Stream<Position> getLocationUpdates({
    LocationAccuracy accuracy = LocationAccuracy.bestForNavigation,
    int distanceFilter = 10,
  }) {
    return Geolocator.getPositionStream(
      locationSettings: LocationSettings( // Remove 'const' to use variable parameters
        accuracy: accuracy, // Use the function parameter
        distanceFilter: distanceFilter, // Use the function parameter
      ),
    );
  }
  
  Future<double> calculateDistance(
    double startLat, 
    double startLng,
    double endLat, 
    double endLng,
  ) async {
    return Geolocator.distanceBetween(
      startLat, startLng, endLat, endLng,
    );
  }
  
  Future<bool> isLocationServiceEnabled() async {
    return await Geolocator.isLocationServiceEnabled();
  }
  
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
  }
  
  Future<void> openAppSettings() async {
    await Geolocator.openAppSettings();
  }
}