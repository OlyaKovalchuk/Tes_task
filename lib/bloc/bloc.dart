import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/event.dart';
import 'package:test_task/bloc/state.dart';
import 'package:test_task/model/photo_model.dart';
import 'package:test_task/repository/repository.dart';

class PhotoBloc extends Bloc<Event, PhotoState> {
  final Repository repository;

  PhotoBloc(this.repository) : super(Initial()) {
    on<InitEvent>((event, emit) => fetchPhotos(emit));
  }

  Future<void> fetchPhotos(Emitter<PhotoState> emit) async {
    emit(Loading());
    try {
      List<PhotoData> photos = await repository.getPhotos();
      emit(Loaded(photos: photos));
    } catch (e) {
      emit(Error(error: e.toString()));
    }
  }
}
