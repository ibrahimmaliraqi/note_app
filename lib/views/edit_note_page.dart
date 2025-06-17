import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_note_page_body.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: EditNotePageBody()),
    );
  }
}
