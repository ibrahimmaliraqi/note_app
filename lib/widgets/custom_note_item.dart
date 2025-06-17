import 'package:flutter/material.dart';
import 'package:note_app/mdels/note_model.dart';
import 'package:note_app/widgets/custom_note_card.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, this.note});
  final NoteModel? note;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 17,
      ),
      decoration: BoxDecoration(
        color: Color(note!.color),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.end,
        children: [
          CustomNoteCard(note: note),
          SizedBox(height: 10),
          Text(
            "${note!.date}",
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
