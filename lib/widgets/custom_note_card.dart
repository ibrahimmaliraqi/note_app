import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_delete_buttons.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Padding(
        padding: const EdgeInsets.only(
          bottom: 14,
        ),
        child: Text(
          "Flutter tips",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
          ),
        ),
      ),
      subtitle: Text(
        "Build flutter app with ibrahim mohammed",
        style: TextStyle(
          color: Colors.black.withOpacity(.7),
          fontSize: 18,
        ),
      ),
      trailing: CustomDeleteButton(),
    );
  }
}
