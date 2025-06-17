import 'package:flutter/material.dart';
import 'package:note_app/mdels/note_model.dart';
import 'package:note_app/widgets/custom_delete_buttons.dart';

class CustomNoteCard extends StatelessWidget {
  final NoteModel? note;

  const CustomNoteCard({super.key, this.note});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Padding(
        padding: const EdgeInsets.only(
          bottom: 14,
        ),
        child: Text(
          "${note!.title}",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      subtitle: Text(
        "${note!.subtitle}",
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: 18,
        ),
      ),
      trailing: CustomDeleteButton(),
    );
  }
}
