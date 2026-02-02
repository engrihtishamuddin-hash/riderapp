// lib/features/pickup/bloc/pickup_bloc.dart
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:staff_pickup/features/pickup/domain/models/pickup_model.dart';
import 'package:staff_pickup/features/pickup/bloc/pickup_repo.dart';

part 'pickup_event.dart';
part 'pickup_state.dart';

class PickupBloc extends Bloc<PickupEvent, PickupState> {
  final PickupRepository _repo;
  StreamSubscription? _pickupSubscription;

  PickupBloc(this._repo) : super(PickupLoading()) {
    on<LoadPickups>(_onLoad);
    on<AcceptPickup>(_onAccept);
    on<CompletePickup>(_onComplete);
    on<CreatePickup>(_onCreate);
    on<ListenToPickups>(_onListen);
    on<StopListeningToPickups>(_onStopListening);

    // Start listening to real-time pickups
    add(const ListenToPickups());
  }

  @override
  Future<void> close() {
    _pickupSubscription?.cancel();
    return super.close();
  }

  Future<void> _onLoad(LoadPickups event, Emitter<PickupState> emit) async {
    try {
      emit(PickupLoading());
      final pickups = await _repo.getActivePickups();
      emit(PickupLoaded(pickups));
    } catch (e) {
      emit(PickupError(e.toString()));
    }
  }

  Future<void> _onAccept(AcceptPickup event, Emitter<PickupState> emit) async {
    try {
      emit(PickupLoading());
      await _repo.acceptPickup(event.pickupId, event.driverId, event.driverName);
      // Don't emit new state - real-time stream will update
    } catch (e) {
      emit(PickupError('Failed to accept pickup: $e'));
    }
  }

  Future<void> _onComplete(CompletePickup event, Emitter<PickupState> emit) async {
    try {
      emit(PickupLoading());
      await _repo.completePickup(event.pickupId);
      // Don't emit new state - real-time stream will update
    } catch (e) {
      emit(PickupError('Failed to complete pickup: $e'));
    }
  }

  Future<void> _onCreate(CreatePickup event, Emitter<PickupState> emit) async {
    try {
      emit(PickupLoading());
      await _repo.createPickup(
        riderId: event.riderId,
        riderName: event.riderName,
        riderPhone: event.riderPhone,
        location: event.location,
        address: event.address,
        destination: event.destination,
        fare: event.fare,
        notes: event.notes,
        motorwayRoute: event.motorwayRoute,
        emergencyType: event.emergencyType,
        userRole: event.userRole,
        badgeId: event.badgeId,
      );
      emit(PickupCreated());
    } catch (e) {
      emit(PickupError('Failed to create pickup: $e'));
    }
  }

  void _onListen(ListenToPickups event, Emitter<PickupState> emit) {
    _pickupSubscription?.cancel();
    _pickupSubscription = _repo.streamActivePickups().listen((pickups) {
      emit(PickupLoaded(pickups));
    }, onError: (error) {
      emit(PickupError(error.toString()));
    });
  }

  void _onStopListening(StopListeningToPickups event, Emitter<PickupState> emit) {
    _pickupSubscription?.cancel();
    _pickupSubscription = null;
  }
}