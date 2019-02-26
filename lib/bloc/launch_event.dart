import 'package:equatable/equatable.dart';

abstract class LaunchEvent extends Equatable {}

class Fetch extends LaunchEvent {
  @override
  String toString() => 'Fetch';
}
