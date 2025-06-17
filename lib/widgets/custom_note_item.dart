import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_note_card.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 17,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffcd7a),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.end,
        children: [
          CustomNoteCard(),
          SizedBox(height: 10),
          Text(
            "May 22,2025",
            style: TextStyle(
              color: Colors.black.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
