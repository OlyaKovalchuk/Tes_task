import 'package:equatable/equatable.dart';
import 'package:test_task/model/photo_model.dart';

abstract class PhotoState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Initial extends PhotoState {}

class Loading extends PhotoState {}

class Loaded extends PhotoState {
  final List<PhotoData> photos;

  Loaded({required this.photos});

  @override
  List<Object?> get props => [photos];
}

class Error extends PhotoState {
  final String error;

  Error({required this.error});

  @override
  List<Object?> get props => [error];
}
