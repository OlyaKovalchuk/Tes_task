import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/bloc/bloc.dart';
import 'package:test_task/bloc/event.dart';
import 'package:test_task/bloc/state.dart';
import 'package:test_task/views/error_view.dart';
import 'package:test_task/views/loaded_view.dart';
import 'package:test_task/views/loading_view.dart';

class AuthorsScreen extends StatelessWidget {
  const AuthorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocBuilder(
            bloc: BlocProvider.of<PhotoBloc>(context)
              ..add(InitEvent()),
            builder: (context, state) {
              if (state is Loading) {
                return loadingView();
              } else if (state is Error) {
                return errorView(state.error);
              } else if (state is Loaded) {
                return loadedView(state.photos);
              }
              return errorView('Error');
            }));
  }}





