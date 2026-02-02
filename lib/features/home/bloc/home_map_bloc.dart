// lib/features/home/bloc/home_map_bloc.dart
import 'dart:convert'; // ADD THIS LINE
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:staff_pickup/core/websocket/socket_client.dart';

abstract class HomeMapEvent extends Equatable {
  const HomeMapEvent();
  @override List<Object?> get props => [];
}

class LocationUpdateReceived extends HomeMapEvent {
  final double lat, lng;
  const LocationUpdateReceived(this.lat, this.lng);
  @override List<Object?> get props => [lat, lng];
}

abstract class HomeMapState extends Equatable {
  const HomeMapState();
  @override List<Object?> get props => [];
}

class HomeMapInitial extends HomeMapState {}

class HomeMapUpdated extends HomeMapState {
  final double lat, lng;
  const HomeMapUpdated(this.lat, this.lng);
  @override List<Object?> get props => [lat, lng];
}

class HomeMapBloc extends Bloc<HomeMapEvent, HomeMapState> {
  final SocketClient _socket;

  HomeMapBloc(this._socket) : super(HomeMapInitial()) {
    _socket.stream.listen((msg) {
      // Parse JSON string to Map
      final data = jsonDecode(msg as String); // Safe cast

      if (data['type'] == 'location_update') {
        final lat = data['lat'] as double;
        final lng = data['lng'] as double;
        add(LocationUpdateReceived(lat, lng));
      }
    });

    on<LocationUpdateReceived>((event, emit) {
      emit(HomeMapUpdated(event.lat, event.lng));
    });
  }
}