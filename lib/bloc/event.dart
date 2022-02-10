import 'package:equatable/equatable.dart';

abstract class Event extends Equatable {
  @override
  List<Object?> get props => [];
}

class InitEvent extends Event {}
