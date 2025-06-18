import 'package:flutter/material.dart';
import 'package:note_app/mdels/note_model.dart';

class CustomDeleteButton extends StatelessWidget {
  final NoteModel? note;

  const CustomDeleteButton({
    super.key,
    this.note,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        note!.delete();
      },
      icon: Icon(
        Icons.delete,
        size: 28,
        color: Colors.black,
      ),
    );
  }
}
