// lib/features/home/home_screen.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/features/map/map_screen.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_bloc.dart';
import 'package:staff_pickup/features/pickup/pickup_screen.dart';
import 'package:staff_pickup/l10n/app_localizations.dart';
import 'package:staff_pickup/injection_container.dart' as di;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (_) => di.sl<PickupBloc>()..add(const LoadPickups()),
      child: Scaffold(
        appBar: AppBar(title: Text(loc.appTitle)),
        body: Column(
          children: [
            // Map (70% height)
            const Expanded(flex: 7, child: MapScreen()),

            // Pickup List (30% height)
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.grey[100],
                child: BlocBuilder<PickupBloc, PickupState>(
                  builder: (context, state) {
                    if (state is PickupLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state is PickupLoaded) {
                      if (state.pickups.isEmpty) {
                        return Center(child: Text(loc.noPickup));
                      }
                      return ListView.builder(
                        itemCount: state.pickups.length,
                        itemBuilder: (ctx, i) {
                          final pickup = state.pickups[i];
                          return ListTile(
                            leading: const Icon(Icons.location_on, color: Colors.red),
                            
                            // FIXED: Handle both null and empty string
                            title: Text(
                              pickup.address.isEmpty ? loc.unknown : pickup.address
                            ),
                            
                            subtitle: Text("${pickup.fare} PKR"),
                            
                            trailing: pickup.status == 'pending'
                                ? ElevatedButton(
                                    onPressed: () {
                                      final String driverId = FirebaseAuth.instance.currentUser!.uid;
                                      context.read<PickupBloc>().add(
                                        AcceptPickup(
                                          pickupId: pickup.id,
                                          driverId: driverId,
                                          driverName: '',
                                        ),
                                      );
                                    },
                                    child: Text(loc.accept),
                                  )
                                : Text(pickup.status == 'accepted' ? loc.accepted : loc.completed),
                            
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => PickupScreen(
                                    pickup: {
                                      'id': pickup.id,
                                      'address': pickup.address.isEmpty ? loc.unknown : pickup.address,
                                      'destination': pickup.destination.isEmpty ? loc.unknown : pickup.destination,
                                      'fare': pickup.fare.toString(),
                                      'status': pickup.status,
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    }
                    if (state is PickupError) {
                      return Center(child: Text("${loc.error}: ${state.message}"));
                    }
                    return const SizedBox();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}