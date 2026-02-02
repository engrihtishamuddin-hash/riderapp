// lib/core/utils/geo_point_converter.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class GeoPointConverter implements JsonConverter<GeoPoint, Map<String, dynamic>> {
  const GeoPointConverter();

  @override
  GeoPoint fromJson(Map<String, dynamic> json) {
    return GeoPoint(
      json['latitude'] as double,
      json['longitude'] as double,
    );
  }

  @override
  Map<String, dynamic> toJson(GeoPoint geoPoint) {
    return {
      'latitude': geoPoint.latitude,
      'longitude': geoPoint.longitude,
    };
  }
}