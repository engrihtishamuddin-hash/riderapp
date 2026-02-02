// lib/features/ride/request_ride_screen.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:staff_pickup/core/widgets/app_button.dart';
import 'package:staff_pickup/core/widgets/app_text_field.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_bloc.dart';

class RequestRideScreen extends StatefulWidget {
  final GeoPoint currentLocation;
  final String currentAddress;

  const RequestRideScreen({
    super.key,
    required this.currentLocation,
    required this.currentAddress,
  });

  @override
  State<RequestRideScreen> createState() => _RequestRideScreenState();
}

class _RequestRideScreenState extends State<RequestRideScreen> {
  final TextEditingController _destinationCtrl = TextEditingController();
  final TextEditingController _notesCtrl = TextEditingController();
  final TextEditingController _motorwayCtrl = TextEditingController();
  final TextEditingController _emergencyCtrl = TextEditingController();

  String? _selectedUserRole;
  final List<String> _userRoles = [
    'police',
    'motorway_staff',
    'govt_servant',
    'civilian'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('درخواست سواری'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: BlocListener<PickupBloc, PickupState>(
        listener: (context, state) {
          if (state is PickupCreated) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('درخواست بھیج دی گئی!')),
            );
            Navigator.pop(context);
          }
          if (state is PickupError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Current Location
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'موجودہ مقام',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(widget.currentAddress),
                        Text(
                          'Lat: ${widget.currentLocation.latitude.toStringAsFixed(4)}, '
                          'Lng: ${widget.currentLocation.longitude.toStringAsFixed(4)}',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Destination
                AppTextField(
                  controller: _destinationCtrl,
                  label: 'منزل کا پتہ',
                  hintText: 'منزل کا پتہ درج کریں',
                  prefixIcon: const Icon(Icons.location_on),
                ),

                const SizedBox(height: 16),

                // Motorway Route (For your specific use case)
               ValueListenableBuilder<TextEditingValue>(
  valueListenable: _motorwayCtrl,
  builder: (context, value, child) {
    return AppTextField(
      controller: _motorwayCtrl,
      label: 'موٹروے/ہائی وے (اگر کوئی ہو)',
      hintText: 'جیسے: M2, M3, N5',
      prefixIcon: const Icon(Icons.add_road),
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.characters,
      autocorrect: false,
      enableSuggestions: false,
      suffixIcon: value.text.isNotEmpty
          ? IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                _motorwayCtrl.clear();
              },
            )
          : null,
    );
  },
),

                const SizedBox(height: 16),

                // User Role (Government staff selection)
                DropdownButtonFormField<String>(
                  value: _selectedUserRole,
                  decoration: const InputDecoration(
                    labelText: 'آپ کا عہدہ',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.badge),
                  ),
                  items: _userRoles.map((role) {
                    String displayText;
                    switch (role) {
                      case 'police':
                        displayText = 'پولیس';
                        break;
                      case 'motorway_staff':
                        displayText = 'موٹروے عملہ';
                        break;
                      case 'govt_servant':
                        displayText = 'سرکاری ملازم';
                        break;
                      default:
                        displayText = 'عام شہری';
                    }
                    return DropdownMenuItem(
                      value: role,
                      child: Text(displayText),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedUserRole = value;
                    });
                  },
                ),

                const SizedBox(height: 16),

                // Emergency Type
                AppTextField(
                  controller: _emergencyCtrl,
                  label: 'ہنگامی نوعیت (اگر ہو)',
                  hintText: 'جیسے: پٹرول ڈیوٹی، سرکاری کام',
                  prefixIcon: const Icon(Icons.warning),
                ),

                const SizedBox(height: 16),

                // Notes
                AppTextField(
                  controller: _notesCtrl,
                  label: 'اضافی معلومات',
                  hintText: 'کوئی اضافی معلومات',
                  maxLines: 3,
                  prefixIcon: const Icon(Icons.note),
                ),

                const SizedBox(height: 30),

                // Request Ride Button
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    label: 'درخواست بھیجیں',
                    onPressed: () {
                      final bloc = context.read<PickupBloc>();
                      final user = _getCurrentUser(); // You'll need to implement this

                      bloc.add(CreatePickup(
                        riderId: user.uid,
                        riderName: user.name ?? 'User',
                        riderPhone: user.phone,
                        location: widget.currentLocation,
                        address: widget.currentAddress,
                        destination: _destinationCtrl.text,
                        fare: _calculateFare(), // Implement fare calculation
                        notes: _notesCtrl.text,
                        motorwayRoute: _motorwayCtrl.text.isNotEmpty
                            ? _motorwayCtrl.text
                            : null,
                        emergencyType: _emergencyCtrl.text.isNotEmpty
                            ? _emergencyCtrl.text
                            : null,
                        userRole: _selectedUserRole,
                        badgeId: user.badgeId,
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  double _calculateFare() {
    // Implement your fare calculation logic
    // Based on distance, time, emergency type, etc.
    return 500.0; // Default fare
  }

  // Mock user - replace with actual user from your auth system
  _User _getCurrentUser() {
    return _User(
      uid: 'user123',
      name: 'Ahmed Khan',
      phone: '03001234567',
      badgeId: 'MP-12345',
    );
  }
}

class _User {
  final String uid;
  final String? name;
  final String phone;
  final String? badgeId;

  _User({
    required this.uid,
    this.name,
    required this.phone,
    this.badgeId,
  });
}