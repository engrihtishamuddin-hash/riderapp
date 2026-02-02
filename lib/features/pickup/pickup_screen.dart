// lib/features/pickup/ui/pickup_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_bloc.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/injection_container.dart' as di;

class PickupScreen extends StatelessWidget {
  final Map<String, String> pickup;

  const PickupScreen({super.key, required this.pickup});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (_) => di.sl<PickupBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(loc.pickupDetails),
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildInfo(loc.address, pickup['address']?.toString() ?? loc.unknown),
              _buildInfo(loc.fare, "${pickup['fare'] ?? 0} PKR"),
              _buildInfo(loc.status, _getStatusText(pickup['status']?.toString(), loc)),
              const SizedBox(height: 32),

              // Show "Complete Pickup" only if accepted
              if (pickup['status'] == 'accepted') _buildCompleteButton(context, loc),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              "$label:",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  String _getStatusText(String? status, AppLocalizations loc) {
    return switch (status) {
      'pending' => loc.pending,
      'accepted' => loc.accepted,
      'completed' => loc.completed,
      _ => loc.unknown,
    };
  }

  Widget _buildCompleteButton(BuildContext context, AppLocalizations loc) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.check_circle, color: Colors.white),
        label: Text(
          loc.completePickup,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade600,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 4,
        ),
        onPressed: () {
          final id = pickup['id']?.toString();
          if (id != null) {
            context.read<PickupBloc>().add(CompletePickup(id));
          }
          Navigator.pop(context);
        },
      ),
    );
  }
}