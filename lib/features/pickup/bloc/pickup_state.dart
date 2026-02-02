// lib/features/pickup/bloc/pickup_state.dart
part of 'pickup_bloc.dart';

abstract class PickupState extends Equatable {
  const PickupState();
  @override List<Object?> get props => [];
}

class PickupLoading extends PickupState {}

class PickupLoaded extends PickupState {
  final List<PickupModel> pickups;
  const PickupLoaded(this.pickups);
  @override List<Object?> get props => [pickups];
}

class PickupCreated extends PickupState {}

class PickupError extends PickupState {
  final String message;
  const PickupError(this.message);
  @override List<Object?> get props => [message];
}