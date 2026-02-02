// lib/features/pickup/bloc/pickup_event.dart
part of 'pickup_bloc.dart';

abstract class PickupEvent extends Equatable {
  const PickupEvent();
  @override List<Object?> get props => [];
}

class LoadPickups extends PickupEvent {
  const LoadPickups();
}

class ListenToPickups extends PickupEvent {
  const ListenToPickups();
}

class StopListeningToPickups extends PickupEvent {
  const StopListeningToPickups();
}

class AcceptPickup extends PickupEvent {
  final String pickupId;
  final String driverId;
  final String driverName;
  
  const AcceptPickup({
    required this.pickupId,
    required this.driverId,
    required this.driverName,
  });
  
  @override List<Object?> get props => [pickupId, driverId, driverName];
}

class CompletePickup extends PickupEvent {
  final String pickupId;
  const CompletePickup(this.pickupId);
  @override List<Object?> get props => [pickupId];
}

class CreatePickup extends PickupEvent {
  final String riderId;
  final String riderName;
  final String riderPhone;
  final GeoPoint location;
  final String address;
  final String destination;
  final double fare;
  final String? notes;
  final String? motorwayRoute;
  final String? emergencyType;
  final String? userRole;
  final String? badgeId;

  const CreatePickup({
    required this.riderId,
    required this.riderName,
    required this.riderPhone,
    required this.location,
    required this.address,
    required this.destination,
    required this.fare,
    this.notes,
    this.motorwayRoute,
    this.emergencyType,
    this.userRole,
    this.badgeId,
  });

  @override List<Object?> get props => [
    riderId, riderName, riderPhone, location, 
    address, destination, fare, notes,
    motorwayRoute, emergencyType, userRole, badgeId
  ];
}