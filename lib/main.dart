import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_task/screens/authors_screen.dart';
import 'package:test_task/bloc/bloc.dart';
import 'package:test_task/repository/repository.dart';

void main() {
  runApp(BlocProvider(
      create: (BuildContext context) => PhotoBloc(Repository()),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  AuthorsScreen(),
      )));
}
