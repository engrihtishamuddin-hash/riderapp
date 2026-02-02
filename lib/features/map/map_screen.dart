// lib/features/map/map_screen.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:http/http.dart' as http;

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  MapboxMap? mapboxMap;
  final TextEditingController _searchController = TextEditingController();

  static const String mapboxToken =
      'pk.eyJ1IjoiaWh0aXNoYW11ZGRpbiIsImEiOiJjbWkwZzIyOWIwY3hnMmxzZm1oaTFyMGZ2In0.fwPxnbVNXZczlMg-nZfi8Q';

  final List<PointAnnotation> _annotations = [];
  bool _iconAdded = false;
  static const String _riderIconId = 'rider-marker-icon';

  @override
  void initState() {
    super.initState();
    MapboxOptions.setAccessToken(mapboxToken);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _addRiderIconToStyle() async {
    if (mapboxMap == null || _iconAdded) return;

    try {
      final byteData = await rootBundle.load('assets/images/rider_marker.png');
      final bytes = byteData.buffer.asUint8List();
      
      await mapboxMap!.style.addStyleImage(
        _riderIconId,
        1.0,
        bytes as MbxImage,
        false,
        [],
        [],
        null,
      );
      
      _iconAdded = true;
    } catch (e) {
      debugPrint('Error adding icon to style: $e');
    }
  }

  Future<void> _addMarker(Point point, String title) async {
    if (mapboxMap == null) return;

    await _addRiderIconToStyle();

    final annotationManager = await mapboxMap!.annotations.createPointAnnotationManager();

    // Remove old markers
    for (final ann in _annotations) {
      await annotationManager.delete(ann);
    }
    _annotations.clear();

    final options = PointAnnotationOptions(
      geometry: point,
      textField: title,
      iconImage: _iconAdded ? _riderIconId : null,
      iconSize: 1.5,
      // ignore: deprecated_member_use
      textColor: Colors.black.value,
      textSize: 12,
      textOffset: [0, -2.0],
    );

    try {
      // FIXED: Using create() instead of createMulti() ✅
      final annotation = await annotationManager.create(options);
      _annotations.add(annotation);
    } catch (e) {
      debugPrint('Error adding marker: $e');
    }
  }

  Future<void> _searchLocation(String query) async {
    if (query.isEmpty) return;

    final url = Uri.parse(
      'https://api.mapbox.com/geocoding/v5/mapbox.places/'
      '${Uri.encodeComponent(query)}.json'
      '?access_token=$mapboxToken'
      '&country=PK'
      '&limit=1',
    );

    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        final features = data['features'] as List;
        if (features.isNotEmpty) {
          final feature = features.first;
          final coords = feature['geometry']['coordinates'] as List;
          final point = Point(coordinates: Position(coords[0], coords[1]));
          final placeName = feature['place_name'] as String;

          await mapboxMap?.flyTo(
            CameraOptions(center: point, zoom: 14),
            MapAnimationOptions(duration: 1000),
          );
          await _addMarker(point, placeName.split(',').first);
        } else {
          _showSnackBar("کوئی نتیجہ نہیں ملا");
        }
      }
    } catch (e) {
      _showSnackBar("خطا: $e");
    }
  }

  void _showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("میپ باکس میپ")),
      body: Stack(
        children: [
          MapWidget(
            key: const ValueKey("map"),
            onMapCreated: (controller) async {
              mapboxMap = controller;
              await Future.delayed(const Duration(milliseconds: 500));
              final point = Point(coordinates: Position(74.3587, 31.5204));
              await _addMarker(point, "لاہور");
            },
          ),
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: "تلاش کریں (مثلاً: منار پاکستان)",
                          border: InputBorder.none,
                        ),
                        onSubmitted: _searchLocation,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () => _searchLocation(_searchController.text),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}