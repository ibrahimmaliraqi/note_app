import 'package:flutter/material.dart';
import 'package:note_app/views/edit_note_page.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class ListViewBuild extends StatelessWidget {
  const ListViewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNotePage();
            },
          ),
        );
      },
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 6,
            ),
            child: const CustomNoteItem(),
          );
        },
      ),
    );
  }
}
