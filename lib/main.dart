import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/mdels/note_model.dart';
import 'package:note_app/sinple_bloc_observer.dart';
import 'package:note_app/views/home_page.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SinpleBlocObserver();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kHiveBox);
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "all",
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
