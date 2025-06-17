import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/mdels/note_model.dart';
import 'package:note_app/views/home_page.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kHiveBox);
  Hive.registerAdapter(NoteModelAdapter());
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
