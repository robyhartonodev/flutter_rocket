import 'package:equatable/equatable.dart';
import 'package:flutter_rocket/models/all_models.dart';

abstract class LaunchState extends Equatable {
  LaunchState([List props = const []]) : super(props);
}

class LaunchUninitialized extends LaunchState {
  @override
  String toString() => 'LaunchUninitialized';
}

class LaunchError extends LaunchState {
  @override
  String toString() => 'LaunchError';
}

class LaunchLoaded extends LaunchState {
  final List<Launch> launches;
  final bool hasReachedMax;

  LaunchLoaded({
    this.launches,
    this.hasReachedMax,
  }) : super([launches, hasReachedMax]);

  LaunchLoaded copyWith({
    List<Launch> launches,
    bool hasReachedMax,
  }) {
    return LaunchLoaded(
      launches: launches ?? this.launches,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() =>
      'LaunchLoaded { launches: ${launches.length}, hasReachedMax: $hasReachedMax }';
}